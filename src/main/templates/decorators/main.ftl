<@p.head contentType="text/html" charset="UTF-8"/>
<!DOCTYPE html>
<html>
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
<#--
	<div id="footer_wrap">
		<#include "parts/main-footer.ftl"/>
	</div>
-->
</div>

	<#include "foot.ftl"/>
</body>
</html>
