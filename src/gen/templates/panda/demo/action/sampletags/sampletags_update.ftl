<html>
<head>
	<title><@p.text name="title-update"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<h3><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></h3>
	</div>

	<ul class="p-toolbar">
	<#if action.hasPermission("sampletags_list")>
		<li><@p.a icon="icon-list" action="sampletags_list"><@p.text name='button-list'/></@p.a></li>
	</#if>
	</ul>


	<#include "/panda/exts/struts2/views/action-alert.ftl"/>

	<@p.form cssClass="n-eform" id="sampletags" initfocus="true" method="post" theme="bs3h">
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
			<@p.checkbox
				key="d.boolField"
			/>
			<@p.textfield
				key="d.intField"
				maxlength="14"
				size="16"
			/>
			<@p.textfield
				key="d.decField"
				maxlength="10"
				size="60"
			/>
			<@p.radio
				key="d.radioField"
				emptyOption="true"
				list="consts.radioMap"
			/>
			<@p.select
				key="d.selectField"
				emptyOption="true"
				list="consts.selectMap"
			/>
			<@p.checkboxlist
				key="d.checkField"
				emptyOption="true"
				list="consts.checkMap"
			/>
			<@p.datetimepicker
				key="d.datetimeField"
				format="datetime"
				maxlength="20"
				size="25"
			/>
			<@p.datepicker
				key="d.dateField"
				format="date"
				maxlength="10"
				size="15"
			/>
			<@p.timepicker
				key="d.timeField"
				format="time"
				maxlength="8"
				size="15"
			/>
			<@p.textarea
				key="d.htmlField"
				maxlength="4000"
				cols="60"
				rows="15"
				layout="html"
			/>
			<@p.textarea
				key="d.bbcodeField"
				maxlength="4000"
				cols="60"
				rows="15"
				layout="bbcode"
			/>
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
			"action": "sampletags_update_confirm",
			"text": "button-update-confirm"
		}]/>
	<#else>
		<#assign _buttons_ = _buttons_ + [{
			"icon": "icon-update-execute",
			"action": "sampletags_update_execute",
			"text": "button-update-execute"
		}]/>
	</#if>
			<#if action.hasPermission('sampletags_list')>
				<@p.url var="_u_" action="sampletags_list"/>
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
