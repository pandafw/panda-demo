package panda.demo.util;

import java.util.Map;

import panda.aems.util.BaseActionConsts;
import panda.exts.struts2.actions.CommonAction;

/**
 */
public class ActionConsts extends BaseActionConsts {
	/**
	 * Constructor
	 */
	public ActionConsts(CommonAction action) {
		super(action);
	}

	/**
	 * get locale language map
	 * @return map
	 */
	@SuppressWarnings("unchecked")
	public Map<String, String> getLocaleLanguageMap() {
		return (Map<String, String>)getTextAsMap("locale-languages");
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
