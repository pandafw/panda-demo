<#--
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
-->
<@n.head contentType="text/html" charset="UTF-8"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<#include "head.ftl"/>

	<@n.link version="${utils.appVersion}" debug="true" nuts="true" uiTheme="${uiTheme}"/>
	<link href="${static}/nuts/site/main.css?v=${utils.appVersion}" rel="stylesheet" type="text/css"/>
	<link href="${base}/styles/site.css" rel="stylesheet" type="text/css"/>
	<script src="${static}/nuts/site/main.js?v=${utils.appVersion}" type="text/javascript"></script>
	<script src="${base}/scripts/site.js" type="text/javascript"></script>
	<script type="text/javascript">s_main({"base": "${base!}", "statics": "${static!}", "ga_account": "UA-27601677-1"});</script>

	${head}
</head>

<body class="${utils.browser} lang-${utils.locale} ui-theme-${uiTheme} n-ui-${nutsTheme!'simple'}">
<div id="main">
	<div id="header_wrap">
		<#include "parts/main-header.ftl"/>
	</div>

	<div id="content_wrap">
		<#if utils.mobileLayout>
			<#include "parts/main-content-mb.ftl"/>
		<#else>
			<#include "parts/main-content-pc.ftl"/>
		</#if>
	</div>

	<div id="footer_wrap">
		<#include "parts/main-footer.ftl"/>
	</div>
</div>

</body>
</html>
