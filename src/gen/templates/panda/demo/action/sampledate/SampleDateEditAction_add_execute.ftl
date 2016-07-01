<html>
<head>
	<title><@p.text name="title-add"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<ol class="breadcrumb">
			<li><@p.i icon="icon"/> <@p.text name="title"/></li>
			<li><@p.text name="step-add"/></li>
			<li class="active"><@p.text name="step-add-success"/></li>
		</ol>
	</div>
<#assign _well = a.getText("well-add-success", "")/>
<#if _well?has_content>
	<div class="p-well">${_well}</div>
</#if>


	<div class="p-toolbar-wrap"><ul class="p-toolbar">
<#if r?? && a.canAccessData("~/print", r)><li><@p.a icon="icon-print" label="#(button-print)" target="_blank" action="~/print"><@p.param name="id" value="%{r.id}"/></@p.a>
</li></#if><#if r??><li><@p.a icon="icon-pdf" label="#(button-pdf)" target="_blank" action="/pdf"><@p.param name="url"><@p.url action="~/print" forceAddSchemeHostAndPort='true' escapeAmp='false'><@p.param name="id" value="%{r.id}"/></@p.url></@p.param></@p.a>
</li></#if><#if a.canAccess("~/add")><li><@p.a icon="icon-new" action="~/add" label="#(button-new)"/>
</li></#if><#if a.canAccess("~/list")><li><@p.a icon="icon-list" action="~/list" label="#(button-list)"/>
</li></#if>	</ul><div class="clearfix"></div></div>

	<#include "/action-alert.ftl"/>

<#if r??>
	<@p.form cssClass="p-sform" id="sampledate" initfocus="true" method="post" theme="bs3h">
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
			<@p.hidden
				name="status"
				value="%{r.status}"
			/>
	</#if>
	<#if a.displayField("cusid")>
			<@p.hidden
				name="cusid"
				value="%{r.cusid}"
			/>
	</#if>
	<#if a.displayField("cusnm")>
			<@p.hidden
				name="cusnm"
				value="%{r.cusnm}"
			/>
	</#if>
	<#if a.displayField("ctime")>
			<@p.hidden
				name="ctime"
				value="%{r.ctime}"
			/>
	</#if>
	<#if a.displayField("uusid")>
			<@p.hidden
				name="uusid"
				value="%{r.uusid}"
			/>
	</#if>
	<#if a.displayField("uusnm")>
			<@p.hidden
				name="uusnm"
				value="%{r.uusnm}"
			/>
	</#if>
	<#if a.displayField("utime")>
			<@p.hidden
				name="utime"
				value="%{r.utime}"
			/>
	</#if>
			<#assign _buttons_ = [] />
			<#if a.canAccess('~/list')>
				<@p.url var="_u_" action="~/list"/>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-list",
					"onclick": "location.href='${vars._u_?js_string}'; return false;",
					"text": "button-list"
				}]/>
			</#if>
			<#if r?? && a.canAccessData('~/edit', r)>
				<@p.url var="_u_" action="~/edit" escapeAmp="false">
					<@p.param name="id" value="%{r.id}"/>
				</@p.url>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-edit",
					"onclick": "location.href='${vars._u_?js_string}'; return false;",
					"text": "button-edit"
				}]/>
			</#if>
			<#if r?? && a.canAccessData('~/copy', r)>
				<@p.url var="_u_" action="~/copy" escapeAmp="false">
					<@p.param name="id" value="%{r.id}"/>
				</@p.url>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-copy",
					"onclick": "location.href='${vars._u_?js_string}'; return false;",
					"text": "button-copy"
				}]/>
			</#if>
			<#if r?? && a.canAccessData('~/delete', r)>
				<@p.url var="_u_" action="~/delete" escapeAmp="false">
					<@p.param name="id" value="%{r.id}"/>
				</@p.url>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-delete",
					"onclick": "location.href='${vars._u_?js_string}'; return false;",
					"text": "button-delete"
				}]/>
			</#if>
			<#include "/panda/mvc/view/form-buttons.ftl"/>
			<@form_buttons buttons=_buttons_/>
	</@p.form>
</#if>
</div>

</body>
</html>
