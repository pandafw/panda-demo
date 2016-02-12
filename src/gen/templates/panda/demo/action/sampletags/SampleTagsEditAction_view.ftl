<html>
<head>
	<title><@p.text name="title-view"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<h3><@p.i icon="icon"/> <@p.text name="title-view"><@p.param name="title" value="#(title)"/></@p.text></h3>
	</div>
<#if text.getText("well-view", "")?has_content>
	<div class="p-well"><@p.text name="well-view"/></div>
</#if>


	<div class="p-toolbar-wrap"><ul class="p-toolbar">
		<li><@p.a icon="icon-refresh" href="javascript:location.reload(true)" label="#(button-refresh)"/>
</li><#if r?? && action.hasDataPermission(r, "~/print")><li><@p.a icon="icon-print" target="_blank" action="~/print"><@p.param name="id" value="%{r.id}"/><@p.text name='button-print'/></@p.a>
</li></#if><#if r??><li><@p.a icon="icon-pdf" target="_blank" action="/pdf"><@p.param name="url"><@p.url action="~/print" forceAddSchemeHostAndPort='true' escapeAmp='false'><@p.param name="id" value="%{r.id}"/></@p.url></@p.param><@p.text name='button-pdf'/></@p.a>
</li></#if><#if action.hasPermission("~/add")><li><@p.a icon="icon-add" action="~/add" label="#(button-add)"/>
</li></#if><#if action.hasPermission("~/list")><li><@p.a icon="icon-list" action="~/list" label="#(button-list)"/>
</li></#if>	</ul><div class="clearfix"></div></div>

	<#include "/action-alert.ftl"/>

<#if r??>
	<@p.form cssClass="p-vform" id="sampletags" initfocus="true" method="post" theme="bs3h">
	<#if a.displayField("id")>
			<@p.viewfield
				key="id"
				value="%{r.id}"
			/>
	</#if>
	<#if a.displayField("styleField")>
			<@p.viewfield
				key="styleField"
				value="%{r.styleField}"
				list="%{consts.styleMap}"
			/>
	</#if>
	<#if a.displayField("name")>
			<@p.viewfield
				key="name"
				value="%{r.name}"
			/>
	</#if>
	<#if a.displayField("boolField")>
			<@p.viewfield
				key="boolField"
				value="%{r.boolField}"
				format="check"
				fieldValue="true"
			/>
	</#if>
	<#if a.displayField("intField")>
			<@p.viewfield
				key="intField"
				value="%{r.intField}"
			/>
	</#if>
	<#if a.displayField("decField")>
			<@p.viewfield
				key="decField"
				value="%{r.decField}"
			/>
	</#if>
	<#if a.displayField("radioField")>
			<@p.viewfield
				key="radioField"
				value="%{r.radioField}"
				list="%{consts.radioMap}"
			/>
	</#if>
	<#if a.displayField("selectField")>
			<@p.viewfield
				key="selectField"
				value="%{r.selectField}"
				list="%{consts.selectMap}"
			/>
	</#if>
	<#if a.displayField("checkField")>
			<@p.viewfield
				key="checkField"
				value="%{r.checkField}"
				list="%{consts.checkMap}"
			/>
	</#if>
	<#if a.displayField("datetimeField")>
			<@p.viewfield
				key="datetimeField"
				value="%{r.datetimeField}"
				format="datetime"
			/>
	</#if>
	<#if a.displayField("dateField")>
			<@p.viewfield
				key="dateField"
				value="%{r.dateField}"
				format="date"
			/>
	</#if>
	<#if a.displayField("timeField")>
			<@p.viewfield
				key="timeField"
				value="%{r.timeField}"
				format="time"
			/>
	</#if>
	<#if a.displayField("htmlField")>
			<@p.viewfield
				key="htmlField"
				value="%{r.htmlField}"
			/>
	</#if>
	<#if a.displayField("bbcodeField")>
			<@p.viewfield
				key="bbcodeField"
				value="%{r.bbcodeField}"
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
			<#assign _buttons_ = [] />
			<#if action.hasPermission('~/list')>
				<@p.url var="_u_" action="~/list"/>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-list",
					"onclick": "location.href='${vars._u_?js_string}'; return false;",
					"text": "button-list"
				}]/>
			</#if>
			<#if r?? && action.hasDataPermission(r, '~/edit')>
				<@p.url var="_u_" action="~/edit" escapeAmp="false">
					<@p.param name="id" value="%{r.id}"/>
				</@p.url>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-edit",
					"onclick": "location.href='${vars._u_?js_string}'; return false;",
					"text": "button-edit"
				}]/>
			</#if>
			<#if r?? && action.hasDataPermission(r, '~/copy')>
				<@p.url var="_u_" action="~/copy" escapeAmp="false">
					<@p.param name="id" value="%{r.id}"/>
				</@p.url>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-copy",
					"onclick": "location.href='${vars._u_?js_string}'; return false;",
					"text": "button-copy"
				}]/>
			</#if>
			<#if r?? && action.hasDataPermission(r, '~/delete')>
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
<#else>
	<div class="p-tcenter">
		<@p.a btn="default" icon="back" href="#" onclick="window.history.back();return false;" label="#(button-back)"/>
	</div>
</#if>
</div>

</body>
</html>
