<%
/*
 * This file is part of Nuts Framework.
 * Copyright(C) 2009-2012 Nuts Develop Team.
 *
 * Nuts Framework is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License any later version.
 *
 * Nuts Framework is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Nuts Framework. If not, see <http://www.gnu.org/licenses/>.
 */
%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
	<title>Debug Page</title>
	<style type="text/css">
		html * {
			font-size: 12px;
			font-family: Verdana, Geneva, Arial, Helvetica, sans-serif, "SimSun", "MingLiU", "MS Gothic";
		}
		h2 {
			margin: 0;
			padding: 0;
		}
		table {
			border-collapse: collapse;
			border: 1px solid #cccccc;
			width: 100%;
		}
		td, th {
			border: 1px solid #cccccc;
			vertical-align: top;
		}
		th {
			background-color: #eeeeee;
			white-space: nowrap;
			text-align: left;
		}
		td {
			word-break: all;
		}
	</style>
</head>

<body>
	<h2>REQUEST HTTP HEADER:</h2>
	<table>
	<thead>
		<tr><th width="200">Name</th><th>Value</th></tr>
	</thead>
	<tbody>
<% 
	for (java.util.Enumeration e = request.getHeaderNames(); e.hasMoreElements(); ) {
		String n = (String)e.nextElement();
%>
		<tr><td><%=n%></td><td><%
		for (java.util.Enumeration e2 = request.getHeaders(n); e2.hasMoreElements(); ) {
			out.print(e2.nextElement() + "<br/>");
		}
		%></td></tr>
<% } %>
	</tbody>
	</table>
	<br/>

	<br/>
	<h2>REQUEST HTTP COOKIES:</h2>
	<table>
	<thead>
		<tr>
			<th width="200">Name</th>
			<th width="300">Value</th>
			<th>Domain</th>
			<th>Path</th>
			<th>MaxAge</th>
			<th>Secure</th>
			<th>Version</th>
		</tr>
	</thead>
	<tbody>
<% 
	Cookie[] cookies = request.getCookies();
	for (int i = 0; cookies != null && i < cookies.length; i++) {
		Cookie c = cookies[i];
%>
		<tr>
			<td><%=c.getName()%></td>
			<td><%=c.getValue()%></td>
			<td><%=c.getDomain()%></td>
			<td><%=c.getPath()%></td>
			<td><%=c.getMaxAge()%></td>
			<td><%=c.getSecure()%></td>
			<td><%=c.getVersion()%></td>
		</tr>
<% } %>
	</tbody>
	</table>
	<h2>RESPONSE HTTP COOKIES:</h2>
	<table>
	<tbody>
		<tr><td><script type="text/javascript" language="JavaScript">
			if (document.cookie) {
				document.write(document.cookie.replace("; ", "<br/>"));
			}
			</script></td>
		</tr>
	</tbody>
	</table>
	<br/>

	<br/>
	<h2>REQUEST INFORMATION: </h2>
	<table>
	<thead>
		<tr><th width="200">Name</th><th>Value</th></tr>
	</thead>
	<tbody>
		<tr><td>AuthType</td><td><%=request.getAuthType()%></td></tr>
		<tr><td>CharacterEncoding</td><td><%=request.getCharacterEncoding()%></td></tr>
		<tr><td>ContentLength</td><td><%=request.getContentLength()%></td></tr>
		<tr><td>ContentType</td><td><%=request.getContentType()%></td></tr>
		<tr><td>ContextPath</td><td><%=request.getContextPath()%></td></tr>
		<tr><td>isSecure</td><td><%=request.isSecure()%></td></tr>
		<tr><td>isRequestedSessionIdFromCookie</td><td><%=request.isRequestedSessionIdFromCookie()%></td></tr>
		<tr><td>isRequestedSessionIdFromURL</td><td><%=request.isRequestedSessionIdFromURL()%></td></tr>
		<tr><td>isRequestedSessionIdValid</td><td><%=request.isRequestedSessionIdValid()%></td></tr>
		<tr><td>Locale</td><td><%=request.getLocale()%></td></tr>
		<tr><td>LocalAddr</td><td><%=request.getLocalAddr()%></td></tr>
		<tr><td>LocalName</td><td><%=request.getLocalName()%></td></tr>
		<tr><td>LocalPort</td><td><%=request.getLocalPort()%></td></tr>
		<tr><td>Method</td><td><%=request.getMethod()%></td></tr>
		<tr><td>PathInfo</td><td><%=request.getPathInfo()%></td></tr>
		<tr><td>PathTranslated</td><td><%=request.getPathTranslated()%></td></tr>
		<tr><td>Protocol</td><td><%=request.getProtocol()%></td></tr>
		<tr><td>QueryString</td><td><%=request.getQueryString()%></td></tr>
		<tr><td>RemoteAddr</td><td><%=request.getRemoteAddr()%></td></tr>
		<tr><td>RemotePort</td><td><%=request.getRemotePort()%></td></tr>
		<tr><td>RequestedSessionId</td><td><%=request.getRequestedSessionId()%></td></tr>
		<tr><td>RequestURI</td><td><%=request.getRequestURI()%></td></tr>
		<tr><td>RequestURL</td><td><%=request.getRequestURL()%></td></tr>
		<tr><td>Scheme</td><td><%=request.getScheme()%></td></tr>
		<tr><td>ServerName</td><td><%=request.getServerName()%></td></tr>
		<tr><td>ServerPort</td><td><%=request.getServerPort()%></td></tr>
		<tr><td>ServletPath</td><td><%=request.getServletPath()%></td></tr>
	</tbody>
	</table>
	<br/>

	<br/>
	<h2>REQUEST PARAMETERS: </h2>
	<table>
	<thead>
		<tr><th width="200">Name</th><th>Values</th></tr>
	</thead>
	<tbody>
