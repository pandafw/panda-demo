<div id="header" class="navbar navbar-default navbar-fixed-top navbar-light bg-light navbar-expand-lg border-bottom fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle navbar-toggler" data-toggle="collapse" data-target="#navbar_main">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a href="${base}/" class="navbar-brand"><@p.text name="site-name"/></a> 
			<p class="site-desc"><@p.text name="site-desc"/></p>
		</div>
		<div class="navbar-collapse collapse mr-auto justify-content-end" id="navbar_main">
			<ul class="nav navbar-nav navbar-right">
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"><@p.text name="navi-language"/> <span class="caret"></span></a>
					<ul class="dropdown-menu">
					<#assign _ml = consts.appLocaleMap />
					<#list _ml?keys as _l><#if _l != '*'><#assign _lh = _ml[_l]?html />
						<li><a class="dropdown-item site-lang" href="javascript:s_setLang('${_l}');">
							${_lh}
							<i class="flag-icon flag-icon-${assist.getCountryByLanguage(_l)}"></i>
							</a>
						</li>
					</#if></#list>
					</ul>
				</li>
			<#if assist.loginUser??>
				<li class="nav-item"><@p.a cssClass="nav-link" icon="user" action="/user/">${(assist.loginUser.name!"UNKNOWN")?html}</@p.a></li>
				<li class="nav-item"><@p.a cssClass="nav-link" icon="sign-out" action="/login/logout" label="#(navi-user-signout)"/></li>
			<#else>
				<li class="nav-item"><@p.a cssClass="nav-link" icon="sign-in" action="/user/" label="#(navi-user-signin)"/></li>
			</#if>
				<li class="nav-item fork-me"><span><a class="btn-sm btn-success" href="https://github.com/pandafw/panda"><i class="fa fa-code-fork"></i> Fork me</a></span></li>
			</ul>
		</div>
	</div>
</div>
