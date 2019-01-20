package panda.demo.action.user;

import panda.demo.action.WebAction;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.To;
import panda.app.auth.Auth;
import panda.app.constant.AUTH;

@At("/user")
@Auth(AUTH.TICKET)
@To(View.SFTL)
public class IndexAction extends WebAction {

	@At({ "", "index"})
	public void index() {
	}
}
