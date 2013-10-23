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
<div id="header">
	<div id="header_adsbar">
		<a id="site_logo" href="${base}/">
			<span id="site_name"><@n.text name="site-name"/></span><br/>
			<span id="site_desc"><@n.text name="site-desc"> </@n.text></span>
		</a>
	<#if !utils.mobileLayout>
		<div id="site_ads_headbar">
			<script type="text/javascript"><!--
				google_ad_client = "ca-pub-2588847219225041";
				/* nutsfw-headerbar-468x60 */
				google_ad_slot = "8467142172";
				google_ad_width = 468;
				google_ad_height = 60;
			--></script>
			<script type="text/javascript" src="http://pagead2.googlesyndication.com/pagead/show_ads.js"></script>
		</div>
	</#if>
	</div>
	<div id="header_navbar">
		<div id="site_toplinks">
			<@n.a icon="n-icon-house" href="${base}/"><@n.text name="navi-home"/></@n.a>
			 | 
			<@n.a icon="n-icon-page_white_gear" href="${base}/codegen.ftl"><@n.text name="navi-codegen"/></@n.a>
			 | 
			<@n.a icon="n-icon-image" href="${base}/screenshot.ftl"><@n.text name="navi-screenshot"/></@n.a>
			 | 
			<@n.a icon="n-icon-package_go" href="http://code.google.com/p/nutsfw/downloads" target="_blank"><@n.text name="navi-download"/></@n.a>
			 | 
			<@n.a icon="n-icon-page_white_code" href="http://code.google.com/p/nutsfw/source/browse" target="_blank"><@n.text name="navi-source"/></@n.a>
			 | 
			<@n.a icon="n-icon-text_signature" href="http://code.google.com/p/nutsfw/w" target="_blank"><@n.text name="navi-wiki"/></@n.a>
			 | 
			<@n.a icon="n-icon-group" href="http://groups.google.com/group/nutsfw" target="_blank"><@n.text name="navi-forum"/></@n.a>
			 | 
			<@n.a id="site_theme" sicon="ui-icon-carat-1-s" href="#"><@n.text name="navi-theme"><@s.param>${uiTheme}</@s.param></@n.text></@n.a>
			 | 
		<#assign _ml = consts.localeLanguageMap />
		<#list ['ja', 'zh'] as _l>
			<a class="site-lang" href="javascript:s_setLang('${_l}');"><img src="${base}/images/flag-${_l}.png" alt="${_ml[_l]?html}" title="${_ml[_l]?html}"/></a>
		</#list>
		</div>
	</div>
	<script type="text/javascript">
		$(function() {
			$.popup({
				id: "popup_site_theme",
				url: "<@n.url action='themes' namespace='/'/>",
				params: { '__popup': 'true' }
			});
			$('#site_theme').popup({
				id: 'popup_site_theme',
				mouseenter: true,
				callback: function(v) {
					s_setTheme(v); 
				}
			});
		});
	</script>
</div>
