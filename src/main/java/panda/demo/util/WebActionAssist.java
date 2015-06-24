package panda.demo.util;

import panda.ioc.Scope;
import panda.ioc.annotation.IocBean;
import panda.mvc.util.ActionAssist;
import panda.wing.util.AppActionAssist;


@IocBean(type=ActionAssist.class, scope=Scope.REQUEST)
public class WebActionAssist extends AppActionAssist {
	/**
	 * Constructor
	 */
	public boolean isDebugEnabled() {
		return isIntranetHost();
	}


}
