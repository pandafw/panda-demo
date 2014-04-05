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
	<#if action.hasPermission("sampledate_list")>
		<li><@p.a icon="icon-list" action="sampledate_list"><@p.text name='button-list'/></@p.a></li>
	</#if>
	</ul>


	<#include "/panda/exts/struts2/views/action-alert.ftl"/>

	<@p.form cssClass="p-eform" id="sampledate" initfocus="true" method="post" theme="bs3h">
			<@p.viewfield
				key="d.id"
			/>
			<@p.datetimepicker
				key="d.popupDatetimeField"
				format="datetime"
				maxlength="20"
				size="25"
			/>
			<@p.datepicker
				key="d.popupDateField"
				format="date"
				maxlength="10"
				size="15"
			/>
			<@p.timepicker
				key="d.popupTimeField"
				format="time"
				maxlength="8"
				size="15"
			/>
			<@p.datetimepicker
				key="d.inlineDatetimeField"
				format="datetime"
				maxlength="20"
				size="25"
				inline="true"
			/>
			<@p.datepicker
				key="d.inlineDateField"
				format="date"
				maxlength="10"
				size="15"
				inline="true"
			/>
			<@p.timepicker
				key="d.inlineTimeField"
				format="time"
				maxlength="8"
				size="15"
				inline="true"
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
			"icon": "icon-copy-confirm",
			"action": "sampledate_copy_confirm",
			"text": "button-copy-confirm"
		}]/>
	<#else>
		<#assign _buttons_ = _buttons_ + [{
			"icon": "icon-copy-execute",
			"action": "sampledate_copy_execute",
			"text": "button-copy-execute"
		}]/>
	</#if>
			<#if action.hasPermission('sampledate_list')>
				<@p.url var="_u_" action="sampledate_list"/>
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
