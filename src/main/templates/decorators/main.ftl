<@p.head contentType="text/html" charset="UTF-8"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<#include "head.ftl"/>
	${head}
</head>

<body class="${assist.browser} lang-${assist.locale}">
<div id="main">
	<div id="header_wrap">
		<#include "parts/main-header.ftl"/>
	</div>

	<div id="content_wrap">
		<#if assist.mobileLayout>
			<#include "parts/main-content-mb.ftl"/>
		<#else>
			<#include "parts/main-content-pc.ftl"/>
		</#if>
	</div>

	<div id="footer_wrap">
		<#include "parts/main-footer.ftl"/>
	</div>
</div>

	<#include "foot.ftl"/>
</body>
</html>
