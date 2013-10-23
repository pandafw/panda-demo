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

		<@n.form cssClass="n-eform" id="samplefile" method="post" theme="nxhtml">
		
			<@n.viewfield
				name="d.id"
				label="%{getText('copy-id', '')}"
			/>
		
			<@n.textfield
				name="d.name"
				required="true"
				maxlength="100"
				size="60"
				label="%{getText('copy-name', '')}"
				tooltip="%{getText('copy-name-tip', '')}"
			/>
		
			<@n.uploader
				name="d.fileField"
				size="30"
				label="%{getText('copy-fileField', '')}"
				tooltip="%{getText('copy-fileField-tip', '')}"
			>
				<@s.param name="uploadAction"><@n.url action='fu' namespace='/images' escapeAmp='false'></@n.url></@s.param>
				<@s.param name="uploadParam">file</@s.param>
				<@s.param name="dnloadAction"><@n.url action='fd' namespace='/images' escapeAmp='false'></@n.url></@s.param>
				<@s.param name="dnloadParam">fn</@s.param>
			</@n.uploader>
		
			<@n.uploader
				name="d.imageField"
				size="30"
				label="%{getText('copy-imageField', '')}"
				tooltip="%{getText('copy-imageField-tip', '')}"
			>
				<@s.param name="uploadAction"><@n.url action='iu' namespace='/images' escapeAmp='false'></@n.url></@s.param>
				<@s.param name="uploadParam">image</@s.param>
				<@s.param name="dnloadAction"><@n.url action='id' namespace='/images' escapeAmp='false'></@n.url></@s.param>
				<@s.param name="dnloadParam">fn</@s.param>
			</@n.uploader>
			<#assign _buttons_ = [] />
		<#if action.getTextAsBoolean('ui-input-confirm', false)>
			<#assign _buttons_ = _buttons_ + [{
				"icon": "icon-copy-confirm",
				"action": "samplefile_copy_confirm",
				"text": "button-copy-confirm"
			}]/>
		<#else>
			<#assign _buttons_ = _buttons_ + [{
				"icon": "icon-copy-execute",
				"action": "samplefile_copy_execute",
				"text": "button-copy-execute"
			}]/>
		</#if>
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

		<script type="text/javascript"><!--
		--></script>
	</div>
</div>

</body>
</html>
