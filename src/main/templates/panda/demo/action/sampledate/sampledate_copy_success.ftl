<#-- This file was auto-generated by nuts.tools.codegen.FreemarkerGenerator  -->
<html>
<head>
	<title><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></title>
</head>
<body>

<div class="n-sect">
	<div class="n-sect-head">
		<ul class="n-toolbar">
		<#if action.hasDataPermission(d!, "sampledate_print")>
			<li><@p.a icon="icon-print" target="_blank" action="sampledate_print"><@s.param name="d.id" value="d.id"/><@p.text name='button-print'/></@p.a></li>
		</#if>
			<li><@p.a icon="icon-pdf-print" target="_blank" action="pdf" namespace="/">				<@s.param name="url"><@p.url action='sampledate_print' forceAddSchemeHostAndPort='true' escapeAmp='false'>
						<@s.param name="d.id" value="d.id"/>
				</@p.url></@s.param><@p.text name='button-pdf-print'/></@p.a></li>
		<#if action.hasPermission("sampledate_list")>
			<li><@p.a icon="icon-list" action="sampledate_list"><@p.text name='button-list'/></@p.a></li>
		</#if>
		</ul>
		<h3 class="n-sect-title"><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></h3>
	</div>
	<div class="n-sect-body">

		<#include "/panda/exts/struts2/views/action-prompt.ftl"/>

		<@p.form cssClass="n-sform" id="sampledate" method="post" theme="nxhtml">
			<@p.viewfield
				name="d.id"
				label="%{getText('copy-id', '')}"
			/>
			
			<@p.viewfield
				name="d.popupDatetimeField"
				format="datetime"
				label="%{getText('copy-popupDatetimeField', '')}"
			/>
			
			<@p.viewfield
				name="d.popupDateField"
				format="date"
				label="%{getText('copy-popupDateField', '')}"
			/>
			
			<@p.viewfield
				name="d.popupTimeField"
				format="time"
				label="%{getText('copy-popupTimeField', '')}"
			/>
			
			<@p.viewfield
				name="d.inlineDatetimeField"
				format="datetime"
				label="%{getText('copy-inlineDatetimeField', '')}"
			/>
			
			<@p.viewfield
				name="d.inlineDateField"
				format="date"
				label="%{getText('copy-inlineDateField', '')}"
			/>
			
			<@p.viewfield
				name="d.inlineTimeField"
				format="time"
				label="%{getText('copy-inlineTimeField', '')}"
			/>
			<#assign _buttons_ = [] />
			<#if action.hasDataPermission(d!, 'sampledate_update')>
				<@p.url var="_u_" action="sampledate_update" escapeAmp="false">
					<@s.param name="d.id" value="d.id"/>
				</@p.url>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-update",
					"onclick": "location.href='${_u_?js_string}'; return false;",
					"text": "button-update"
				}]/>
			</#if>
			<#if action.hasDataPermission(d!, 'sampledate_copy')>
				<@p.url var="_u_" action="sampledate_copy" escapeAmp="false">
					<@s.param name="d.id" value="d.id"/>
				</@p.url>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-copy",
					"onclick": "location.href='${_u_?js_string}'; return false;",
					"text": "button-copy"
				}]/>
			</#if>
			<#if action.hasPermission('sampledate_insert')>
				<@p.url var="_u_" action="sampledate_insert"/>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-insert",
					"onclick": "location.href='${_u_?js_string}'; return false;",
					"text": "button-insert"
				}]/>
			</#if>
			<#if action.hasDataPermission(d!, 'sampledate_delete')>
				<@p.url var="_u_" action="sampledate_delete" escapeAmp="false">
					<@s.param name="d.id" value="d.id"/>
				</@p.url>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-delete",
					"onclick": "location.href='${_u_?js_string}'; return false;",
					"text": "button-delete"
				}]/>
			</#if>
			<#if action.hasPermission('sampledate_list')>
				<@p.url var="_u_" action="sampledate_list"/>
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
