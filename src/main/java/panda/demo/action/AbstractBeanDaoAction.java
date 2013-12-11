package panda.demo.action;

import panda.aems.action.BaseBeanDaoAction;
import panda.aems.entity.CommonBean;

/**
 * @param <T> data type
 */
public abstract class AbstractBeanDaoAction<T extends CommonBean> extends BaseBeanDaoAction<T> {
	/**
	 * Constructor
	 */
	public AbstractBeanDaoAction() {
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
