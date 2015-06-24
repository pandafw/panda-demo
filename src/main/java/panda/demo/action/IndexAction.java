package panda.demo.action;

import panda.ioc.annotation.IocInject;
import panda.lang.Numbers;
import panda.lang.Strings;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.param.Param;
import panda.mvc.annotation.view.Ok;
import panda.mvc.view.FreemarkerView;
import panda.mvc.view.HttpStatusView;
import panda.mvc.view.ftl.FreemarkerHelper;


@At("/")
@Ok(View.FREEMARKER)
public class IndexAction extends WebAction {
	@IocInject
	private FreemarkerHelper freemarker;
		

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

	@At("*.ftl")
	public Object execute(String path) throws Exception {
		if (Strings.isEmpty(path)
				|| !freemarker.hasTemplate("/" + path + ".ftl")) {
			return HttpStatusView.NOT_FOUND;
		}
		return new FreemarkerView(path);
	}
}
