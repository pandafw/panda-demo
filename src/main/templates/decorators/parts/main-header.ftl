<div id="header">
	<div id="header_adsbar">
		<a id="site_logo" href="${base}/">
			<span id="site_name"><@p.text name="site-name"/></span><br/>
			<span id="site_desc"><@p.text name="site-desc"> </@p.text></span>
		</a>
	<#if !assist.mobileLayout>
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
			<@p.a icon="n-icon-house" href="${base}/"><@p.text name="navi-home"/></@p.a>
			 | 
			<@p.a icon="n-icon-page_white_gear" href="${base}/codegen.ftl"><@p.text name="navi-codegen"/></@p.a>
			 | 
			<@p.a icon="n-icon-image" href="${base}/screenshot.ftl"><@p.text name="navi-screenshot"/></@p.a>
			 | 
			<@p.a icon="n-icon-package_go" href="http://code.google.com/p/nutsfw/downloads" target="_blank"><@p.text name="navi-download"/></@p.a>
			 | 
			<@p.a icon="n-icon-page_white_code" href="http://code.google.com/p/nutsfw/source/browse" target="_blank"><@p.text name="navi-source"/></@p.a>
			 | 
			<@p.a icon="n-icon-text_signature" href="http://code.google.com/p/nutsfw/w" target="_blank"><@p.text name="navi-wiki"/></@p.a>
			 | 
			<@p.a icon="n-icon-group" href="http://groups.google.com/group/nutsfw" target="_blank"><@p.text name="navi-forum"/></@p.a>
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
				url: "<@p.url action='themes' namespace='/'/>",
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
