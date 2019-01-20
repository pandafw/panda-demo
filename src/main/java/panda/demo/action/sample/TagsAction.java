package panda.demo.action.sample;

import java.util.Map;

import panda.demo.action.WebAction;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.To;
import panda.mvc.annotation.param.Param;

@At("/")
public class TagsAction extends WebAction {

	@At
	@To(value=View.SJSP, error=View.SJSP)
	public void jsptags(@Param Map<String, Object> ps) {
	}

	@At
	@To(value=View.SFTL, error=View.SFTL)
	public void ftltags(@Param Map<String, Object> ps) {
	}
}
