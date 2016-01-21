<html>
<head>
	<title><@p.text name="title-copy"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<ol class="breadcrumb">
			<li><@p.i icon="icon"/> <@p.text name="title"/></li>
			<li><@p.text name="step-copy"/></li>
			<li class="active"><@p.text name="step-copy-success"/></li>
		</ol>
	</div>

	<div class="p-toolbar-wrap"><ul class="p-toolbar">
<#if r?? && action.hasDataPermission(r, "~/print")><li><@p.a icon="icon-print" target="_blank" action="~/print"><@p.param name="id" value="%{r.id}"/><@p.text name='button-print'/></@p.a>
</li></#if><#if r??><li><@p.a icon="icon-pdf" target="_blank" action="/pdf"><@p.param name="url"><@p.url action="~/print" forceAddSchemeHostAndPort='true' escapeAmp='false'><@p.param name="id" value="%{r.id}"/></@p.url></@p.param><@p.text name='button-pdf'/></@p.a>
</li></#if><#if action.hasPermission("~/list")><li><@p.a icon="icon-list" action="~/list" label="#(button-list)"/>
</li></#if>	</ul><div class="clearfix"></div></div>

	<#include "/action-alert.ftl"/>

<#if r??>
	<@p.form cssClass="p-sform" id="sampletags" initfocus="true" method="post" theme="bs3h">
			<@p.viewfield
				key="id"
				value="%{r.id}"
			/>
			<@p.viewfield
				key="styleField"
				value="%{r.styleField}"
				list="%{consts.styleMap}"
			/>
			<@p.viewfield
				key="name"
				value="%{r.name}"
			/>
			<@p.viewfield
				key="boolField"
				value="%{r.boolField}"
				format="check"
			/>
			<@p.viewfield
				key="intField"
				value="%{r.intField}"
			/>
			<@p.viewfield
				key="decField"
				value="%{r.decField}"
			/>
			<@p.viewfield
				key="radioField"
				value="%{r.radioField}"
				list="%{consts.radioMap}"
			/>
			<@p.viewfield
				key="selectField"
				value="%{r.selectField}"
				list="%{consts.selectMap}"
			/>
			<@p.viewfield
				key="checkField"
				value="%{r.checkField}"
				list="%{consts.checkMap}"
			/>
			<@p.viewfield
				key="datetimeField"
				value="%{r.datetimeField}"
				format="datetime"
			/>
			<@p.viewfield
				key="dateField"
				value="%{r.dateField}"
				format="date"
			/>
			<@p.viewfield
				key="timeField"
				value="%{r.timeField}"
				format="time"
			/>
			<@p.viewfield
				key="htmlField"
				value="%{r.htmlField}"
			/>
			<@p.viewfield
				key="bbcodeField"
				value="%{r.bbcodeField}"
			/>
			<@p.viewfield
				key="status"
				value="%{r.status}"
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
			<#if action.hasDataPermission(params!, '~/update')>
				<@p.url var="_u_" action="~/update" escapeAmp="false">
					<@p.param name="id" value="%{r.id}"/>
				</@p.url>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-update",
					"onclick": "location.href='${vars._u_?js_string}'; return false;",
					"text": "button-update"
				}]/>
			</#if>
			<#if action.hasDataPermission(params!, '~/copy')>
				<@p.url var="_u_" action="~/copy" escapeAmp="false">
					<@p.param name="id" value="%{r.id}"/>
				</@p.url>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-copy",
					"onclick": "location.href='${vars._u_?js_string}'; return false;",
					"text": "button-copy"
				}]/>
			</#if>
			<#if action.hasPermission('~/insert')>
				<@p.url var="_u_" action="~/insert"/>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-insert",
					"onclick": "location.href='${vars._u_?js_string}'; return false;",
					"text": "button-insert"
				}]/>
			</#if>
			<#if action.hasDataPermission(params!, '~/delete')>
				<@p.url var="_u_" action="~/delete" escapeAmp="false">
					<@p.param name="id" value="%{r.id}"/>
				</@p.url>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-delete",
					"onclick": "location.href='${vars._u_?js_string}'; return false;",
					"text": "button-delete"
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
</#if>
</div>

</body>
</html>
