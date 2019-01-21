package panda.demo.action.entity.user;

import panda.demo.action.WebImportAction;
import panda.demo.entity.User;
import panda.mvc.annotation.At;
import panda.mvc.annotation.To;
import panda.mvc.annotation.param.Param;
import panda.mvc.view.Views;

public abstract class UserImportAction extends WebImportAction<User> {

	/**
	 * Constructor
	 */
	public UserImportAction() {
		setType(User.class);
		addDisplayFields(User.ID, User.NAME, User.EMAIL, User.ROLE, User.PASSWORD, User.STATUS, User.CREATED_AT, User.CREATED_BY, User.CREATED_BY_USER, User.UPDATED_AT, User.UPDATED_BY, User.UPDATED_BY_USER);
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
	@To(value=Views.SFTL, error=Views.SFTL)
	public Object importx(@Param Arg arg) {
		return super.importx(arg);
	}
	
}
