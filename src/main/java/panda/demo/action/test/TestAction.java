package panda.demo.action.test;

import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import panda.app.action.BaseAction;
import panda.mvc.annotation.At;
import panda.mvc.annotation.To;
import panda.mvc.annotation.param.Param;


@At("/test")
public class TestAction extends BaseAction {
	@At
	@To("sjson:{'includeParams':true}")
	public Object json(@Param Map m) {
		return m;
	}

	@At
	@To("sxml:{'includeParams':true}")
	public Object xml(@Param Map m) {
		return m;
	}

	@At
	@To("raw:{'encoding':'${params.c}'}")
	public Object echo(@Param("c") String cs, @Param("t") String txt) throws IOException {
		return txt;
	}

	@At
	@To("xml:{'prettyPrint':true}")
	public Object req_xml() {
		return reqinfo();
	}
	
	@At
	@To("json:{'prettyPrint':true}")
	public Object req_json() {
		return reqinfo();
	}
	
	protected Object reqinfo() {
		Map<String, Object> req = new LinkedHashMap<String, Object>();

		HttpServletRequest request = getRequest();
		req.put("AuthType", request.getAuthType());
		req.put("CharacterEncoding", request.getCharacterEncoding());
		req.put("ContentLength", request.getContentLength());
		req.put("ContentType", request.getContentType());
		req.put("ContextPath", request.getContextPath());
		req.put("isSecure", request.isSecure());
		req.put("isRequestedSessionIdFromCookie", request.isRequestedSessionIdFromCookie());
		req.put("isRequestedSessionIdFromURL", request.isRequestedSessionIdFromURL());
		req.put("isRequestedSessionIdValid", request.isRequestedSessionIdValid());
		req.put("Locale", request.getLocale().toString());
		req.put("LocalAddr", request.getLocalAddr());
		req.put("LocalName", request.getLocalName());
		req.put("LocalPort", request.getLocalPort());
		req.put("Method", request.getMethod());
		req.put("PathInfo", request.getPathInfo());
		req.put("PathTranslated", request.getPathTranslated());
		req.put("Protocol", request.getProtocol());
		req.put("QueryString", request.getQueryString());
		req.put("RemoteAddr", request.getRemoteAddr());
		req.put("RemotePort", request.getRemotePort());
		req.put("RequestedSessionId", request.getRequestedSessionId());
		req.put("RequestURI", request.getRequestURI());
		req.put("RequestURL", request.getRequestURL());
		req.put("Scheme", request.getScheme());
		req.put("ServerName", request.getServerName());
		req.put("ServerPort", request.getServerPort());
		req.put("ServletPath", request.getServletPath());

		req.put("headers", getReqHeader());
		req.put("parameters", getReqParams());
		return req;
	}
}
