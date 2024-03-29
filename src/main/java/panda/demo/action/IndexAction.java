package panda.demo.action;

import panda.app.action.BaseAction;
import panda.lang.Numbers;
import panda.lang.Threads;
import panda.mvc.annotation.At;
import panda.mvc.annotation.To;
import panda.mvc.annotation.param.Param;
import panda.mvc.view.Views;


@At("/")
@To(Views.SFTL)
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
		Threads.safeSleep(sec * 1000);
	}
}
