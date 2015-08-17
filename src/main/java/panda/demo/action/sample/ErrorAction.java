package panda.demo.action.sample;

import panda.demo.action.BaseAction;
import panda.lang.Strings;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.param.Param;
import panda.mvc.annotation.view.Ok;

@At("/error")
@Ok(View.FREEMARKER)
public class ErrorAction extends BaseAction {
	public static class Arg {
		private String appError;
		private String appWarn;
		private String appInfo;
		private String appConf;
	
		private String sesError;
		private String sesWarn;
		private String sesInfo;
		private String sesConf;
	
		private String strError;
		private String strWarn;
		private String strInfo;
		private String strConf;
		private String strExcep;
		private String strField;
	
		/**
		 * @return the appError
		 */
		public String getAppError() {
			return appError;
		}
	
		/**
		 * @param appError the appError to set
		 */
		public void setAppError(String appError) {
			this.appError = appError;
		}
	
		/**
		 * @return the appWarn
		 */
		public String getAppWarn() {
			return appWarn;
		}
	
		/**
		 * @param appWarn the appWarn to set
		 */
		public void setAppWarn(String appWarn) {
			this.appWarn = appWarn;
		}
	
		/**
		 * @return the appInfo
		 */
		public String getAppInfo() {
			return appInfo;
		}
	
		/**
		 * @param appInfo the appInfo to set
		 */
		public void setAppInfo(String appInfo) {
			this.appInfo = appInfo;
		}
	
		/**
		 * @return the appConf
		 */
		public String getAppConf() {
			return appConf;
		}
	
		/**
		 * @param appConf the appConf to set
		 */
		public void setAppConf(String appConf) {
			this.appConf = appConf;
		}
	
		/**
		 * @return the sesError
		 */
		public String getSesError() {
			return sesError;
		}
	
		/**
		 * @param sesError the sesError to set
		 */
		public void setSesError(String sesError) {
			this.sesError = sesError;
		}
	
		/**
		 * @return the sesWarn
		 */
		public String getSesWarn() {
			return sesWarn;
		}
	
		/**
		 * @param sesWarn the sesWarn to set
		 */
		public void setSesWarn(String sesWarn) {
			this.sesWarn = sesWarn;
		}
	
		/**
		 * @return the sesInfo
		 */
		public String getSesInfo() {
			return sesInfo;
		}
	
		/**
		 * @param sesInfo the sesInfo to set
		 */
		public void setSesInfo(String sesInfo) {
			this.sesInfo = sesInfo;
		}
	
		/**
		 * @return the sesConf
		 */
		public String getSesConf() {
			return sesConf;
		}
	
		/**
		 * @param sesConf the sesConf to set
		 */
		public void setSesConf(String sesConf) {
			this.sesConf = sesConf;
		}
	
		/**
		 * @return the strError
		 */
		public String getStrError() {
			return strError;
		}
	
		/**
		 * @param strError the strError to set
		 */
		public void setStrError(String strError) {
			this.strError = strError;
		}
	
		/**
		 * @return the strWarn
		 */
		public String getStrWarn() {
			return strWarn;
		}
	
		/**
		 * @param strWarn the strWarn to set
		 */
		public void setStrWarn(String strWarn) {
			this.strWarn = strWarn;
		}
	
		/**
		 * @return the strInfo
		 */
		public String getStrInfo() {
			return strInfo;
		}
	
		/**
		 * @param strInfo the strInfo to set
		 */
		public void setStrInfo(String strInfo) {
			this.strInfo = strInfo;
		}
	
		/**
		 * @return the strConf
		 */
		public String getStrConf() {
			return strConf;
		}
	
		/**
		 * @param strConf the strConf to set
		 */
		public void setStrConf(String strConf) {
			this.strConf = strConf;
		}
	
		/**
		 * @return the strExcep
		 */
		public String getStrExcep() {
			return strExcep;
		}
	
		/**
		 * @param strExcep the strExcep to set
		 */
		public void setStrExcep(String strExcep) {
			this.strExcep = strExcep;
		}
	
		/**
		 * @return the strField
		 */
		public String getStrField() {
			return strField;
		}
	
		/**
		 * @param strField the strField to set
		 */
		public void setStrField(String strField) {
			this.strField = strField;
		}
	}

	@At("")
	public void input() {
	}

	@At
	public void raise(@Param Arg arg) throws Exception {
		getApplicationAware().clear();
		if (Strings.isNotEmpty(arg.appError)) {
			addApplicationError(arg.appError);
		}
		
		if (Strings.isNotEmpty(arg.appWarn)) {
			addApplicationWarning(arg.appWarn);
		}
		if (Strings.isNotEmpty(arg.appConf)) {
			addApplicationConfirm(arg.appConf);
		}
		if (Strings.isNotEmpty(arg.appInfo)) {
			addApplicationMessage(arg.appInfo);
		}

		getSessionAware().clear();
		if (Strings.isNotEmpty(arg.sesError)) {
			addSessionError(arg.sesError);
		}
		if (Strings.isNotEmpty(arg.sesWarn)) {
			addSessionWarning(arg.sesWarn);
		}
		if (Strings.isNotEmpty(arg.sesConf)) {
			addSessionConfirm(arg.sesConf);
		}
		if (Strings.isNotEmpty(arg.sesInfo)) {
			addSessionMessage(arg.sesInfo);
		}

		if (Strings.isNotEmpty(arg.strError)) {
			addActionError(arg.strError);
		}
		if (Strings.isNotEmpty(arg.strWarn)) {
			addActionWarning(arg.strWarn);
		}
		if (Strings.isNotEmpty(arg.strConf)) {
			addActionConfirm(arg.strConf);
		}
		if (Strings.isNotEmpty(arg.strInfo)) {
			addActionMessage(arg.strInfo);
		}
		if (Strings.isNotEmpty(arg.strField)) {
			addFieldError("strField", arg.strField);
		}
		if (Strings.isNotBlank(arg.strExcep)) {
			throw new Exception(arg.strExcep);
		}
	}
}
