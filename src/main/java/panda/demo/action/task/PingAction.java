package panda.demo.action.task;

import panda.demo.action.BaseAction;
import panda.lang.time.DateTimes;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.view.Ok;


@At("/task")
@Ok(View.XML)
public class PingAction extends BaseAction {
	@At("ping")
	public String ping() {
		return "[OK] " + DateTimes.dateFormat().format(DateTimes.getDate());
	}
}
