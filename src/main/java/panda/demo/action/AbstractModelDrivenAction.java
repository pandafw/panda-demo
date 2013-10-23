package panda.demo.action;

import panda.aems.action.BaseEntityDaoAction;
import panda.aems.entity.CommonBean;
import panda.demo.util.ActionConsts;
import panda.demo.util.ActionUtils;

/**
 * @param <T> data type
 * @param <E> example type
 */
public abstract class AbstractModelDrivenAction<T extends CommonBean> extends BaseEntityDaoAction<T> {
	/**
	 * Constructor
	 */
	public AbstractModelDrivenAction() {
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
