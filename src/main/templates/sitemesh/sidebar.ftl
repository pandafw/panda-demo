<#macro navi ap ac tx>
		<li<#if path?starts_with(ap)> class="active"</#if>><@p.a action=ac><@p.text name=tx/></@p.a></li>
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

<div id="navi_tools" class="panel panel-warning side-navi">
	<div class="panel-heading">
		<i class="fa fa-gear"></i> 
		<@p.text name="navi-tools"/>
	</div>
	<div class="panel-body">
		<ul class="nav nav-stacked">
			<@navi ap="/error" ac="/error" tx="navi-tools-error"/>
			<@navi ap="/oom" ac="/oom" tx="navi-tools-oom"/>
			<@navi ap="/softref" ac="/softref" tx="navi-tools-softref"/>
			<@navi ap="/weakref" ac="/weakref" tx="navi-tools-weakref"/>
			<@navi ap="/unicode" ac="/unicode.html" tx="navi-tools-unicode"/>
			<@navi ap="/mfupd" ac="/mfupd" tx="navi-tools-multifileupload"/>
		</ul>
	</div>
</div>

<div id="navi_super" class="panel panel-danger side-navi">
	<div class="panel-heading">
		<i class="fa fa-gear"></i> <@p.text name="navi-super"/>
	</div>
	<div class="panel-body">
		<ul class="nav nav-stacked">
			<@navi ap="/super/loadtask" ac="/super/loadtask" tx="navi-super-loadtask"/>
		<#if assist.databaseResourceLoader>
			<@navs ap="/super/resource/" ac="/super/resource/list" tx="navi-super-resource"/>
		</#if>
		<#if assist.databaseTemplateLoader>
			<@navs ap="/super/template/" ac="/super/template/list" tx="navi-super-template"/>
		</#if>
			<@navi ap="/super/crons" ac="/super/crons" tx="navi-super-crons"/>
			<@navi ap="/super/dataimp" ac="/super/dataimp" tx="navi-super-dataimp"/>
			<@navi ap="/super/html2pdf" ac="/super/html2pdf" tx="navi-super-html2pdf"/>
			<@navi ap="/super/el" ac="/super/el" tx="navi-super-eleval"/>
			<@navi ap="/super/filepool/" ac="/super/filepool/list" tx="navi-super-filepool"/>
		<#if !assist.gaeSupport>
			<@navi ap="/super/sql" ac="/super/sql" tx="navi-super-sqlexec"/>
		</#if>
			<@navi ap="/super/sysdump" ac="/super/sysdump" tx="navi-super-sysdump"/>
		</ul>
	</div>
</div><!-- end of navi_super -->
