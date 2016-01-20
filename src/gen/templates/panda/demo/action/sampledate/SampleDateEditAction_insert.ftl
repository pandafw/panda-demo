<html>
<head>
	<title><@p.text name="title-insert"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<ol class="breadcrumb">
			<li><@p.i icon="icon"/> <@p.text name="title"/></li>
			<li class="active"><@p.text name="step-insert"/></li>
		</ol>
	</div>

	<div class="p-toolbar-wrap"><ul class="p-toolbar">
<#if action.hasPermission("~/list")><li><@p.a icon="icon-list" action="~/list" label="#(button-list)"/>
</li></#if>	</ul><div class="clearfix"></div></div>

	<#include "/action-alert.ftl"/>

	<@p.form cssClass="p-eform" id="sampledate" initfocus="true" method="post" theme="bs3h">
			<@p.viewfield
				key="id"
				value="%{r.id}"
			/>
			<@p.datetimepicker
				key="popupDatetimeField"
				value="%{r.popupDatetimeField}"
				format="datetime"
				maxlength="20"
				size="25"
			/>
			<@p.datepicker
				key="popupDateField"
				value="%{r.popupDateField}"
				format="date"
				maxlength="10"
				size="15"
			/>
			<@p.timepicker
				key="popupTimeField"
				value="%{r.popupTimeField}"
				format="time"
				maxlength="8"
				size="15"
			/>
			<@p.datetimepicker
				key="inlineDatetimeField"
				value="%{r.inlineDatetimeField}"
				format="datetime"
				maxlength="20"
				size="25"
				inline="true"
			/>
			<@p.datepicker
				key="inlineDateField"
				value="%{r.inlineDateField}"
				format="date"
				maxlength="10"
				size="15"
				inline="true"
			/>
			<@p.timepicker
				key="inlineTimeField"
				value="%{r.inlineTimeField}"
				format="time"
				maxlength="8"
				size="15"
				inline="true"
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
			"icon": "icon-insert-confirm",
			"action": "~/insert_confirm",
			"text": "button-insert-confirm"
		}]/>
	<#else>
		<#assign _buttons_ = _buttons_ + [{
			"icon": "icon-insert-execute",
			"action": "~/insert_execute",
			"text": "button-insert-execute"
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
