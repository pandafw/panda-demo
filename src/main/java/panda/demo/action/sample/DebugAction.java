package panda.demo.action.sample;

import java.util.Map;

import panda.demo.action.BaseAction;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.param.Param;
import panda.mvc.annotation.view.Ok;

@At("/debug")
public class DebugAction extends BaseAction {
	@At("")
	@Ok(View.JSP)
	public void jsp(@Param Map m) {
	}

	@At
	@Ok(View.SFTL)
	public void ftl(@Param Map m) {
	}

	@At
	@Ok(View.JSON)
	public void json(@Param Map m) {
	}

	@At
	@Ok(View.XML)
	public void xml(@Param Map m) {
	}
}
