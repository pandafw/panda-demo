package panda.demo.action.user;

import java.util.List;

import panda.app.constant.RES;
import panda.dao.entity.EntityDao;
import panda.demo.action.WebAction;
import panda.demo.auth.ROLE;
import panda.demo.constant.TPL;
import panda.demo.entity.User;
import panda.demo.entity.query.UserQuery;
import panda.demo.util.WebMailer;
import panda.ioc.annotation.IocInject;
import panda.lang.Strings;
import panda.lang.Texts;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.To;
import panda.mvc.annotation.Validate;
import panda.mvc.annotation.Validates;
import panda.mvc.annotation.param.Param;
import panda.mvc.validator.Validators;
import panda.mvc.view.Views;
import panda.net.mail.EmailException;
import panda.servlet.HttpServlets;


/**
 * RegisterAction
 */
@At("/user/register")
@To(value=View.SFTL, error=Views.SFTL_INPUT)
public class RegisterAction extends WebAction {

	@IocInject
	private WebMailer mailer;

	public static class Arg extends User {
		private static final long serialVersionUID = 1L;

		private String redirect;

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
			this.redirect = Strings.stripToNull(redirect);
		}
	}

	/**
	 * public for getText(...)
	 * @return the type
	 */
	public Class<?> getT() {
		return User.class;
	}
	
	/**
	 * check email
	 * @param email email string
	 * @return true/false
	 */
	protected boolean checkEmail(String email) {
		EntityDao<User> udao = getDaoClient().getEntityDao(User.class);

		UserQuery uq = new UserQuery();
		uq.email().equalTo(email);

		List<User> list = udao.select(uq);

		if (list.size() > 0) {
			addFieldError("email", getText("error-email-is-used"));
			return false;
		}

		return true;
	}
	
	/**
	 * input
	 * @param user the input user data
	 */
	@At
	public void input(@Param User user) {
	}
	
	/**
	 * confirm
	 * @param user the input user data
	 * @return user object or view
	 */
	@At
	public Object confirm(@Param
			@Validates({
				@Validate(value=Validators.REQUIRED, params="{ fields: [ 'name', 'email', 'password' ] }"),
				@Validate(value=Validators.VISIT),
				})
			Arg user) {
		if (!checkEmail(user.getEmail())) {
			return Views.sftlInput(context);
		}

		addActionConfirm(getText("message-confirm"));
		return null;
	}

	/**
	 * execute
	 * @param user the input user data
	 * @return user object or view
	 */
	@At
	public Object execute(final @Param
			@Validates({
				@Validate(value=Validators.REQUIRED, params="{ fields: [ 'name', 'email', 'password' ] }"),
				@Validate(value=Validators.VISIT),
				})
			Arg user) {
		if (!checkEmail(user.getEmail())) {
			return Views.sftlInput(context);
		}

		final EntityDao<User> udao = getDaoClient().getEntityDao(User.class);

		udao.exec(new Runnable() {
			public void run() {
				user.setId(null);
				user.setRole(ROLE.USER);
				assist().initCommonFields(user);
				udao.insert(user);

				String pwd = user.getPassword();
				try {
					user.setPassword(Texts.maskPassword(pwd));
					mailer.sendTemplateMail(user, TPL.MAIL_REGISTER, user);
				}
				catch (EmailException e) {
					String msg = getText(RES.ERROR_SENDMAIL, RES.ERROR_SENDMAIL, user.getEmail());
					if (assist().ignoreEmailException()) {
						addActionWarning(msg);
					}
					else {
						addActionError(msg);
						udao.rollback();
					}
				}
				finally {
					user.setPassword(pwd);
				}
			}
		});

		if (hasActionErrors()) {
			return Views.sftlInput(context);
		}

		assist().setLoginUser(user);

		if (Strings.isNotEmpty(user.redirect)) {
			int timeout = getTextAsInt(RES.REDIRECT_TIMEOUT, 0);
			if (timeout < 1) {
				HttpServlets.sendRedirect(getResponse(), user.redirect);
				return Views.none(context);
			}
		}

		addActionMessage(getText(RES.MESSAGE_SUCCESS));
		return null;
	}
}
