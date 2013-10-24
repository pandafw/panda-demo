package panda.demo.action;

import java.util.Map;

import panda.aems.action.BaseActionConsts;
import panda.exts.struts2.CommonAction;

public class ActionConsts extends BaseActionConsts {
	/**
	 * Constructor
	 */
	public ActionConsts(CommonAction action) {
		super(action);
	}

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
