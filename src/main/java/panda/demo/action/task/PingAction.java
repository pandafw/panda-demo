package panda.demo.action.task;

import panda.demo.action.WebAction;
import panda.lang.time.DateTimes;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.To;


@At("/task")
@To(all=View.XML)
public class PingAction extends WebAction {
	@At("ping")
	public String ping() {
		return "[OK] " + DateTimes.isoDateFormat().format(DateTimes.getDate());
	}
}
