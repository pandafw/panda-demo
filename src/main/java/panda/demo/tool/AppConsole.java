package panda.demo.tool;

import panda.demo.WebSetup;
import panda.mvc.MvcConsole;

public class AppConsole extends MvcConsole {
	public AppConsole() {
		super(WebSetup.class, "web");
	}
}
