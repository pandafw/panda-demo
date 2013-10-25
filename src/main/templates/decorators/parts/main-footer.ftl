<div id="footer">
	<div id="footer_navi">
		<#include "foot-navi.ftl"/>
	</div>
	<div id="footer_power">
		<@p.text name="poweredby-sf"><@s.param>${static}</@s.param></@p.text>
		<@p.text name="poweredby-nuts"><@s.param>${static}</@s.param></@p.text>
		<#include "donate.ftl"/>
	</div>
	<div id="footer_site">
		<span id="site_cpr">&copy; ${assist.systemYear}, ${request.serverName!}</span>
		<span id="site_ver">Version: ${assist.appVersion}</span>
		<span id="site_ret">Elapsed Time: ${assist.requestElapsedTime}</span>
	</div>
</div>
<script type="text/javascript">
	(function() {
		var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
		po.src = 'https://apis.google.com/js/plusone.js';
		var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
	})();
</script>
