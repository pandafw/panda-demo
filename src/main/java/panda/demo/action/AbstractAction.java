package panda.demo.action;

import panda.aems.action.BaseAction;


public abstract class AbstractAction extends BaseAction {
	/**
	 * Constructor
	 */
	public AbstractAction() {
	}

	/**
	 * @return the consts
	 */
	@Override
	public ActionConsts consts() {
		return (ActionConsts)super.getConsts();
	}

	/**
	 * @return the assist
	 */
	@Override
	public ActionAssist assist() {
		return (ActionAssist)super.getAssist();
	}
}
