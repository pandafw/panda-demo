package panda.demo.action.sample;

import java.util.Map;

import panda.exts.struts2.CommonAction;
import panda.exts.struts2.util.StrutsContextUtils;
import panda.servlet.ServletRequestHeaderMap;

/**
 */
public class DebugAction extends CommonAction {
	private Map<String, Object> headers;
	
	/**
	 * @return the headers
	 */
	public Map<String, Object> getHeaders() {
		return headers;
	}

	public Map<String, String[]> getParams() {
		return getParameters();
	}
	
	private void process() {
		headers = new ServletRequestHeaderMap(StrutsContextUtils.getServletRequest());
	}
	
	/**
	 * @throws Exception if an error occurs
	 */
	public String ftl() throws Exception {
		process();
		return SUCCESS;
	}

	/**
	 * @throws Exception if an error occurs
	 */
	public String json() throws Exception {
		process();
		return JSON;
	}

	/**
	 * @throws Exception if an error occurs
	 */
	public String xml() throws Exception {
		process();
		return XML;
	}
}
