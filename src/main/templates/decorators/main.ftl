<@p.head contentType="text/html" charset="UTF-8"/>
<!DOCTYPE html>
<html lang="${assist.locale}">
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
		<#include "parts/main-body.ftl"/>
	</div>
	<div id="footer_wrap">
		<#include "parts/main-footer.ftl"/>
	</div>
</div>

	<#include "foot.ftl"/>
</body>
</html>
