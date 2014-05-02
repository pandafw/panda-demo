<#assign _an_ = assist.actionName!/>
<#assign _au_ = assist.requestURI!/>
<#macro navi ap ac tx>
		<li<#if _an_?starts_with(ap)> class="active"</#if>><@p.a action=ac namespace="/"><@p.text name=tx/></@p.a></li>
</#macro>
<#macro navih ah tx tg>
		<li<#if _au_ = ah> class="active"</#if>><@p.a href=ah target=tg><@p.text name=tx/></@p.a></li>
</#macro>

<div id="navi_sample" class="panel panel-info">
	<div class="panel-heading">
		<i class="fa fa-bookmark"></i> 
		<@p.a id="navi_sample" href="${base}/sample.ftl"><@p.text name="navi-sample"/></@p.a>
	</div>
	<div class="panel-body">
		<ul class="nav nav-stacked">
			<@navi ap="sampletags_" ac="sampletags_list" tx="navi-sample-tags"/>
			<@navi ap="sampledate_" ac="sampledate_list" tx="navi-sample-date"/>
			<@navi ap="samplefile_" ac="samplefile_list" tx="navi-sample-file"/>
			<@navi ap="samplejoin_" ac="samplejoin_list" tx="navi-sample-join"/>
			<@navi ap="sampleunique_" ac="sampleunique_list" tx="navi-sample-unique"/>
		</ul>
	</div>
</div>

<div id="navi_tools" class="panel panel-danger">
	<div class="panel-heading">
		<i class="fa fa-gear"></i> 
		<@p.text name="navi-tools"/>
	</div>
	<div class="panel-body">
		<ul class="nav nav-stacked">
			<@navi ap="cronjobs" ac="cronjobs" tx="navi-tools-cronjobs"/>
			<@navi ap="dataimp" ac="dataimp" tx="navi-tools-dataimp"/>
			<@navi ap="ognleval" ac="ognleval" tx="navi-tools-ognleval"/>
		<#if assist.gaeSupport>
			<@navi ap="ndfsfile_" ac="ndfsfile_list" tx="navi-tools-ndfsfile"/>
		<#else>
			<@navi ap="pdf" ac="pdf" tx="navi-tools-html2pdf"/>
			<@navi ap="sqlexec" ac="sqlexec" tx="navi-tools-sqlexec"/>
		</#if>
			<@navi ap="error_" ac="error_input" tx="navi-tools-error"/>
			<@navi ap="outofmem_" ac="outofmem_input" tx="navi-tools-oom"/>
			<@navi ap="softref_" ac="softref_input" tx="navi-tools-softref"/>
			<@navi ap="weakref_" ac="weakref_input" tx="navi-tools-weakref"/>
		</ul>
	</div>
</div>
