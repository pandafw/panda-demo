package panda.demo.action.user;

import panda.demo.action.BaseAction;
import panda.mvc.annotation.At;
import panda.mvc.annotation.To;
import panda.mvc.view.Views;
import panda.app.auth.Auth;
import panda.app.constant.AUTH;

@At("/user")
@Auth(AUTH.SIGNIN)
@To(Views.SFTL)
public class IndexAction extends BaseAction {

	@At({ "", "index"})
	public void index() {
	}
}
