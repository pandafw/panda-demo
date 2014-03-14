package panda.demo.action;

import panda.aems.action.BaseCommonDaoAction;
import panda.aems.entity.CommonBean;

/**
 * @param <T> data type
 */
public abstract class AbstractCommonDaoAction<T extends CommonBean> extends BaseCommonDaoAction<T> {
	/**
	 * Constructor
	 */
	public AbstractCommonDaoAction() {
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
	public ActionAssist assist() {
		return (ActionAssist)super.getAssist();
	}
}
