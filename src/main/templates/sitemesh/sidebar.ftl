<#macro navi ap ac tx>
		<li<#if path?starts_with(ap)> class="active"</#if>><@p.a action=ac><@p.text name=tx/></@p.a></li>
</#macro>
<#macro navih ah tx tg>
		<li<#if _au_ = ah> class="active"</#if>><@p.a href=ah target=tg><@p.text name=tx/></@p.a></li>
</#macro>

<div id="navi_sample" class="panel panel-info side-navi">
	<div class="panel-heading">
		<i class="fa fa-bookmark"></i> 
		<@p.a id="navi_sample" href="${base}/sample.ftl"><@p.text name="navi-sample"/></@p.a>
	</div>
	<div class="panel-body">
		<ul class="nav nav-stacked">
			<@navi ap="/sampletags/" ac="/sampletags/list" tx="navi-sample-tags"/>
			<@navi ap="/sampledate/" ac="/sampledate/list" tx="navi-sample-date"/>
			<@navi ap="/samplefile/" ac="/samplefile/list" tx="navi-sample-file"/>
			<@navi ap="/samplejoin/" ac="/samplejoin/list" tx="navi-sample-join"/>
			<@navi ap="/sampleunique/" ac="/sampleunique/list" tx="navi-sample-unique"/>
		</ul>
	</div>
</div>

<div id="navi_tools" class="panel panel-danger side-navi">
	<div class="panel-heading">
		<i class="fa fa-gear"></i> 
		<@p.text name="navi-tools"/>
	</div>
	<div class="panel-body">
		<ul class="nav nav-stacked">
			<@navi ap="/admin/crons" ac="/admin/crons" tx="navi-admin-system-crons"/>
			<@navi ap="/admin/dataimp" ac="/admin/dataimp" tx="navi-admin-system-dataimp"/>
			<@navi ap="/admin/html2pdf" ac="/admin/html2pdf" tx="navi-admin-system-html2pdf"/>
			<@navi ap="/admin/el" ac="/admin/el" tx="navi-admin-system-eleval"/>
			<@navi ap="/admin/ndfsfile/" ac="/admin/ndfsfile/list" tx="navi-admin-system-ndfsfile"/>
		<#if !assist.gaeSupport>
			<@navi ap="/admin/sql" ac="/admin/sql" tx="navi-admin-system-sqlexec"/>
		</#if>
			<@navi ap="/error" ac="/error" tx="navi-tools-error"/>
			<@navi ap="/oom" ac="/oom" tx="navi-tools-oom"/>
			<@navi ap="/softref" ac="/softref" tx="navi-tools-softref"/>
			<@navi ap="/weakref" ac="/weakref" tx="navi-tools-weakref"/>
		</ul>
	</div>
</div>
