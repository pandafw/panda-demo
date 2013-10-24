package panda.demo.action;

import panda.aems.action.BaseEntityDaoAction;
import panda.aems.entity.CommonBean;

/**
 * @param <T> data type
 * @param <E> example type
 */
public abstract class AbstractEntityAction<T extends CommonBean> extends BaseEntityDaoAction<T> {
	/**
	 * Constructor
	 */
	public AbstractEntityAction() {
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
