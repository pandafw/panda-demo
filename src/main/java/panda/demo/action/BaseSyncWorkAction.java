package panda.demo.action;

import panda.app.action.work.SyncWorkAction;
import panda.demo.util.WebActionAssist;
import panda.demo.util.WebActionConsts;


public abstract class BaseSyncWorkAction extends SyncWorkAction {
	/**
	 * @return the consts
	 */
	@Override
	protected WebActionConsts consts() {
		return (WebActionConsts)super.getConsts();
	}

	/**
	 * @return the assist
	 */
	@Override
	protected WebActionAssist assist() {
		return (WebActionAssist)super.getAssist();
	}
}
