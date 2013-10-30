<#-- This file was auto-generated by nuts.tools.codegen.FreemarkerGenerator  -->
<html>
<head>
	<title><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<ul class="p-toolbar">
			<li><@p.a icon="icon-refresh" href="javascript:location.reload(true)"><@p.text name='button-refresh'/></@p.a></li>
		<#if action.hasDataPermission(d!, "samplejoin_print")>
			<li><@p.a icon="icon-print" target="_blank" action="samplejoin_print"><@s.param name="d.id" value="d.id"/><@p.text name='button-print'/></@p.a></li>
		</#if>
			<li><@p.a icon="icon-pdf-print" target="_blank" action="pdf" namespace="/">				<@s.param name="url"><@p.url action='samplejoin_print' forceAddSchemeHostAndPort='true' escapeAmp='false'>
						<@s.param name="d.id" value="d.id"/>
				</@p.url></@s.param><@p.text name='button-pdf-print'/></@p.a></li>
		<#if action.hasPermission("samplejoin_list")>
			<li><@p.a icon="icon-list" action="samplejoin_list"><@p.text name='button-list'/></@p.a></li>
		</#if>
		</ul>
		<h3 class="p-title"><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></h3>
	</div>
	<div class="n-sect-body">
		<#include "/panda/exts/struts2/views/action-alert.ftl"/>

		<@p.form cssClass="n-vform" id="samplejoin" method="post" theme="bs3">
			<@p.viewfield
				name="d.id"
				label="%{getText('view-id', '')}"
			/>
			
			<@p.viewfield
				name="d.tagsId"
				label="%{getText('view-tagsId', '')}"
			/>
			<@p.viewfield
				name="d.tagsName"
				label="%{getText('view-tagsName', '')}"
			/>
			
			<@p.viewfield
				name="d.fileId"
				label="%{getText('view-fileId', '')}"
			/>
			<@p.viewfield
				name="d.fileName"
				label="%{getText('view-fileName', '')}"
			/>
			<#assign _buttons_ = [] />
			<#if action.hasDataPermission(d!, 'samplejoin_update')>
				<@p.url var="_u_" action="samplejoin_update" escapeAmp="false">
					<@s.param name="d.id" value="d.id"/>
				</@p.url>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-update",
					"onclick": "location.href='${_u_?js_string}'; return false;",
					"text": "button-update"
				}]/>
			</#if>
			<#if action.hasDataPermission(d!, 'samplejoin_copy')>
				<@p.url var="_u_" action="samplejoin_copy" escapeAmp="false">
					<@s.param name="d.id" value="d.id"/>
				</@p.url>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-copy",
					"onclick": "location.href='${_u_?js_string}'; return false;",
					"text": "button-copy"
				}]/>
			</#if>
			<#if action.hasPermission('samplejoin_insert')>
				<@p.url var="_u_" action="samplejoin_insert"/>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-insert",
					"onclick": "location.href='${_u_?js_string}'; return false;",
					"text": "button-insert"
				}]/>
			</#if>
			<#if action.hasDataPermission(d!, 'samplejoin_delete')>
				<@p.url var="_u_" action="samplejoin_delete" escapeAmp="false">
					<@s.param name="d.id" value="d.id"/>
				</@p.url>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-delete",
					"onclick": "location.href='${_u_?js_string}'; return false;",
					"text": "button-delete"
				}]/>
			</#if>
			<#if action.hasPermission('samplejoin_list')>
				<@p.url var="_u_" action="samplejoin_list"/>
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
</div>

</body>
</html>
