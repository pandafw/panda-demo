<#-- This file was auto-generated by nuts.tools.codegen.FreemarkerGenerator  -->
<html>
<head>
	<title><@n.text name="title-${actionResult}"><@s.param><@n.text name="title"/></@s.param></@n.text></title>
</head>
<body>

<div class="n-sect">
	<div class="n-sect-head">
		<ul class="n-toolbar">
		<#if action.hasPermission("samplefile_list")>
			<li><@n.a icon="icon-list" action="samplefile_list"><@n.text name='button-list'/></@n.a></li>
		</#if>
		</ul>
		<h3 class="n-sect-title"><@n.text name="title-${actionResult}"><@s.param><@n.text name="title"/></@s.param></@n.text></h3>
	</div>
	<div class="n-sect-body">

		<#include "/nuts/exts/struts2/views/action-prompt.ftl"/>

		<@n.form cssClass="n-sform" id="samplefile" method="post" theme="nxhtml">
			<@n.viewfield
				name="d.id"
				label="%{getText('delete-id', '')}"
			/>
			
			<@n.viewfield
				name="d.name"
				label="%{getText('delete-name', '')}"
			/>
			<@n.uploader
				name="d.fileField"
				disabled="${successMethodResult?string}"
				readonly="true"
				label="%{getText('delete-fileField', '')}"
			>
				<@s.param name="uploadAction"><@n.url action='fu' namespace='/images' escapeAmp='false'></@n.url></@s.param>
				<@s.param name="uploadParam">file</@s.param>
				<@s.param name="dnloadAction"><@n.url action='fd' namespace='/images' escapeAmp='false'></@n.url></@s.param>
				<@s.param name="dnloadParam">fn</@s.param>
				<@s.param name="defaultLink"><@n.url action='sf' namespace='/images' escapeAmp='false'><@s.param name="id" value="d.id"/></@n.url></@s.param>
				<@s.param name="defaultText"><@n.text name="label-attachment"/></@s.param>
			</@n.uploader>
			<@n.uploader
				name="d.imageField"
				disabled="${successMethodResult?string}"
				readonly="true"
				label="%{getText('delete-imageField', '')}"
			>
				<@s.param name="uploadAction"><@n.url action='iu' namespace='/images' escapeAmp='false'></@n.url></@s.param>
				<@s.param name="uploadParam">image</@s.param>
				<@s.param name="dnloadAction"><@n.url action='id' namespace='/images' escapeAmp='false'></@n.url></@s.param>
				<@s.param name="dnloadParam">fn</@s.param>
				<@s.param name="defaultLink"><@n.url action='si' namespace='/images' escapeAmp='false'><@s.param name="id" value="d.id"/></@n.url></@s.param>
				<@s.param name="defaultText"><@n.text name="label-attachment"/></@s.param>
			</@n.uploader>
			<#assign _buttons_ = [] />
			<#if action.hasPermission('samplefile_list')>
				<@n.url var="_u_" action="samplefile_list"/>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-list",
					"onclick": "location.href='${_u_?js_string}'; return false;",
					"text": "button-list"
				}]/>
			</#if>
			<#include "/nuts/exts/struts2/views/form-buttons.ftl"/>
			<@form_buttons buttons=_buttons_/>
		</@n.form>
	</div>
</div>

</body>
</html>
