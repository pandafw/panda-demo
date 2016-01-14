<html>
<head>
<title>Debug</title>
</head>

<body>
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
		padding: 2px 4px;
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
<div class="p-section">
	<div class="p-header"><h3><@p.text name="navi-tools-error"/></h3></div>

	<#include "/action-alert.ftl"/>

	<h2>REQUEST HTTP HEADER:</h2>
	<table>
	<thead>
		<tr><th width="200">Name</th><th>Value</th></tr>
	</thead>
	<tbody>
<#list reqh?keys as k> 
		<tr><td>${k?html}</td><td><#list reqh[k] as v>${v?html}<br/></#list></td></tr>
</#list>
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
<#list request.cookies as c>
		<tr>
			<td><${c.name?default("")?html}</td>
			<td><${c.value?default("")?html}</td>
			<td><${c.domain?default("")?html}</td>
			<td><${c.path?default("")?html}</td>
			<td><${c.maxAge?default("")?html}</td>
			<td><${c.secure?string?html}</td>
			<td><${c.version?default("")?html}</td>
		</tr>
</#list>
	</tbody>
	</table>
	<br/>

	<h2>RESPONSE HTTP COOKIES:</h2>
	<table>
	<tbody>
		<tr><td><script type="text/javascript">
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
		<tr><td>AuthType</td><td>${request.authType?default("")?html}</td></tr>
		<tr><td>CharacterEncoding</td><td>${request.characterEncoding?default("")?html}</td></tr>
		<tr><td>ContentLength</td><td>${request.contentLength?html}</td></tr>
		<tr><td>ContentType</td><td>${request.contentType?default("")?html}</td></tr>
		<tr><td>ContextPath</td><td>${request.contextPath?default("")?html}</td></tr>
		<tr><td>isSecure</td><td>${request.secure?string?html}</td></tr>
		<tr><td>isRequestedSessionIdFromCookie</td><td>${request.requestedSessionIdFromCookie?string?html}</td></tr>
		<tr><td>isRequestedSessionIdFromURL</td><td>${request.requestedSessionIdFromURL?string?html}</td></tr>
		<tr><td>isRequestedSessionIdValid</td><td>${request.requestedSessionIdValid?string?html}</td></tr>
		<tr><td>Locale</td><td>${request.locale?default("")?html}</td></tr>
		<tr><td>LocalAddr</td><td>${request.localAddr?default("")?html}</td></tr>
		<tr><td>LocalName</td><td>${request.localName?default("")?html}</td></tr>
		<tr><td>LocalPort</td><td>${request.localPort?html}</td></tr>
		<tr><td>Method</td><td>${request.method?default("")?html}</td></tr>
		<tr><td>PathInfo</td><td>${request.pathInfo?default("")?html}</td></tr>
		<tr><td>PathTranslated</td><td>${request.pathTranslated?default("")?html}</td></tr>
		<tr><td>Protocol</td><td>${request.protocol?default("")?html}</td></tr>
		<tr><td>QueryString</td><td>${request.queryString?default("")?html}</td></tr>
		<tr><td>RemoteAddr</td><td>${request.remoteAddr?default("")?html}</td></tr>
		<tr><td>RemotePort</td><td>${request.remotePort?html}</td></tr>
		<tr><td>RequestedSessionId</td><td>${request.requestedSessionId?default("")?html}</td></tr>
		<tr><td>RequestURI</td><td>${request.requestURI?default("")?html}</td></tr>
		<tr><td>RequestURL</td><td>${request.requestURL?default("")?html}</td></tr>
		<tr><td>Scheme</td><td>${request.scheme?default("")?html}</td></tr>
		<tr><td>ServerName</td><td>${request.serverName?default("")?html}</td></tr>
		<tr><td>ServerPort</td><td>${request.serverPort?html}</td></tr>
		<tr><td>ServletPath</td><td>${request.servletPath?default("")?html}</td></tr>
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
<#list reqp?keys as k>
		<tr><td>${k?html}</td><td>${peqp[k].toString()?html}</td></tr>
</#list>
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
<#list req?keys as k>
		<tr><td>${k?html}</td><td>${req[k]?default("")?html}</td><td><#if req[k]??>${req[k].class.name?html}</#if></td></tr>
</#list>
	</tbody>
	</table>
	<br/>

	<br/>
	<h2>SESSION: [ <#if session??>${session.id}</#if> ]</h2>
	<table>
	<thead>
		<tr><th width="200">Name</th><th>Value</th><th width="200">Class</th></tr>
	</thead>
	<tbody>
<#list ses?keys as k>
		<tr><td>${k?html}</td><td>${ses[k]?default("")?html}</td><td><#if ses[k]??>${ses[k].class.name?html}</#if></td></tr>
</#list>
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
<#list app?keys as k>
		<tr><td>${k?html}</td><td>${app[k]?default("")?html}</td><td><#if app[k]??>${app[k].class.name?html}</#if></td></tr>
</#list>
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
<#assign sps = assist.findValue("'java.lang.System'@getProperties()")/>
<#list sps?keys as k>
		<tr><td>${k?html}</td><td><#if sps[k]??>${sps[k].toString()?html}</#if></td></tr>
</#list>
	</tbody>
	</table>
	<br/>
</div>
</body>
</html>
