<html>
<head>
	<title><@p.text name="title-copy"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<h3><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></h3>
	</div>

	<ul class="p-toolbar">
	<#if action.hasDataPermission(d!, "samplefile_print")>
		<li><@p.a icon="icon-print" target="_blank" action="samplefile_print"><@s.param name="d.id" value="d.id"/><@p.text name='button-print'/></@p.a></li>
	</#if>
		<li><@p.a icon="icon-pdf-print" target="_blank" action="pdf" namespace="/">			<@s.param name="url"><@p.url action='samplefile_print' forceAddSchemeHostAndPort='true' escapeAmp='false'>
					<@s.param name="d.id" value="d.id"/>
			</@p.url></@s.param><@p.text name='button-pdf-print'/></@p.a></li>
	<#if action.hasPermission("samplefile_list")>
		<li><@p.a icon="icon-list" action="samplefile_list"><@p.text name='button-list'/></@p.a></li>
	</#if>
	</ul>


	<#include "/panda/exts/struts2/views/action-alert.ftl"/>

	<@p.form cssClass="p-sform" id="samplefile" initfocus="true" method="post" theme="bs3h">
			<@p.viewfield
				key="d.id"
			/>
			<@p.viewfield
				key="d.name"
			/>
			<@p.uploader
				key="d.fileField"
				readonly="true"
			>
				<@s.param name="uploadAction"><@p.url action='fu' namespace='/images' escapeAmp='false'></@p.url></@s.param>
				<@s.param name="uploadParam">file</@s.param>
				<@s.param name="dnloadAction"><@p.url action='fd' namespace='/images' escapeAmp='false'></@p.url></@s.param>
				<@s.param name="dnloadParam">fn</@s.param>
			</@p.uploader>
			<@p.uploader
				key="d.imageField"
				readonly="true"
			>
				<@s.param name="uploadAction"><@p.url action='iu' namespace='/images' escapeAmp='false'></@p.url></@s.param>
				<@s.param name="uploadParam">image</@s.param>
				<@s.param name="dnloadAction"><@p.url action='id' namespace='/images' escapeAmp='false'></@p.url></@s.param>
				<@s.param name="dnloadParam">fn</@s.param>
			</@p.uploader>
			<@p.viewfield
				key="d.status"
				list="consts.dataStatusMap"
			/>
			<@p.viewfield
				key="d.cusid"
			/>
			<@p.viewfield
				key="d.cusnm"
			/>
			<@p.viewfield
				key="d.ctime"
				format="datetime"
			/>
			<@p.viewfield
				key="d.uusid"
			/>
			<@p.viewfield
				key="d.uusnm"
			/>
			<@p.viewfield
				key="d.utime"
				format="datetime"
			/>
			<#assign _buttons_ = [] />
			<#if action.hasDataPermission(d!, 'samplefile_update')>
				<@p.url var="_u_" action="samplefile_update" escapeAmp="false">
					<@s.param name="d.id" value="d.id"/>
				</@p.url>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-update",
					"onclick": "location.href='${_u_?js_string}'; return false;",
					"text": "button-update"
				}]/>
			</#if>
			<#if action.hasDataPermission(d!, 'samplefile_copy')>
				<@p.url var="_u_" action="samplefile_copy" escapeAmp="false">
					<@s.param name="d.id" value="d.id"/>
				</@p.url>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-copy",
					"onclick": "location.href='${_u_?js_string}'; return false;",
					"text": "button-copy"
				}]/>
			</#if>
			<#if action.hasPermission('samplefile_insert')>
				<@p.url var="_u_" action="samplefile_insert"/>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-insert",
					"onclick": "location.href='${_u_?js_string}'; return false;",
					"text": "button-insert"
				}]/>
			</#if>
			<#if action.hasDataPermission(d!, 'samplefile_delete')>
				<@p.url var="_u_" action="samplefile_delete" escapeAmp="false">
					<@s.param name="d.id" value="d.id"/>
				</@p.url>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-delete",
					"onclick": "location.href='${_u_?js_string}'; return false;",
					"text": "button-delete"
				}]/>
			</#if>
			<#if action.hasPermission('samplefile_list')>
				<@p.url var="_u_" action="samplefile_list"/>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-list",
					"onclick": "location.href='${_u_?js_string}'; return false;",
					"text": "button-list"
				}]/>
			</#if>
			<#include "/panda/exts/struts2/views/form-buttons.ftl"/>
			<@form_buttons buttons=_buttons_/>
	</@p.form>
</div>

</body>
</html>
