package panda.demo.tool;

import panda.dao.Dao;
import panda.demo.entity.SampleDate;
import panda.demo.entity.SampleFile;
import panda.demo.entity.SampleJoin;
import panda.demo.entity.SampleTags;
import panda.demo.entity.SampleUnique;
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
			AppHelper.dropTables(dao,
				SampleJoin.class,
				SampleDate.class,
				SampleFile.class,
				SampleTags.class,
				SampleUnique.class
				);
			AppHelper.dropDefaultTables(dao);
		}
		finally {
			ac.destroy();
		}
	}
}
