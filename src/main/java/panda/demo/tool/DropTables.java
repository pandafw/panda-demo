package panda.demo.tool;

import panda.dao.Dao;
import panda.demo.WebSetup;
import panda.lang.Arrays;
import panda.util.tool.AbstractCommandTool;
import panda.wing.AppHelper;



/**
 */
public class DropTables {
	public static class Main extends AbstractCommandTool {
		/**
		 * main
		 * @param args arguments
		 */
		public static void main(String[] args) {
			Main main = new Main();
			main.execute(new DropTables(), args);
		}
	}


	public void execute() throws Exception {
		AppConsole ac = new AppConsole();
		try {
			Dao dao = ac.getDao();
			Arrays.reverse(WebSetup.ENTITIES);
			AppHelper.dropTables(dao, WebSetup.ENTITIES);
			AppHelper.dropDefaultTables(dao);
		}
		finally {
			ac.destroy();
		}
	}
}
