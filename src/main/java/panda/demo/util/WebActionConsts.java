package panda.demo.util;

import java.util.Map;

import panda.ioc.Scope;
import panda.ioc.annotation.IocBean;
import panda.mvc.util.ActionConsts;
import panda.wing.util.AppActionConsts;

@IocBean(type=ActionConsts.class, scope=Scope.REQUEST)
public class WebActionConsts extends AppActionConsts {

	public Map getRadioMap() {
		return this.getTextAsMap("radiomap");
	}

	public Map getSelectMap() {
		return this.getTextAsMap("selectmap");
	}

	public Map getCheckMap() {
		return this.getTextAsMap("checkmap");
	}

	public Map getStyleMap() {
		return this.getTextAsMap("stylemap");
	}
}
