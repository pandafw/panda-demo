<html>
<head>
	<title><@p.text name="title-add"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<ol class="breadcrumb">
			<li><@p.i icon="icon"/> <@p.text name="title"/></li>
			<li class="active"><@p.text name="step-add"/></li>
		</ol>
	</div>
<#if text.getText("well-add", "")?has_content>
	<div class="p-well"><@p.text name="well-add"/></div>
</#if>


	<div class="p-toolbar-wrap"><ul class="p-toolbar">
<#if a.hasPermission("~/list")><li><@p.a icon="icon-list" action="~/list" label="#(button-list)"/>
</li></#if>	</ul><div class="clearfix"></div></div>

	<#include "/action-alert.ftl"/>

	<@p.form cssClass="p-eform" id="sampledate" initfocus="true" method="post" theme="bs3h">
	<#if a.displayField("id")>
			<@p.viewfield
				key="id"
				value="%{r.id}"
			/>
	</#if>
	<#if a.displayField("popupDatetimeField")>
			<@p.datetimepicker
				key="popupDatetimeField"
				value="%{r.popupDatetimeField}"
				format="datetime"
				maxlength="20"
				size="25"
			/>
	</#if>
	<#if a.displayField("popupDateField")>
			<@p.datepicker
				key="popupDateField"
				value="%{r.popupDateField}"
				format="date"
				maxlength="10"
				size="15"
			/>
	</#if>
	<#if a.displayField("popupTimeField")>
			<@p.timepicker
				key="popupTimeField"
				value="%{r.popupTimeField}"
				format="time"
				maxlength="8"
				size="15"
			/>
	</#if>
	<#if a.displayField("inlineDatetimeField")>
			<@p.datetimepicker
				key="inlineDatetimeField"
				value="%{r.inlineDatetimeField}"
				format="datetime"
				maxlength="20"
				size="25"
				inline="true"
			/>
	</#if>
	<#if a.displayField("inlineDateField")>
			<@p.datepicker
				key="inlineDateField"
				value="%{r.inlineDateField}"
				format="date"
				maxlength="10"
				size="15"
				inline="true"
			/>
	</#if>
	<#if a.displayField("inlineTimeField")>
			<@p.timepicker
				key="inlineTimeField"
				value="%{r.inlineTimeField}"
				format="time"
				maxlength="8"
				size="15"
				inline="true"
			/>
	</#if>
	<#if a.displayField("status")>
			<@p.radio
				key="status"
				value="%{r.status}"
				emptyOption="true"
				list="%{consts.dataStatusMap}"
			/>
	</#if>
	<#if a.displayField("cusid")>
			<@p.viewfield
				key="cusid"
				value="%{r.cusid}"
			/>
	</#if>
	<#if a.displayField("cusnm")>
			<@p.viewfield
				key="cusnm"
				value="%{r.cusnm}"
			/>
	</#if>
	<#if a.displayField("ctime")>
			<@p.viewfield
				key="ctime"
				value="%{r.ctime}"
				format="datetime"
			/>
	</#if>
	<#if a.displayField("uusid")>
			<@p.viewfield
				key="uusid"
				value="%{r.uusid}"
			/>
	</#if>
	<#if a.displayField("uusnm")>
			<@p.viewfield
				key="uusnm"
				value="%{r.uusnm}"
			/>
	</#if>
	<#if a.displayField("utime")>
			<@p.viewfield
				key="utime"
				value="%{r.utime}"
				format="datetime"
			/>
	</#if>
		<#assign _buttons_ = [] />
	<#if a.inputConfirm>
		<#assign _buttons_ = _buttons_ + [{
			"icon": "icon-add-confirm",
			"action": "~/add_confirm",
			"text": "button-add-confirm"
		}]/>
	<#else>
		<#assign _buttons_ = _buttons_ + [{
			"icon": "icon-add-execute",
			"action": "~/add_execute",
			"text": "button-add-execute"
		}]/>
	</#if>
			<#if a.hasPermission('~/list')>
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