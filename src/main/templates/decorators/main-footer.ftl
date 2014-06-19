<div id="footer">
	<div id="footer_power">
		<#include "donate.ftl"/>
	</div>
	<div id="footer_site">
		<span id="site_cpr">&copy; ${assist.systemYear}, ${request.serverName!}</span>
		<span id="site_ver">Version: ${assist.appVersion}</span>
		<span id="site_ret">Elapsed Time: ${assist.requestElapsedTime}</span>
	</div>
</div>

