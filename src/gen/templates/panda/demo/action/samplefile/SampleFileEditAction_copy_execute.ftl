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
</li></#if><#if r??><li><@p.a icon="icon-pdf" target="_blank" action="/pdf"><@p.param name="url"><@p.url action='samplefile_pdf' forceAddSchemeHostAndPort='true' escapeAmp='false'><@p.param name="id" value="%{r.id}"/></@p.url></@p.param><@p.text name='button-pdf'/></@p.a>
</li></#if><#if action.hasPermission("~/list")><li><@p.a icon="icon-list" action="~/list"><@p.text name='button-list'/></@p.a>
</li></#if>	</ul><div class="clearfix"></div></div>

	<#include "/action-alert.ftl"/>

<#if r??>
	<@p.form cssClass="p-sform" id="samplefile" initfocus="true" method="post" theme="bs3h">
			<@p.viewfield
				key="id"
				value="%{r.id}"
			/>
			<@p.viewfield
				key="name"
				value="%{r.name}"
			/>
			<@p.uploader
				key="fileField"
				value="%{r.fileField}"
				readonly="true"
			>
				<@p.param name="uploadAction"><@p.url action='fu' escapeAmp='false'></@p.url></@p.param>
				<@p.param name="uploadParam">file</@p.param>
				<@p.param name="dnloadAction"><@p.url action='fd' escapeAmp='false'></@p.url></@p.param>
				<@p.param name="dnloadParam">fn</@p.param>
			</@p.uploader>
			<@p.uploader
				key="imageField"
				value="%{r.imageField}"
				readonly="true"
			>
				<@p.param name="uploadAction"><@p.url action='iu' escapeAmp='false'></@p.url></@p.param>
				<@p.param name="uploadParam">image</@p.param>
				<@p.param name="dnloadAction"><@p.url action='id' escapeAmp='false'></@p.url></@p.param>
				<@p.param name="dnloadParam">fn</@p.param>
			</@p.uploader>
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
