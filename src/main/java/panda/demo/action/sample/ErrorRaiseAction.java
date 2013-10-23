package panda.demo.action.sample;

import panda.exts.struts2.actions.CommonAction;

/**
 */
public class ErrorRaiseAction extends CommonAction {
	/**
	 * raise
	 * @return SUCCESS
	 * @throws Exception if an error occurs
	 */
	public String raise() throws Exception {
		throw new Exception("This is a test exception");
	}
}
