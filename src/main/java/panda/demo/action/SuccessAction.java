package panda.demo.action;

import panda.lang.Numbers;


/**
 * SuccessAction
 */
public class SuccessAction extends AbstractAction {

	private String delay;
	
	public SuccessAction() {
		super();
	}
	
	/**
	 * @return the delay
	 */
	public String getDelay() {
		return delay;
	}

	/**
	 * @param delay the delay to set
	 */
	public void setDelay(String delay) {
		this.delay = delay;
	}

	/**
	 * execute
	 * @return SUCCESS
	 * @throws Exception if an error occurs
	 */
	public String execute() throws Exception {
		return doExecute(SUCCESS);
	}

	/**
	 * success
	 * @return SUCCESS
	 * @throws Exception if an error occurs
	 */
	public String success() throws Exception {
		return doExecute(SUCCESS);
	}

	/**
	 * none
	 * @return NONE
	 * @throws Exception if an error occurs
	 */
	public String none() throws Exception {
		return doExecute(NONE);
	}
	
	private String doExecute(String rv) {
		int sec = Numbers.toInt(delay, 0);
		if (sec > 0) {
			try {
				Thread.sleep(sec * 1000);
			} 
			catch (InterruptedException e) {
				// ignore
			}
		}
		return rv;
	}
}
