<#-- This file was auto-generated by nuts.tools.codegen.FreemarkerGenerator  -->
<html>
<head>
	<title><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></title>
</head>
<body>

<div class="n-sect">
	<div class="n-sect-head">
		<ul class="n-toolbar">
		<#if action.hasPermission("samplefile_list")>
			<li><@p.a icon="icon-list" action="samplefile_list"><@p.text name='button-list'/></@p.a></li>
		</#if>
		</ul>
		<h3 class="n-sect-title"><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></h3>
	</div>
	<div class="n-sect-body">

		<#include "/panda/exts/struts2/views/action-prompt.ftl"/>

		<@p.form cssClass="n-cform" id="samplefile" method="post" theme="nxhtml">
			<@p.viewfield
				name="d.id"
				label="%{getText('copy-id', '')}"
			/>
			
			<@p.viewfield
				name="d.name"
				label="%{getText('copy-name', '')}"
			/>
			<@p.uploader
				name="d.fileField"
				disabled="${successMethodResult?string}"
				readonly="true"
				label="%{getText('copy-fileField', '')}"
			>
				<@s.param name="uploadAction"><@p.url action='fu' namespace='/images' escapeAmp='false'></@p.url></@s.param>
				<@s.param name="uploadParam">file</@s.param>
				<@s.param name="dnloadAction"><@p.url action='fd' namespace='/images' escapeAmp='false'></@p.url></@s.param>
				<@s.param name="dnloadParam">fn</@s.param>
			</@p.uploader>
			<@p.uploader
				name="d.imageField"
				disabled="${successMethodResult?string}"
				readonly="true"
				label="%{getText('copy-imageField', '')}"
			>
				<@s.param name="uploadAction"><@p.url action='iu' namespace='/images' escapeAmp='false'></@p.url></@s.param>
				<@s.param name="uploadParam">image</@s.param>
				<@s.param name="dnloadAction"><@p.url action='id' namespace='/images' escapeAmp='false'></@p.url></@s.param>
				<@s.param name="dnloadParam">fn</@s.param>
			</@p.uploader>
			<@p.submit icon="icon-copy-execute" action="samplefile_copy_execute" group="start"><@p.text name="button-copy-execute"/></@p.submit>
			<@p.submit icon="icon-back" action="samplefile_copy_input" group="end"><@p.text name="button-back"/></@p.submit>
		</@p.form>
	</div>
</div>

</body>
</html>