<% 
	for (java.util.Enumeration e = request.getParameterNames(); e.hasMoreElements(); ) {
		String n = (String)e.nextElement();
		Object v = request.getParameterValues(n);
%>
		<tr><td><%=n%></td><td><%=v%></td></tr>
<% } %>
	</tbody>
	</table>
	<br/>

	<br/>
	<h2>REQUEST ATTRIBUTES: </h2>
	<table>
	<thead>
		<tr><th width="200">Name</th><th>Value</th><th width="200">Class</th></tr>
	</thead>
	<tbody>
<% 
	for (java.util.Enumeration e = request.getAttributeNames(); e.hasMoreElements(); ) {
		String n = (String)e.nextElement();
		Object v = request.getAttribute(n);
%>
		<tr><td><%=n%></td><td><%=v%></td><td><%=(v == null ? "" : v.getClass().getName())%></td></tr>
<% } %>
	</tbody>
	</table>
	<br/>

	<br/>
	<h2>SESSION: [ <%=session.getId()%> ]</h2>
	<table>
	<thead>
		<tr><th width="200">Name</th><th>Value</th><th width="200">Class</th></tr>
	</thead>
	<tbody>
<% 
	for (java.util.Enumeration e = session.getAttributeNames(); e.hasMoreElements(); ) {
		String n = (String)e.nextElement();
		Object v = session.getAttribute(n);
%>
		<tr><td><%=n%></td><td><%=v%></td><td><%=(v == null ? "" : v.getClass().getName())%></td></tr>
<% } %>
	</tbody>
	</table>
	<br/>

	<br/>
	<h2>APPLICATION: [ <%=application.getServletContextName()%> ] ( <%=application.getServerInfo()%> )</h2>
	<table>
	<thead>
		<tr><th width="200">Name</th><th>Value</th><th width="200">Class</th></tr>
	</thead>
	<tbody>
<% 
	for (java.util.Enumeration e = application.getAttributeNames(); e.hasMoreElements(); ) {
		String n = (String)e.nextElement();
		Object v = application.getAttribute(n);
%>
		<tr><td><%=n%></td><td><%=v%></td><td><%=(v == null ? "" : v.getClass().getName())%></td></tr>
<% } %>
	</tbody>
	</table>
	<br/>

	<br/>
	<h2>System.Properties</h2>
	<table>
	<thead>
		<tr><th width="200">Name</th><th>Value</th></tr>
	</thead>
	<tbody>
<% 
	for (java.util.Enumeration e = System.getProperties().keys(); e.hasMoreElements(); ) {
		String n = (String)e.nextElement();
		String v = System.getProperty(n);
%>
		<tr><td><%=n%></td><td><%=v%></td></tr>
<% } %>
	</tbody>
	</table>
	<br/>
</body>
</html>
