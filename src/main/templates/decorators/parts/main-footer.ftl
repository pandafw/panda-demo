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
<div id="footer">
	<div id="footer_navi">
		<#include "foot-navi.ftl"/>
	</div>
	<div id="footer_power">
		<@n.text name="poweredby-sf"><@s.param>${static}</@s.param></@n.text>
		<@n.text name="poweredby-nuts"><@s.param>${static}</@s.param></@n.text>
		<#include "donate.ftl"/>
	</div>
	<div id="footer_site">
		<span id="site_cpr">&copy; ${utils.systemYear}, ${request.serverName!}</span>
		<span id="site_ver">Version: ${utils.appVersion}</span>
		<span id="site_ret">Elapsed Time: ${utils.requestElapsedTime}</span>
	</div>
</div>
<script type="text/javascript">
  (function() {
    var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
    po.src = 'https://apis.google.com/js/plusone.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
  })();
</script>
