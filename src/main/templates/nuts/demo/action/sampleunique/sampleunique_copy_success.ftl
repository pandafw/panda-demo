<#-- This file was auto-generated by nuts.tools.codegen.FreemarkerGenerator  -->
<html>
<head>
	<title><@n.text name="title-${actionResult}"><@s.param><@n.text name="title"/></@s.param></@n.text></title>
</head>
<body>

<div class="n-sect">
	<div class="n-sect-head">
		<ul class="n-toolbar">
		<#if action.hasDataPermission(d!, "sampleunique_print")>
			<li><@n.a icon="icon-print" target="_blank" action="sampleunique_print"><@s.param name="d.id" value="d.id"/><@n.text name='button-print'/></@n.a></li>
		</#if>
			<li><@n.a icon="icon-pdf-print" target="_blank" action="pdf" namespace="/">				<@s.param name="url"><@n.url action='sampleunique_print' forceAddSchemeHostAndPort='true' escapeAmp='false'>
						<@s.param name="d.id" value="d.id"/>
				</@n.url></@s.param><@n.text name='button-pdf-print'/></@n.a></li>
		<#if action.hasPermission("sampleunique_list")>
			<li><@n.a icon="icon-list" action="sampleunique_list"><@n.text name='button-list'/></@n.a></li>
		</#if>
		</ul>
		<h3 class="n-sect-title"><@n.text name="title-${actionResult}"><@s.param><@n.text name="title"/></@s.param></@n.text></h3>
	</div>
	<div class="n-sect-body">

		<#include "/nuts/exts/struts2/views/action-prompt.ftl"/>

		<@n.form cssClass="n-sform" id="sampleunique" method="post" theme="nxhtml">
			<@n.viewfield
				name="d.id"
				label="%{getText('copy-id', '')}"
			/>
			
			<@n.viewfield
				name="d.name"
				label="%{getText('copy-name', '')}"
			/>
			
			<@n.viewfield
				name="d.compositeUnique1"
				label="%{getText('copy-compositeUnique1', '')}"
			/>
			
			<@n.viewfield
				name="d.compositeUnique2"
				label="%{getText('copy-compositeUnique2', '')}"
			/>
			<#assign _buttons_ = [] />
			<#if action.hasDataPermission(d!, 'sampleunique_update')>
				<@n.url var="_u_" action="sampleunique_update" escapeAmp="false">
					<@s.param name="d.id" value="d.id"/>
				</@n.url>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-update",
					"onclick": "location.href='${_u_?js_string}'; return false;",
					"text": "button-update"
				}]/>
			</#if>
			<#if action.hasDataPermission(d!, 'sampleunique_copy')>
				<@n.url var="_u_" action="sampleunique_copy" escapeAmp="false">
					<@s.param name="d.id" value="d.id"/>
				</@n.url>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-copy",
					"onclick": "location.href='${_u_?js_string}'; return false;",
					"text": "button-copy"
				}]/>
			</#if>
			<#if action.hasPermission('sampleunique_insert')>
				<@n.url var="_u_" action="sampleunique_insert"/>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-insert",
					"onclick": "location.href='${_u_?js_string}'; return false;",
					"text": "button-insert"
				}]/>
			</#if>
			<#if action.hasDataPermission(d!, 'sampleunique_delete')>
				<@n.url var="_u_" action="sampleunique_delete" escapeAmp="false">
					<@s.param name="d.id" value="d.id"/>
				</@n.url>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-delete",
					"onclick": "location.href='${_u_?js_string}'; return false;",
					"text": "button-delete"
				}]/>
			</#if>
			<#if action.hasPermission('sampleunique_list')>
				<@n.url var="_u_" action="sampleunique_list"/>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-list",
					"onclick": "location.href='${_u_?js_string}'; return false;",
					"text": "button-list"
				}]/>
			</#if>
			<#include "/nuts/exts/struts2/views/form-buttons.ftl"/>
			<@form_buttons buttons=_buttons_/>
		</@n.form>
	</div>
</div>

</body>
</html>
