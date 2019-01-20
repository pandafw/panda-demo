package panda.demo.tool;

import java.util.Map;
import java.util.Map.Entry;

import javax.sql.DataSource;

import panda.app.AppHelper;
import panda.dao.sql.SimpleDataSource;
import panda.dao.sql.SqlDaoClient;
import panda.demo.WebSetup;
import panda.io.Settings;
import panda.lang.Collections;


/**
 */
public class CopyTables {
	/**
	 * main
	 * @param args arguments
	 */
	public static void main(String[] args) {
		new CopyTables().execute();
	}

	public void execute() {
		try {
			Settings ss = new Settings("app.properties");
			for (Entry<String, String> en : ss.entrySet()) {
				if (en.getValue().contains("${web}")) {
					String v = en.getValue().replace("${web}", "web");
					en.setValue(v);
				}
			}

			Map<String, String> dp0 = Collections.subMap(ss, "data.hsqldb.");
			DataSource ds0 = new SimpleDataSource(dp0);
			SqlDaoClient dc0 = new SqlDaoClient();
			dc0.setDataSource(ds0);
			
			Map<String, String> dp1 = Collections.subMap(ss, "data.sqlite.");
			DataSource ds1 = new SimpleDataSource(dp1);
			SqlDaoClient dc1 = new SqlDaoClient();
			dc1.setDataSource(ds1);
			
			AppHelper.copyTables(dc0.getDao(), dc1.getDao(), WebSetup.ENTITIES);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
}
