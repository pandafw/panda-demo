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
					<li><a href="${base}/ftl/codegen"><@p.text name="navi-codegen"/></a></li>
					<li><a href="${base}/ftl/screenshot"><@p.text name="navi-screenshot"/></a></li>
					<li><a href="https://github.com/foolite/panda-demo" target="_blank"><@p.text name="navi-download"/></a></li>
					<li><a href="https://github.com/foolite/panda-demo" target="_blank"><@p.text name="navi-source"/></a></li>
					<li><a href="https://github.com/foolite/panda-demo/wiki" target="_blank"><@p.text name="navi-wiki"/></a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#"><@p.text name="navi-language"/> <span class="caret"></span></a>
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
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- pandafw-headerbar-728x90 -->
<ins class="adsbygoogle"
     style="display:inline-block;width:728px;height:90px"
     data-ad-client="ca-pub-2588847219225041"
     data-ad-slot="9399961242"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
	</div>
</div>
