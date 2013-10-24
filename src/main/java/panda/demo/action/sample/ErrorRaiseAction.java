package panda.demo.action.sample;

import panda.exts.struts2.CommonAction;
import panda.lang.Strings;

/**
 */
public class ErrorRaiseAction extends CommonAction {
	private String error;
	
	/**
	 * @return the error
	 */
	public String getError() {
		return error;
	}

	/**
	 * @param error the error to set
	 */
	public void setError(String error) {
		this.error = error;
	}

	/**
	 * raise error
	 * @return INPUT
	 * @throws Exception if an error occurs
	 */
	public String raise() throws Exception {
		if (Strings.isNotBlank(error)) {
			throw new Exception(error);
		}
		return INPUT;
	}
}
