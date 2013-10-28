<div id="header">
	<div id="header_navbar" class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a href="${base}/" class="navbar-brand">Panda</a>
			</div>
			<div class="navbar-collapse collapse" id="navbar-main">
				<ul class="nav navbar-nav">
					<li><a href="${base}/codegen.ftl"><@p.text name="navi-codegen"/></a></li>
					<li><a href="${base}/screenshot.ftl"><@p.text name="navi-screenshot"/></a></li>
					<li><a href="http://code.google.com/p/nutsfw/downloads" target="_blank"><@p.text name="navi-download"/></a></li>
					<li><a href="http://code.google.com/p/nutsfw/source/browse" target="_blank"><@p.text name="navi-source"/></a></li>
					<li><a href="http://code.google.com/p/nutsfw/w" target="_blank"><@p.text name="navi-wiki"/></a></li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">Languages <span class="caret"></span></a>
						<ul class="dropdown-menu">
		<#assign _ml = consts.localeLanguageMap />
		<#list ['ja', 'zh'] as _l>
							<li><a class="site-lang" href="javascript:s_setLang('${_l}');"><img src="${base}/img/flag-${_l}.png" alt="${_ml[_l]?html}" title="${_ml[_l]?html}"/> ${_ml[_l]?html}</a></li>
		</#list>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div id="header_adsbar" class="container">
		<div class="page-header" id="banner">
			<p class="pull-right visible-xs">
				<button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
			</p>
			<div class="row">
				<div class="col-lg-4">
					<h1><@p.text name="site-name"/></h1>
					<p class="lead"><@p.text name="site-desc"> </@p.text></p>
				</div>
				<div id="site_ads_headbar" class="col-lg-8">
	<#if !assist.mobileLayout>
					<script type="text/javascript"><!--
						google_ad_client = "ca-pub-2588847219225041";
						/* nutsfw-headerbar-468x60 */
						google_ad_slot = "8467142172";
						google_ad_width = 468;
						google_ad_height = 60;
					--></script>
					<script type="text/javascript" src="http://pagead2.googlesyndication.com/pagead/show_ads.js"></script>
	</#if>
				</div>
			</div>
		</div>
	</div>
</div>
