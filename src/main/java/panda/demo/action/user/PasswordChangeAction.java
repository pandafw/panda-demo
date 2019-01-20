package panda.demo.action.user;

import panda.app.auth.Auth;
import panda.app.constant.AUTH;
import panda.app.constant.RES;
import panda.dao.entity.EntityDao;
import panda.demo.action.WebAction;
import panda.demo.entity.User;
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
 * PasswordChangeAction
 */
@At("/user/password/change")
@Auth(AUTH.TICKET)
@To(View.SFTL)
public class PasswordChangeAction extends WebAction {

	public static class Arg {
		private String opwd;
		private String npwd;
		private String cpwd;
		/**
		 * @return the opwd
		 */
		@Validates({
			@Validate(value=Validators.REQUIRED, msgId=Validators.MSGID_REQUIRED),
			@Validate(value=Validators.EL, params="{ el: 'top.value == assist.loginUser.password' }", msgId=Validators.MSGID_PASSWORD_INCORRECT)
		})
		public String getOpwd() {
			return opwd;
		}
		/**
		 * @param opwd the opwd to set
		 */
		public void setOpwd(String opwd) {
			this.opwd = Strings.stripToNull(opwd);
		}
		/**
		 * @return the npwd
		 */
		@Validates({
			@Validate(value=Validators.REQUIRED, msgId=Validators.MSGID_REQUIRED),
			@Validate(value=Validators.REGEX, params="{ regex: '#(regex-password)' }", msgId=Validators.MSGID_PASSWORD)
		})
		public String getNpwd() {
			return npwd;
		}
		/**
		 * @param npwd the npwd to set
		 */
		public void setNpwd(String npwd) {
			this.npwd = Strings.stripToNull(npwd);
		}
		/**
		 * @return the cpwd
		 */
		@Validates({
			@Validate(value=Validators.REQUIRED, msgId=Validators.MSGID_REQUIRED),
			@Validate(value=Validators.EL, params="{ el: 'top.value == top.parent.value.npwd' }", msgId=Validators.MSGID_PASSWORD_NOT_SAME)
		})
		public String getCpwd() {
			return cpwd;
		}
		/**
		 * @param cpwd the cpwd to set
		 */
		public void setCpwd(String cpwd) {
			this.cpwd = Strings.stripToNull(cpwd);
		}
	}

	@At("")
	@Redirect(toslash=true)
	public void input(@Param Arg arg) throws Exception {
	}
	
	@At
	@To(error=Views.SFTL_INPUT)
	public void update(@Param @Validates Arg arg) throws Exception {
		EntityDao<User> dao = getDaoClient().getEntityDao(User.class);

		User lu = assist().getLoginUser();
		User nu = new User();

		nu.setPassword(arg.npwd);
		nu.setId(lu.getId());

		dao.updateIgnoreNull(nu);

		lu.setPassword(nu.getPassword());
		assist().setLoginUser(lu);

		addActionMessage(getText(RES.MESSAGE_SUCCESS));
	}

}
