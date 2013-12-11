package panda.demo.tool;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.cli.CommandLine;

import panda.aems.AppletHelper;
import panda.demo.Application;
import panda.demo.entity.SampleDate;
import panda.demo.entity.SampleFile;
import panda.demo.entity.SampleJoin;
import panda.demo.entity.SampleTags;
import panda.demo.entity.SampleUnique;
import panda.log.Log;
import panda.log.Logs;
import panda.util.tool.AbstractCommandTool;



/**
 */
public class DropTables {
	private static Log log = Logs.getLog(DropTables.class);

	private Map<String, String> params = new HashMap<String, String>();
	
	public static class Main extends AbstractCommandTool {
		@Override
		protected void addCommandLineOptions() throws Exception {
			super.addCommandLineOptions();
		}

		@Override
		protected void getCommandLineOptions(CommandLine cl) throws Exception {
			super.getCommandLineOptions(cl);
		}

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
		log.debug("params=" + params);
		
		AppletHelper.init(Application.class, false);
		try {
			AppletHelper.dropTables(
				SampleJoin.class,
				SampleDate.class,
				SampleFile.class,
				SampleTags.class,
				SampleUnique.class
				);
			AppletHelper.dropDefaultTables();
		}
		finally {
			Application.i().destroy();
		}
	}
}
