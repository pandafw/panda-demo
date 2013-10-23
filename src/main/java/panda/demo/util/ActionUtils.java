package panda.demo.util;

import panda.aems.util.BaseActionUtils;
import panda.exts.struts2.actions.CommonAction;


/**
 * ActionUtils.
 */
public class ActionUtils extends BaseActionUtils {
	/**
	 * Constructor
	 */
	public ActionUtils(CommonAction action) {
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
