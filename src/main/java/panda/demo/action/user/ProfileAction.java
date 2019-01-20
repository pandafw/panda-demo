package panda.demo.action.user;

import java.util.List;

import panda.app.auth.Auth;
import panda.app.constant.AUTH;
import panda.app.constant.RES;
import panda.dao.entity.EntityDao;
import panda.demo.action.WebAction;
import panda.demo.constant.TPL;
import panda.demo.entity.User;
import panda.demo.entity.query.UserQuery;
import panda.demo.util.WebMailer;
import panda.ioc.annotation.IocInject;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.To;
import panda.mvc.annotation.Validate;
import panda.mvc.annotation.Validates;
import panda.mvc.annotation.param.Param;
import panda.mvc.validator.Validators;
import panda.mvc.view.Views;
import panda.net.mail.EmailException;

@At("/user/profile")
@Auth(AUTH.TICKET)
@To(value=View.SFTL, error=Views.SFTL_INPUT)
public class ProfileAction extends WebAction {
	
	@IocInject
	private WebMailer mailer;

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
		User c = assist().getLoginUser();
		if (c.getEmail().equals(email)) {
			return true;
		}

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
	 * @param user input user data
	 * @return user object
	 */
	@At
	public Object input(@Param User user) {
		User lu = assist().getLoginUser();
		if (user == null) {
			user = lu;
		}
		else {
			user.copy(lu);
		}
		return user;
	}
	
	/**
	 * confirm
	 * @param user the input user data
	 * @return user object or view
	 */
	@At
	public Object confirm(@Param
			@Validates({
				@Validate(value=Validators.REQUIRED, params="{ fields: [ 'name', 'email' ] }"),
				@Validate(value=Validators.VISIT),
				})
			User user) {
		if (!checkEmail(user.getEmail())) {
			context.setResult(user);
			return Views.sftlInput(context);
		}

		addActionConfirm(getText("message-confirm"));
		return user;
	}

	/**
	 * execute
	 * @param user the input user data
	 * @return user object or view
	 */
	@At
	public Object execute(final @Param
		@Validates({
			@Validate(value=Validators.REQUIRED, params="{ fields: [ 'name', 'email' ] }"),
			@Validate(value=Validators.VISIT),
			})
		User user) {

		if (!checkEmail(user.getEmail())) {
			context.setResult(user);
			return Views.sftlInput(context);
		}

		final EntityDao<User> udao = getDaoClient().getEntityDao(User.class);

		udao.exec(new Runnable() {
			public void run() {
				User lu = assist().getLoginUser();

				user.setId(lu.getId());
				udao.updateIgnoreNull(user);

				if (!lu.getEmail().equals(user.getEmail())) {
					try {
						mailer.sendTemplateMail(user, TPL.MAIL_PROFILE_UPDATE, user);
					}
					catch (EmailException e) {
						String msg = getText(RES.ERROR_SENDMAIL, RES.ERROR_SENDMAIL, user);
						if (assist().ignoreEmailException()) {
							addActionWarning(msg);
						}
						else {
							addActionError(msg);
							udao.rollback();
						}
					}
				}
			}
		});

		if (hasActionErrors()) {
			context.setResult(user);
			return Views.sftlInput(context);
		}

		addActionMessage(getText(RES.MESSAGE_SUCCESS));
		assist().setLoginUser(user);

		return user;
	}
}
