package panda.demo.tool;

import panda.app.AppHelper;
import panda.dao.Dao;
import panda.demo.WebSetup;
import panda.lang.Arrays;



/**
 */
public class DropTables {
	/**
	 * main
	 * @param args arguments
	 */
	public static void main(String[] args) {
		new DropTables().execute();
	}

	public void execute() {
		AppConsole ac = AppConsole.i();
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
