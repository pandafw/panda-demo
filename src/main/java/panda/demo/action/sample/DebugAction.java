package panda.demo.action.sample;

import panda.demo.action.WebAction;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.view.Ok;

@At("/debug")
public class DebugAction extends WebAction {
	@At("")
	@Ok(View.FREEMARKER)
	public void ftl() {
	}

	@At
	@Ok(View.JSON)
	public void json() {
	}

	@At
	@Ok(View.XML)
	public void xml() {
	}
}
