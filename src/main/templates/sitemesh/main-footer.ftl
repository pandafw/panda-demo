<div id="footer">
	<div id="ads_foot">
		<#include "/ads/google-adsbar.ftl"/>
	</div>
	<div id="footer_navbar" class="navbar navbar-default">
		<div class="container">
	<div id="footer_navi">
	</div>
	<div id="footer_site">
		<span id="site_cpr">&copy; ${assist.systemYear?c} ${request.serverName!}</span>
		(
		<span id="site_ver">Version: ${assist.appVersion}</span>
		<span id="site_ret">Cost: ${assist.requestElapsedTime}</span>
		)
	</div>
	<div class="p-totop p-totop-rb"><i class="fa fa-arrow-up"></i></div>
</div>

