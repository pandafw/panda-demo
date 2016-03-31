package panda.demo.action;

import panda.demo.util.WebActionAssist;
import panda.demo.util.WebActionConsts;
import panda.wing.action.crud.GenericBulkAction;

/**
 * @param <T> data type
 */
public abstract class BaseBulkAction<T> extends GenericBulkAction<T> {
	/**
	 * @return the consts
	 */
	@Override
	protected WebActionConsts consts() {
		return (WebActionConsts)super.getConsts();
	}

	/**
	 * @return the utils
	 */
	@Override
	protected WebActionAssist assist() {
		return (WebActionAssist)super.getAssist();
	}
}
