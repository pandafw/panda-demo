<#assign _an_ = assist.actionName!/>
<#assign _au_ = assist.requestURI!/>
<#macro menu ap ac tx>
		<li<#if _an_?starts_with(ap)> class="active"</#if>><@p.a action=ac namespace="/"><@p.text name=tx/></@p.a></li>
</#macro>
<#macro menuh ah tx tg>
		<li<#if _au_ = ah> class="active"</#if>><@p.a href=ah target=tg><@p.text name=tx/></@p.a></li>
</#macro>

<ul class="nav">
	<li>Panda</li>
		<@menuh ah="${base}/" tx="menu-index" tg=""/>
		<li<#if _au_ = "${base}/codegen.ftl"> class="active"</#if>><@p.a id="menu_codegen" href="${base}/codegen.ftl"><@p.text name="navi-codegen"/></@p.a></li>
		<@menuh ah="${base}/screenshot.ftl" tx="navi-screenshot" tg=""/>
		<@menuh ah="http://code.google.com/p/nutsfw/downloads" tx="navi-download" tg="_blank"/>
		<@menuh ah="http://code.google.com/p/nutsfw/source/browse" tx="navi-source" tg="_blank"/>
		<@menuh ah="http://code.google.com/p/nutsfw/w" tx="navi-wiki" tg="_blank"/>
		<@menuh ah="http://groups.google.com/group/nutsfw" tx="navi-forum" tg="_blank"/>
		
	<li><@p.text name="menu-sample"/></li>
		<li<#if _au_ = "${base}/sample.ftl"> class="active"</#if>><@p.a id="menu_sample" href="${base}/sample.ftl"><@p.text name="menu-sample"/></@p.a></li>
		<@menu ap="sampletags_" ac="sampletags_list" tx="menu-sample-tags"/>
		<@menu ap="sampledate_" ac="sampledate_list" tx="menu-sample-date"/>
		<@menu ap="samplefile_" ac="samplefile_list" tx="menu-sample-file"/>
		<@menu ap="samplejoin_" ac="samplejoin_list" tx="menu-sample-join"/>
		<@menu ap="sampleunique_" ac="sampleunique_list" tx="menu-sample-unique"/>
		
	<li><@p.text name="menu-tools"/></li>
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
