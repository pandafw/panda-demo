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
<#if action.hasPermission("~/list")><li><@p.a icon="icon-list" action="~/list" label="#(button-list)"/>
</li></#if>	</ul><div class="clearfix"></div></div>

	<#include "/action-alert.ftl"/>

	<@p.form cssClass="p-eform" id="sampletags" initfocus="true" method="post" theme="bs3h">
	<#if a.displayField("id")>
			<@p.viewfield
				key="id"
				value="%{r.id}"
			/>
	</#if>
	<#if a.displayField("styleField")>
			<@p.radio
				key="styleField"
				value="%{r.styleField}"
				emptyOption="true"
				list="%{consts.styleMap}"
			/>
	</#if>
	<#if a.displayField("name")>
			<@p.textfield
				key="name"
				value="%{r.name}"
				required="true"
				maxlength="100"
				size="60"
			/>
	</#if>
	<#if a.displayField("boolField")>
			<@p.checkbox
				key="boolField"
				value="%{r.boolField}"
				fieldValue="true"
			/>
	</#if>
	<#if a.displayField("intField")>
			<@p.textfield
				key="intField"
				value="%{r.intField}"
				maxlength="14"
				size="16"
			/>
	</#if>
	<#if a.displayField("decField")>
			<@p.textfield
				key="decField"
				value="%{r.decField}"
				maxlength="10"
				size="60"
			/>
	</#if>
	<#if a.displayField("radioField")>
			<@p.radio
				key="radioField"
				value="%{r.radioField}"
				emptyOption="true"
				list="%{consts.radioMap}"
			/>
	</#if>
	<#if a.displayField("selectField")>
			<@p.select
				key="selectField"
				value="%{r.selectField}"
				emptyOption="true"
				list="%{consts.selectMap}"
			/>
	</#if>
	<#if a.displayField("checkField")>
			<@p.checkboxlist
				key="checkField"
				value="%{r.checkField}"
				emptyOption="true"
				list="%{consts.checkMap}"
			/>
	</#if>
	<#if a.displayField("datetimeField")>
			<@p.datetimepicker
				key="datetimeField"
				value="%{r.datetimeField}"
				format="datetime"
				maxlength="20"
				size="25"
			/>
	</#if>
	<#if a.displayField("dateField")>
			<@p.datepicker
				key="dateField"
				value="%{r.dateField}"
				format="date"
				maxlength="10"
				size="15"
			/>
	</#if>
	<#if a.displayField("timeField")>
			<@p.timepicker
				key="timeField"
				value="%{r.timeField}"
				format="time"
				maxlength="8"
				size="15"
			/>
	</#if>
	<#if a.displayField("htmlField")>
			<@p.textarea
				key="htmlField"
				value="%{r.htmlField}"
				maxlength="4000"
				cols="60"
				rows="15"
				layout="html"
			/>
	</#if>
	<#if a.displayField("bbcodeField")>
			<@p.textarea
				key="bbcodeField"
				value="%{r.bbcodeField}"
				maxlength="4000"
				cols="60"
				rows="15"
				layout="bbcode"
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
	<#if action.getTextAsBoolean('ui-input-confirm', false)>
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
