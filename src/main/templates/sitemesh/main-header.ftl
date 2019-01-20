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
				<p class="navbar-text"><@p.text name="site-desc"/></p>
			</div>
			<div class="navbar-collapse collapse" id="navbar_main">
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#"><@p.text name="navi-language"/> <span class="caret"></span></a>
						<ul class="dropdown-menu">
		<#assign _ml = consts.localeLanguageMap />
		<#list ['en', 'ja', 'zh'] as _l>
			<#assign _lh = _ml[_l]?html />
							<li><a class="site-lang" href="javascript:s_setLang('${_l}');"><img src="${base}/site/img/flag/${_l}.png" alt="${_lh}" title="${_lh}"/> ${_lh}</a></li>
		</#list>
						</ul>
					</li>
					<li><button class="btn btn-primary navbar-btn" onclick="location.href='https://github.com/pandafw/panda'"><i class="fa fa-code-fork"></i> Fork me</button></li>
				<#if assist.loginUser??>
					<li><@p.a icon="user" href="${base}/user/">${(assist.loginUser.name!"UNKNOWN")?html}</@p.a></li>
					<li><@p.a icon="sign-out" action="/login/logout" label="#(navi-user-signout)"/></li>
				<#else>
					<li><@p.a icon="sign-in" href="${base}/user/" label="#(navi-user-signin)"/></li>
				</#if>
				</ul>
			</div>
		</div>
	</div>
</div>
