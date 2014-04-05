<html>
<head>
	<title><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<h3><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></h3>
	</div>

	<ul class="p-toolbar">
	<#if action.hasPermission("samplefile_list")>
		<li><@p.a icon="icon-list" action="samplefile_list"><@p.text name='button-list'/></@p.a></li>
	</#if>
	</ul>


	<#include "/panda/exts/struts2/views/action-alert.ftl"/>

	<@p.form cssClass="n-eform" id="samplefile" initfocus="true" method="post" theme="bs3h">
			<@p.viewfield
				key="d.id"
				required="true"
			/>
			<@p.textfield
				key="d.name"
				required="true"
				maxlength="100"
				size="60"
			/>
			<@p.uploader
				key="d.fileField"
				size="30"
			>
				<@s.param name="uploadAction"><@p.url action='fu' namespace='/images' escapeAmp='false'></@p.url></@s.param>
				<@s.param name="uploadParam">file</@s.param>
				<@s.param name="dnloadAction"><@p.url action='fd' namespace='/images' escapeAmp='false'></@p.url></@s.param>
				<@s.param name="dnloadParam">fn</@s.param>
				<#if d?? && d.fileField?? && d.fileField.exist>
					<@s.param name="defaultLink"><@p.url action='sf' namespace='/images' escapeAmp='false'><@s.param name="id" value="d.id"/></@p.url></@s.param>
				</#if>
				<@s.param name="defaultText"><@p.text name="label-attachment"/></@s.param>
			</@p.uploader>
			<@p.uploader
				key="d.imageField"
				size="30"
			>
				<@s.param name="uploadAction"><@p.url action='iu' namespace='/images' escapeAmp='false'></@p.url></@s.param>
				<@s.param name="uploadParam">image</@s.param>
				<@s.param name="dnloadAction"><@p.url action='id' namespace='/images' escapeAmp='false'></@p.url></@s.param>
				<@s.param name="dnloadParam">fn</@s.param>
				<#if d?? && d.imageField?? && d.imageField.exist>
					<@s.param name="defaultLink"><@p.url action='si' namespace='/images' escapeAmp='false'><@s.param name="id" value="d.id"/></@p.url></@s.param>
				</#if>
				<@s.param name="defaultText"><@p.text name="label-attachment"/></@s.param>
			</@p.uploader>
			<@p.radio
				key="d.status"
				emptyOption="true"
				list="consts.dataStatusMap"
			/>
			<@p.viewfield
				key="d.cusid"
			/>
			<@p.viewfield
				key="d.cusnm"
			/>
			<@p.viewfield
				key="d.ctime"
				format="datetime"
			/>
			<@p.viewfield
				key="d.uusid"
			/>
			<@p.viewfield
				key="d.uusnm"
			/>
			<@p.viewfield
				key="d.utime"
				format="datetime"
			/>
		<#assign _buttons_ = [] />
	<#if action.getTextAsBoolean('ui-input-confirm', false)>
		<#assign _buttons_ = _buttons_ + [{
			"icon": "icon-update-confirm",
			"action": "samplefile_update_confirm",
			"text": "button-update-confirm"
		}]/>
	<#else>
		<#assign _buttons_ = _buttons_ + [{
			"icon": "icon-update-execute",
			"action": "samplefile_update_execute",
			"text": "button-update-execute"
		}]/>
	</#if>
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

		<script type="text/javascript"><!--
				--></script>
</div>

</body>
</html>
