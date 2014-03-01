<#assign _an_ = assist.actionName!/>
<#assign _au_ = assist.requestURI!/>
<#macro menu ap ac tx>
		<li<#if _an_?starts_with(ap)> class="active"</#if>><@p.a action=ac namespace="/"><@p.text name=tx/></@p.a></li>
</#macro>
<#macro menuh ah tx tg>
		<li<#if _au_ = ah> class="active"</#if>><@p.a href=ah target=tg><@p.text name=tx/></@p.a></li>
</#macro>

<div id="menu_sample" class="panel panel-info">
	<div class="panel-heading">
		<i class="fa fa-bookmark"></i> 
		<@p.a id="menu_sample" href="${base}/sample.ftl"><@p.text name="menu-sample"/></@p.a>
	</div>
	<div class="panel-body">
		<ul class="nav nav-stacked">
			<@menu ap="sampletags_" ac="sampletags_list" tx="menu-sample-tags"/>
			<@menu ap="sampledate_" ac="sampledate_list" tx="menu-sample-date"/>
			<@menu ap="samplefile_" ac="samplefile_list" tx="menu-sample-file"/>
			<@menu ap="samplejoin_" ac="samplejoin_list" tx="menu-sample-join"/>
			<@menu ap="sampleunique_" ac="sampleunique_list" tx="menu-sample-unique"/>
		</ul>
	</div>
</div>

<div id="menu_tools" class="panel panel-danger">
	<div class="panel-heading">
		<i class="fa fa-gear"></i> 
		<@p.text name="menu-tools"/>
	</div>
	<div class="panel-body">
		<ul class="nav nav-stacked">
			<@menu ap="cronjobs" ac="cronjobs" tx="menu-tools-cronjobs"/>
			<@menu ap="dataimp" ac="dataimp" tx="menu-tools-dataimp"/>
			<@menu ap="ognleval" ac="ognleval" tx="menu-tools-ognleval"/>
		<#if assist.gaeSupport>
			<@menu ap="ndfsfile_" ac="ndfsfile_list" tx="menu-tools-ndfsfile"/>
		<#else>
			<@menu ap="pdf" ac="pdf" tx="menu-tools-html2pdf"/>
			<@menu ap="sqlexec" ac="sqlexec" tx="menu-tools-sqlexec"/>
		</#if>
			<@menu ap="error_" ac="error_input" tx="menu-tools-error"/>
			<@menu ap="outofmem_" ac="outofmem_input" tx="menu-tools-oom"/>
		</ul>
	</div>
</div>
