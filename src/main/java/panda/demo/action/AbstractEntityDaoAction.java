package panda.demo.action;

import panda.aems.action.BaseEntityDaoAction;

/**
 * @param <T> data type
 */
public abstract class AbstractEntityDaoAction<T> extends BaseEntityDaoAction<T> {
	/**
	 * Constructor
	 */
	public AbstractEntityDaoAction() {
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
	public ActionAssist utils() {
		return (ActionAssist)super.getAssist();
	}
}
