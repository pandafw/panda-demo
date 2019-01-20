package panda.demo.action.entity.user;

import java.util.Map;
import panda.demo.action.WebBulkAction;
import panda.demo.entity.User;
import panda.mvc.annotation.At;
import panda.mvc.annotation.To;
import panda.mvc.annotation.param.Param;
import panda.mvc.view.Views;

public abstract class UserBulkEnableAction extends WebBulkAction<User> {

	/**
	 * Constructor
	 */
	public UserBulkEnableAction() {
		setType(User.class);
		addDisplayFields(User.ID, User.NAME, User.EMAIL, User.ROLE, User.STATUS, User.CREATED_AT, User.CREATED_BY, User.CREATED_BY_USER, User.UPDATED_AT, User.UPDATED_BY, User.UPDATED_BY_USER);
	}


	/*----------------------------------------------------------------------*
	 * Actions
	 *----------------------------------------------------------------------*/
	/**
	 * benable
	 * @param args arguments
	 * @return result or view
	 */
	@At
	@To(value=Views.SFTL, error=Views.SFTL)
	public Object benable(@Param Map<String, String[]> args) {
		return super.bupdate(args);
	}

	/**
	 * benable_execute
	 * @param args arguments
	 * @return result or view
	 */
	@At
	@To(value=Views.SFTL, error="sftl:~benable")
	public Object benable_execute(@Param Map<String, String[]> args) {
		return super.bupdate_execute(args);
	}
	
}

