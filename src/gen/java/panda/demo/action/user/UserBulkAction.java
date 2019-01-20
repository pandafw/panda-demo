package panda.demo.action.user;

import java.util.Map;
import panda.app.auth.Auth;
import panda.app.constant.AUTH;
import panda.demo.action.WebBulkAction;
import panda.demo.entity.User;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.To;
import panda.mvc.annotation.param.Param;

@At("${super_path}/user")
@Auth(AUTH.SUPER)
public class UserBulkAction extends WebBulkAction<User> {

	/**
	 * Constructor
	 */
	public UserBulkAction() {
		setType(User.class);
		addDisplayFields(User.ID, User.NAME, User.EMAIL, User.PASSWORD, User.ROLE, User.STATUS);
	}


	/*----------------------------------------------------------------------*
	 * Actions
	 *----------------------------------------------------------------------*/
	/**
	 * bdelete
	 * @param args arguments
	 * @return result or view
	 */
	@At
	@To(value=View.SFTL, error=View.SFTL)
	public Object bdelete(@Param Map<String, String[]> args) {
		return super.bdelete(args);
	}

	/**
	 * bdelete_execute
	 * @param args arguments
	 * @return result or view
	 */
	@At
	@To(value=View.SFTL, error="sftl:~bdelete")
	public Object bdelete_execute(@Param Map<String, String[]> args) {
		return super.bdelete_execute(args);
	}
	
}

