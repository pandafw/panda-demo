<html>
<head>
	<title><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<h3><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></h3>
	</div>

	<#include "/panda/exts/struts2/views/action-alert.ftl"/>

	<@p.form cssClass="p-cform" id="samplefile" initfocus="true" method="post" theme="bs3h">
			<@p.viewfield
				key="d.id"
			/>
			<@p.viewfield
				key="d.name"
			/>
			<@p.uploader
				key="d.fileField"
				disabled="${successMethodResult?string}"
				readonly="true"
			>
				<@s.param name="uploadAction"><@p.url action='fu' namespace='/images' escapeAmp='false'></@p.url></@s.param>
				<@s.param name="uploadParam">file</@s.param>
				<@s.param name="dnloadAction"><@p.url action='fd' namespace='/images' escapeAmp='false'></@p.url></@s.param>
				<@s.param name="dnloadParam">fn</@s.param>
				<@s.param name="defaultLink"><@p.url action='sf' namespace='/images' escapeAmp='false'><@s.param name="id" value="d.id"/></@p.url></@s.param>
				<@s.param name="defaultText"><@p.text name="label-attachment"/></@s.param>
			</@p.uploader>
			<@p.uploader
				key="d.imageField"
				disabled="${successMethodResult?string}"
				readonly="true"
			>
				<@s.param name="uploadAction"><@p.url action='iu' namespace='/images' escapeAmp='false'></@p.url></@s.param>
				<@s.param name="uploadParam">image</@s.param>
				<@s.param name="dnloadAction"><@p.url action='id' namespace='/images' escapeAmp='false'></@p.url></@s.param>
				<@s.param name="dnloadParam">fn</@s.param>
				<@s.param name="defaultLink"><@p.url action='si' namespace='/images' escapeAmp='false'><@s.param name="id" value="d.id"/></@p.url></@s.param>
				<@s.param name="defaultText"><@p.text name="label-attachment"/></@s.param>
			</@p.uploader>
		<#assign _buttons_ = [{
			"icon": "icon-delete-execute",
			"action": "samplefile_delete_execute",
			"text": "button-delete-execute"
		}]/>
			<#if action.hasPermission('samplefile_list')>
				<@p.url var="_u_" action="samplefile_list"/>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-list",
					"onclick": "location.href='${_u_?js_string}'; return false;",
					"text": "button-list"
				}]/>
			</#if>
			<#include "/panda/exts/struts2/views/form-buttons.ftl"/>
			<@form_buttons buttons=_buttons_/>
	</@p.form>
</div>

</body>
</html>
