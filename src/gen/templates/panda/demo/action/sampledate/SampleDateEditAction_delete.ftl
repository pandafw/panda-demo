<html>
<head>
	<title><@p.text name="title-delete"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<ol class="breadcrumb">
			<li><@p.i icon="icon"/> <@p.text name="title"/></li>
			<li><@p.text name="step-delete"/></li>
			<li class="active"><@p.text name="step-delete-confirm"/></li>
		</ol>
	</div>
<#if text.getText("well-delete", "")?has_content>
	<div class="p-well"><@p.text name="well-delete"/></div>
</#if>


	<#include "/action-alert.ftl"/>

<#if r??>
	<@p.form cssClass="p-cform" id="sampledate" initfocus="true" method="post" theme="bs3h">
	<#if a.displayField("id")>
			<@p.viewfield
				key="id"
				value="%{r.id}"
			/>
	</#if>
	<#if a.displayField("popupDatetimeField")>
			<@p.viewfield
				key="popupDatetimeField"
				value="%{r.popupDatetimeField}"
				format="datetime"
			/>
	</#if>
	<#if a.displayField("popupDateField")>
			<@p.viewfield
				key="popupDateField"
				value="%{r.popupDateField}"
				format="date"
			/>
	</#if>
	<#if a.displayField("popupTimeField")>
			<@p.viewfield
				key="popupTimeField"
				value="%{r.popupTimeField}"
				format="time"
			/>
	</#if>
	<#if a.displayField("inlineDatetimeField")>
			<@p.viewfield
				key="inlineDatetimeField"
				value="%{r.inlineDatetimeField}"
				format="datetime"
			/>
	</#if>
	<#if a.displayField("inlineDateField")>
			<@p.viewfield
				key="inlineDateField"
				value="%{r.inlineDateField}"
				format="date"
			/>
	</#if>
	<#if a.displayField("inlineTimeField")>
			<@p.viewfield
				key="inlineTimeField"
				value="%{r.inlineTimeField}"
				format="time"
			/>
	</#if>
	<#if a.displayField("status")>
			<@p.viewfield
				key="status"
				value="%{r.status}"
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
		<#assign _buttons_ = [{
			"icon": "icon-delete-execute",
			"action": "~/delete_execute",
			"text": "button-delete-execute"
		}]/>
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
<#else>
	<div class="p-tcenter">
		<@p.a btn="default" icon="back" href="#" onclick="window.history.back();return false;" label="#(button-back)"/>
	</div>
</#if>
</div>

</body>
</html>
