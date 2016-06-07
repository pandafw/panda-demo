package panda.demo.tool;

import panda.dao.Dao;
import panda.demo.WebSetup;
import panda.util.tool.AbstractCommandTool;
import panda.wing.AppHelper;



/**
 */
public class CreateTables {
	public static class Main extends AbstractCommandTool {
		/**
		 * main
		 * @param args arguments
		 */
		public static void main(String[] args) {
			Main main = new Main();
			main.execute(new CreateTables(), args);
		}
	}

	public void execute() throws Exception {
		AppConsole ac = new AppConsole();
		try {
			Dao dao = ac.getDao();
			AppHelper.createDefaultTables(dao);
			AppHelper.createTables(dao, WebSetup.ENTITIES);
		}
		finally {
			ac.destroy();
		}
	}
}
