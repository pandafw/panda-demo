package panda.demo.action;

import panda.aems.action.BaseActionAssist;
import panda.exts.struts2.CommonAction;


public class ActionAssist extends BaseActionAssist {
	/**
	 * Constructor
	 */
	public ActionAssist(CommonAction action) {
		super(action);
	}

	/**
	 * hasPermission
	 * @param namespace namespace
	 * @param action action
	 * @return true if action has access permit
	 */
	public boolean hasPermission(String namespace, String action) {
		return true;
	}
}
