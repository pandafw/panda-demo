package panda.demo.tool;

import panda.aems.AppletHelper;
import panda.demo.Application;
import panda.demo.entity.SampleDate;
import panda.demo.entity.SampleFile;
import panda.demo.entity.SampleJoin;
import panda.demo.entity.SampleTags;
import panda.demo.entity.SampleUnique;
import panda.util.tool.AbstractCommandTool;



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

	public DropTables() {
	}

	public void execute() throws Exception {
		AppletHelper.init(Application.class, false);
		try {
			AppletHelper.dropTables(
				SampleJoin.class,
				SampleDate.class,
				SampleFile.class,
				SampleTags.class,
				SampleUnique.class
				);
			AppletHelper.dropNdfsTables();
			AppletHelper.dropDefaultTables();
		}
		finally {
			Application.i().destroy();
		}
	}
}
