<html>
<head>
	<title><@p.text name="title-view"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<h3><@p.i icon="icon"/> <@p.text name="title-view"><@p.param name="title" value="#(title)"/></@p.text></h3>
	</div>

	<div class="p-toolbar-wrap"><ul class="p-toolbar">
		<li><@p.a icon="icon-refresh" href="javascript:location.reload(true)" label="#(button-refresh)"/>
</li><#if r?? && action.hasDataPermission(r, "~/print")><li><@p.a icon="icon-print" target="_blank" action="~/print"><@p.param name="id" value="%{r.id}"/><@p.text name='button-print'/></@p.a>
</li></#if><#if r??><li><@p.a icon="icon-pdf" target="_blank" action="/pdf"><@p.param name="url"><@p.url action="~/print" forceAddSchemeHostAndPort='true' escapeAmp='false'><@p.param name="id" value="%{r.id}"/></@p.url></@p.param><@p.text name='button-pdf'/></@p.a>
</li></#if><#if action.hasPermission("~/add")><li><@p.a icon="icon-add" action="~/add" label="#(button-add)"/>
</li></#if><#if action.hasPermission("~/list")><li><@p.a icon="icon-list" action="~/list" label="#(button-list)"/>
</li></#if>	</ul><div class="clearfix"></div></div>

	<#include "/action-alert.ftl"/>

<#if r??>
	<@p.form cssClass="p-vform" id="samplefile" initfocus="true" method="post" theme="bs3h">
	<#if a.displayField("id")>
			<@p.viewfield
				key="id"
				value="%{r.id}"
			/>
	</#if>
	<#if a.displayField("name")>
			<@p.viewfield
				key="name"
				value="%{r.name}"
			/>
	</#if>
	<#if a.displayField("fileField")>
			<@p.uploader
				key="fileField"
				value="%{r.fileField}"
				readonly="true"
			>
				<#if r?? && r.fileField?? && r.fileField.exist>
					<@p.param name="uploadAction"><@p.url action='fu' escapeAmp='false'></@p.url></@p.param>
					<@p.param name="uploadParam">file</@p.param>
					<@p.param name="dnloadAction"><@p.url action='fd' escapeAmp='false'></@p.url></@p.param>
					<@p.param name="dnloadParam">fn</@p.param>
					<@p.param name="defaultLink"><@p.url action='sf' escapeAmp='false'><@p.param name="id" value="%{r.id}"/></@p.url></@p.param>
					<@p.param name="defaultText"><@p.text name="label-attachment"/></@p.param>
				</#if>
			</@p.uploader>
	</#if>
	<#if a.displayField("imageField")>
			<@p.uploader
				key="imageField"
				value="%{r.imageField}"
				readonly="true"
			>
				<#if r?? && r.imageField?? && r.imageField.exist>
					<@p.param name="uploadAction"><@p.url action='iu' escapeAmp='false'></@p.url></@p.param>
					<@p.param name="uploadParam">image</@p.param>
					<@p.param name="dnloadAction"><@p.url action='id' escapeAmp='false'></@p.url></@p.param>
					<@p.param name="dnloadParam">fn</@p.param>
					<@p.param name="defaultLink"><@p.url action='si' escapeAmp='false'><@p.param name="id" value="%{r.id}"/></@p.url></@p.param>
					<@p.param name="defaultText"><@p.text name="label-attachment"/></@p.param>
				</#if>
			</@p.uploader>
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
