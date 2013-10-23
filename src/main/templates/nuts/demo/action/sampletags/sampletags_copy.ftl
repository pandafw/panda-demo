<#-- This file was auto-generated by nuts.tools.codegen.FreemarkerGenerator  -->
<html>
<head>
	<title><@n.text name="title-${actionResult}"><@s.param><@n.text name="title"/></@s.param></@n.text></title>
</head>
<body>

<div class="n-sect">
	<div class="n-sect-head">
		<ul class="n-toolbar">
		<#if action.hasPermission("sampletags_list")>
			<li><@n.a icon="icon-list" action="sampletags_list"><@n.text name='button-list'/></@n.a></li>
		</#if>
		</ul>
		<h3 class="n-sect-title"><@n.text name="title-${actionResult}"><@s.param><@n.text name="title"/></@s.param></@n.text></h3>
	</div>
	<div class="n-sect-body">

		<#include "/nuts/exts/struts2/views/action-prompt.ftl"/>

		<@n.form cssClass="n-eform" id="sampletags" method="post" theme="nxhtml">
		
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
		
			<@n.checkbox
				name="d.boolField"
				label="%{getText('copy-boolField', '')}"
				tooltip="%{getText('copy-boolField-tip', '')}"
			/>
		
			<@n.textfield
				name="d.intField"
				maxlength="14"
				size="16"
				label="%{getText('copy-intField', '')}"
				tooltip="%{getText('copy-intField-tip', '')}"
			/>
		
			<@n.textfield
				name="d.decField"
				maxlength="10"
				size="60"
				label="%{getText('copy-decField', '')}"
				tooltip="%{getText('copy-decField-tip', '')}"
			/>
		
			<@n.radio
				name="d.radioField"
				emptyOption="true"
				list="consts.radioMap"
				label="%{getText('copy-radioField', '')}"
				tooltip="%{getText('copy-radioField-tip', '')}"
			/>
		
			<@n.select
				name="d.selectField"
				emptyOption="true"
				list="consts.selectMap"
				label="%{getText('copy-selectField', '')}"
				tooltip="%{getText('copy-selectField-tip', '')}"
			/>
		
			<@n.checkboxlist
				name="d.checkField"
				emptyOption="true"
				list="consts.checkMap"
				label="%{getText('copy-checkField', '')}"
				tooltip="%{getText('copy-checkField-tip', '')}"
			/>
		
			<@n.datetimepicker
				name="d.datetimeField"
				format="datetime"
				maxlength="20"
				size="25"
				label="%{getText('copy-datetimeField', '')}"
				tooltip="%{getText('copy-datetimeField-tip', '')}"
			/>
		
			<@n.datepicker
				name="d.dateField"
				format="date"
				maxlength="10"
				size="15"
				label="%{getText('copy-dateField', '')}"
				tooltip="%{getText('copy-dateField-tip', '')}"
			/>
		
			<@n.timepicker
				name="d.timeField"
				format="time"
				maxlength="8"
				size="15"
				label="%{getText('copy-timeField', '')}"
				tooltip="%{getText('copy-timeField-tip', '')}"
			/>
		
			<@n.textarea
				name="d.htmlField"
				maxlength="4000"
				cols="60"
				rows="15"
				layout="html"
				label="%{getText('copy-htmlField', '')}"
				tooltip="%{getText('copy-htmlField-tip', '')}"
			/>
		
			<@n.textarea
				name="d.bbcodeField"
				maxlength="4000"
				cols="60"
				rows="15"
				layout="bbcode"
				label="%{getText('copy-bbcodeField', '')}"
				tooltip="%{getText('copy-bbcodeField-tip', '')}"
			/>
			<#assign _buttons_ = [] />
		<#if action.getTextAsBoolean('ui-input-confirm', false)>
			<#assign _buttons_ = _buttons_ + [{
				"icon": "icon-copy-confirm",
				"action": "sampletags_copy_confirm",
				"text": "button-copy-confirm"
			}]/>
		<#else>
			<#assign _buttons_ = _buttons_ + [{
				"icon": "icon-copy-execute",
				"action": "sampletags_copy_execute",
				"text": "button-copy-execute"
			}]/>
		</#if>
			<#if action.hasPermission('sampletags_list')>
				<@n.url var="_u_" action="sampletags_list"/>
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
