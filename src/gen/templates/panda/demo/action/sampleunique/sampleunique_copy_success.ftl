<html>
<head>
	<title><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<h3><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></h3>
	</div>

	<ul class="p-toolbar">
	<#if action.hasDataPermission(d!, "sampleunique_print")>
		<li><@p.a icon="icon-print" target="_blank" action="sampleunique_print"><@s.param name="d.id" value="d.id"/><@p.text name='button-print'/></@p.a></li>
	</#if>
		<li><@p.a icon="icon-pdf-print" target="_blank" action="pdf" namespace="/">			<@s.param name="url"><@p.url action='sampleunique_print' forceAddSchemeHostAndPort='true' escapeAmp='false'>
					<@s.param name="d.id" value="d.id"/>
			</@p.url></@s.param><@p.text name='button-pdf-print'/></@p.a></li>
	<#if action.hasPermission("sampleunique_list")>
		<li><@p.a icon="icon-list" action="sampleunique_list"><@p.text name='button-list'/></@p.a></li>
	</#if>
	</ul>


	<#include "/panda/exts/struts2/views/action-alert.ftl"/>

	<@p.form cssClass="p-sform" id="sampleunique" initfocus="true" method="post" theme="bs3h">
			<@p.viewfield
				key="d.id"
			/>
			<@p.viewfield
				key="d.name"
			/>
			<@p.viewfield
				key="d.compositeUnique1"
			/>
			<@p.viewfield
				key="d.compositeUnique2"
			/>
			<#assign _buttons_ = [] />
			<#if action.hasDataPermission(d!, 'sampleunique_update')>
				<@p.url var="_u_" action="sampleunique_update" escapeAmp="false">
					<@s.param name="d.id" value="d.id"/>
				</@p.url>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-update",
					"onclick": "location.href='${_u_?js_string}'; return false;",
					"text": "button-update"
				}]/>
			</#if>
			<#if action.hasDataPermission(d!, 'sampleunique_copy')>
				<@p.url var="_u_" action="sampleunique_copy" escapeAmp="false">
					<@s.param name="d.id" value="d.id"/>
				</@p.url>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-copy",
					"onclick": "location.href='${_u_?js_string}'; return false;",
					"text": "button-copy"
				}]/>
			</#if>
			<#if action.hasPermission('sampleunique_insert')>
				<@p.url var="_u_" action="sampleunique_insert"/>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-insert",
					"onclick": "location.href='${_u_?js_string}'; return false;",
					"text": "button-insert"
				}]/>
			</#if>
			<#if action.hasDataPermission(d!, 'sampleunique_delete')>
				<@p.url var="_u_" action="sampleunique_delete" escapeAmp="false">
					<@s.param name="d.id" value="d.id"/>
				</@p.url>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-delete",
					"onclick": "location.href='${_u_?js_string}'; return false;",
					"text": "button-delete"
				}]/>
			</#if>
			<#if action.hasPermission('sampleunique_list')>
				<@p.url var="_u_" action="sampleunique_list"/>
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
