package panda.demo.util;

import panda.ioc.Scope;
import panda.ioc.annotation.IocBean;
import panda.mvc.util.ActionAssist;
import panda.wing.constant.VC;
import panda.wing.util.AppActionAssist;


@IocBean(type=ActionAssist.class, scope=Scope.REQUEST)
public class WebActionAssist extends AppActionAssist {
	@Override
	public boolean isDebugEnabled() {
		return isIntranetHost();
	}

	@Override
	public long getLoginUserId() {
		return VC.SYSTEM_UID;
	}

	@Override
	public boolean hasPermission(String action) {
		return true;
	}

}
