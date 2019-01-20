package panda.demo.util;

import panda.app.constant.RES;
import panda.app.util.AppActionAssist;
import panda.demo.entity.PetImage;
import panda.demo.entity.User;
import panda.ioc.Scope;
import panda.ioc.annotation.IocBean;
import panda.mvc.util.ActionAssist;


@IocBean(type=ActionAssist.class, scope=Scope.REQUEST)
public class WebActionAssist extends AppActionAssist {
	@Override
	public User getLoginUser() {
		return (User)super.getLoginUser();
	}

	@Override
	public boolean isDebugEnabled() {
		return isLoopbackIP();
	}

	public String getPetImageLink(PetImage pi) {
		if (pi == null || pi.getImageSize() <= 0) {
			return "";
		}
		return "<a href=\"" + context.getBase() + "/pet/view?id=" + pi.getId() + "\">"
				+ "<img src=\"" + context.getBase() + "/petimage/idownload?id=" + pi.getId() + "\">"
				+ "</a>";
	}

	//-----------------------------------------------------------
	/**
	 * ignore email exception
	 * @return true if mail-exception is set to warn/ignore
	 */
	public boolean ignoreEmailException() {
		String iee = getText(RES.MAIL_EXCEPTION, "");
		if ("warn".equals(iee) || "ignore".equals(iee)) {
			return true;
		}
		
		return false;
	}
}
