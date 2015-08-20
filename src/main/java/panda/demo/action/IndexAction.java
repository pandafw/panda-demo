package panda.demo.action;

import panda.lang.Numbers;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.param.Param;
import panda.mvc.annotation.view.Ok;


@At("/")
@Ok(View.SFTL)
public class IndexAction extends BaseAction {
	@At({ "", "index"})
	public void index() {
	}

	@At
	public void themes() {
	}

	@At
	public void languages() {
	}

	@At
	public void delay(@Param("delay") String delay) {
		int sec = Numbers.toInt(delay, 0);
		if (sec > 0) {
			try {
				Thread.sleep(sec * 1000);
			} 
			catch (InterruptedException e) {
				// ignore
			}
		}
	}
}
