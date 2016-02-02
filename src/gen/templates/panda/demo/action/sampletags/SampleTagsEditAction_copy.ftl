<html>
<head>
	<title><@p.text name="title-copy"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<ol class="breadcrumb">
			<li><@p.i icon="icon"/> <@p.text name="title"/></li>
			<li class="active"><@p.text name="step-copy"/></li>
		</ol>
	</div>

	<div class="p-toolbar-wrap"><ul class="p-toolbar">
<#if action.hasPermission("~/list")><li><@p.a icon="icon-list" action="~/list" label="#(button-list)"/>
</li></#if>	</ul><div class="clearfix"></div></div>

	<#include "/action-alert.ftl"/>

	<@p.form cssClass="p-eform" id="sampletags" initfocus="true" method="post" theme="bs3h">
			<@p.viewfield
				key="id"
				value="%{r.id}"
			/>
			<@p.radio
				key="styleField"
				value="%{r.styleField}"
				emptyOption="true"
				list="%{consts.styleMap}"
			/>
			<@p.textfield
				key="name"
				value="%{r.name}"
				required="true"
				maxlength="100"
				size="60"
			/>
			<@p.checkbox
				key="boolField"
				value="%{r.boolField}"
			/>
			<@p.textfield
				key="intField"
				value="%{r.intField}"
				maxlength="14"
				size="16"
			/>
			<@p.textfield
				key="decField"
				value="%{r.decField}"
				maxlength="10"
				size="60"
			/>
			<@p.radio
				key="radioField"
				value="%{r.radioField}"
				emptyOption="true"
				list="%{consts.radioMap}"
			/>
			<@p.select
				key="selectField"
				value="%{r.selectField}"
				emptyOption="true"
				list="%{consts.selectMap}"
			/>
			<@p.checkboxlist
				key="checkField"
				value="%{r.checkField}"
				emptyOption="true"
				list="%{consts.checkMap}"
			/>
			<@p.datetimepicker
				key="datetimeField"
				value="%{r.datetimeField}"
				format="datetime"
				maxlength="20"
				size="25"
			/>
			<@p.datepicker
				key="dateField"
				value="%{r.dateField}"
				format="date"
				maxlength="10"
				size="15"
			/>
			<@p.timepicker
				key="timeField"
				value="%{r.timeField}"
				format="time"
				maxlength="8"
				size="15"
			/>
			<@p.textarea
				key="htmlField"
				value="%{r.htmlField}"
				maxlength="4000"
				cols="60"
				rows="15"
				layout="html"
			/>
			<@p.textarea
				key="bbcodeField"
				value="%{r.bbcodeField}"
				maxlength="4000"
				cols="60"
				rows="15"
				layout="bbcode"
			/>
			<@p.radio
				key="status"
				value="%{r.status}"
				emptyOption="true"
				list="%{consts.dataStatusMap}"
			/>
			<@p.viewfield
				key="cusid"
				value="%{r.cusid}"
			/>
			<@p.viewfield
				key="cusnm"
				value="%{r.cusnm}"
			/>
			<@p.viewfield
				key="ctime"
				value="%{r.ctime}"
				format="datetime"
			/>
			<@p.viewfield
				key="uusid"
				value="%{r.uusid}"
			/>
			<@p.viewfield
				key="uusnm"
				value="%{r.uusnm}"
			/>
			<@p.viewfield
				key="utime"
				value="%{r.utime}"
				format="datetime"
			/>
		<#assign _buttons_ = [] />
	<#if action.getTextAsBoolean('ui-input-confirm', false)>
		<#assign _buttons_ = _buttons_ + [{
			"icon": "icon-copy-confirm",
			"action": "~/copy_confirm",
			"text": "button-copy-confirm"
		}]/>
	<#else>
		<#assign _buttons_ = _buttons_ + [{
			"icon": "icon-copy-execute",
			"action": "~/copy_execute",
			"text": "button-copy-execute"
		}]/>
	</#if>
			<#if action.hasPermission('~/list')>
				<@p.url var="_u_" action="~/list"/>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-list",
					"onclick": "location.href='${vars._u_?js_string}'; return false;",
					"text": "button-list"
				}]/>
			</#if>
			<#include "/panda/mvc/view/form-buttons.ftl"/>
			<@form_buttons buttons=_buttons_/>
	</@p.form>

		<script type="text/javascript"><!--
		
			function onPageLoad() {
			}
		--></script>
</div>

</body>
</html>
