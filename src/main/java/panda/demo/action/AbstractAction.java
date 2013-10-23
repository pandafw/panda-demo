package panda.demo.action;

import panda.aems.action.BaseAction;
import panda.demo.util.ActionConsts;
import panda.demo.util.ActionUtils;


/**
 * AbstractAction.
 */
public abstract class AbstractAction extends BaseAction {
	/**
	 * Constructor
	 */
	public AbstractAction() {
	}

	/**
	 * @return the consts
	 */
	public ActionConsts consts() {
		return (ActionConsts)super.getConsts();
	}

	/**
	 * @return the utils
	 */
	public ActionUtils utils() {
		return (ActionUtils)super.getUtils();
	}
}
