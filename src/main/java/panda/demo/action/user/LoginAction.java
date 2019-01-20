package panda.demo.action.user;

import panda.app.entity.Bean;
import panda.dao.entity.EntityDao;
import panda.demo.action.WebAction;
import panda.demo.entity.User;
import panda.demo.entity.query.UserQuery;
import panda.lang.Strings;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.Redirect;
import panda.mvc.annotation.To;
import panda.mvc.annotation.Validate;
import panda.mvc.annotation.Validates;
import panda.mvc.annotation.param.Param;
import panda.mvc.validator.Validators;
import panda.mvc.view.Views;


/**
 * LoginAction
 */
@At("/login")
@To(View.SFTL)
public class LoginAction extends WebAction {
	public static class Arg {
		private String username;
		private String password;
		private Boolean autosave;
		private String redirect;
	
	
		/**
		 * @return the username
		 */
		@Validates({
			@Validate(value=Validators.REQUIRED, msgId=Validators.MSGID_REQUIRED), 
		})
		public String getUsername() {
			return username;
		}
	
		/**
		 * @param username the username to set
		 */
		public void setUsername(String username) {
			this.username = Strings.stripToLowerNull(username);
		}
	
		/**
		 * @return the password
		 */
		@Validates({
			@Validate(value=Validators.REQUIRED, msgId=Validators.MSGID_REQUIRED), 
		})
		public String getPassword() {
			return password;
		}
	
		/**
		 * @param password the password to set
		 */
		public void setPassword(String password) {
			this.password = Strings.stripToNull(password);
		}
	
	
		/**
		 * @return the autosave
		 */
		public Boolean getAutosave() {
			return autosave;
		}
	
		/**
		 * @param autosave the autosave to set
		 */
		public void setAutosave(Boolean autosave) {
			this.autosave = autosave;
		}
	
		/**
		 * @return the redirect
		 */
		public String getRedirect() {
			return redirect;
		}
	
		/**
		 * @param redirect the redirect to set
		 */
		public void setRedirect(String redirect) {
			this.redirect = redirect;
		}
	}
	
	/**
	 * input
	 * @param arg argument
	 * @return user object
	 */
	@At("")
	@Redirect(toslash=true)
	public Object input(@Param Arg arg) {
		if (arg.username == null) {
			User u = assist().getLoginUser();
			if (u != null) {
				arg.username = u.getEmail();
			}
		}
		return null;
	}
	
	/**
	 * login
	 * @param arg argument
	 * @return user object
	 */
	@At
	@To(error=Views.SFTL_INPUT)
	public Object login(@Param @Validates Arg arg) {
		EntityDao<User> udao = getDaoClient().getEntityDao(User.class);
		UserQuery uq = new UserQuery();

		uq.email().equalTo(arg.username);

		User user = udao.fetch(uq);
		if (user != null) {
			if (!Bean.isActive(user) || !user.getPassword().equals(arg.password)) {
				user = null;
			}
		}

		if (user == null) {
			addActionError(getText("error-login"));
			return Views.sftlInput(context);
		}

		user.setAutoLogin(arg.autosave);
		user.setLoginTime(System.currentTimeMillis());
		assist().setLoginUser(user);

		addActionMessage(getText("message-login-success"));
		return arg.redirect;
	}

	/**
	 * logout
	 */
	@At
	public void logout() {
		assist().removeLoginUser();
		addActionMessage(getText("message-logout-success"));
	}

}