package panda.demo.action.user;

import panda.app.auth.Auth;
import panda.app.constant.AUTH;
import panda.demo.action.WebImportAction;
import panda.demo.entity.User;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.To;
import panda.mvc.annotation.param.Param;

@At("${super_path}/user")
@Auth(AUTH.SUPER)
public class UserImportAction extends WebImportAction<User> {

	/**
	 * Constructor
	 */
	public UserImportAction() {
		setType(User.class);
		addDisplayFields(User.ID, User.NAME, User.EMAIL, User.PASSWORD, User.ROLE, User.STATUS);
	}


	/*----------------------------------------------------------------------*
	 * Actions
	 *----------------------------------------------------------------------*/
	/**
	 * importx
	 * @param arg argument
	 * @return result or view
	 */
	@At("import")
	@To(value=View.SFTL, error=View.SFTL)
	public Object importx(@Param Arg arg) {
		return super.importx(arg);
	}
	
}

