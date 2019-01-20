package panda.demo.action.user;

import panda.app.auth.Auth;
import panda.app.constant.AUTH;
import panda.demo.action.WebListAction;
import panda.demo.entity.User;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.To;
import panda.mvc.annotation.Validates;
import panda.mvc.annotation.param.Param;
import panda.mvc.bean.Queryer;

@At("${super_path}/user")
@Auth(AUTH.SUPER)
public class UserPopupAction extends WebListAction<User> {

	/**
	 * Constructor
	 */
	public UserPopupAction() {
		setType(User.class);
		addDisplayFields(User.ID, User.NAME, User.EMAIL, User.STATUS);
	}


	/*----------------------------------------------------------------------*
	 * Actions
	 *----------------------------------------------------------------------*/
	/**
	 * list_popup
	 * @param qr queryer
	 * @return result or view
	 */
	@At
	@To(value=View.SFTL, error=View.SFTL)
	public Object list_popup(@Param @Validates Queryer qr) {
		return super.list_popup(qr);
	}
	
}

