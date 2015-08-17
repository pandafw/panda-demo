package panda.demo.action;

import panda.ioc.annotation.IocInject;
import panda.lang.Strings;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.view.Ok;
import panda.mvc.view.FreemarkerView;
import panda.mvc.view.HttpStatusView;
import panda.mvc.view.ftl.FreemarkerHelper;


@At("/ftl")
@Ok(View.FREEMARKER)
public class FreemarkerAction extends BaseAction {
	@IocInject
	private FreemarkerHelper freemarker;
		
	@At("*")
	public Object execute(String path) throws Exception {
		if (Strings.isEmpty(path)
				|| !freemarker.hasTemplate("/" + path + ".ftl")) {
			return HttpStatusView.NOT_FOUND;
		}
		return new FreemarkerView(path);
	}
}
