<#-- This file was auto-generated by nuts.tools.codegen.FreemarkerGenerator  -->
<html>
<head>
	<title><@n.text name="title-${actionResult}"><@s.param><@n.text name="title"/></@s.param></@n.text></title>
</head>
<body>

<div class="n-sect">
	<div class="n-sect-head">
		<ul class="n-toolbar">
		<#if action.hasDataPermission(d!, "sampledate_print")>
			<li><@n.a icon="icon-print" target="_blank" action="sampledate_print"><@s.param name="d.id" value="d.id"/><@n.text name='button-print'/></@n.a></li>
		</#if>
			<li><@n.a icon="icon-pdf-print" target="_blank" action="pdf" namespace="/">				<@s.param name="url"><@n.url action='sampledate_print' forceAddSchemeHostAndPort='true' escapeAmp='false'>
						<@s.param name="d.id" value="d.id"/>
				</@n.url></@s.param><@n.text name='button-pdf-print'/></@n.a></li>
		<#if action.hasPermission("sampledate_list")>
			<li><@n.a icon="icon-list" action="sampledate_list"><@n.text name='button-list'/></@n.a></li>
		</#if>
		</ul>
		<h3 class="n-sect-title"><@n.text name="title-${actionResult}"><@s.param><@n.text name="title"/></@s.param></@n.text></h3>
	</div>
	<div class="n-sect-body">

		<#include "/nuts/exts/struts2/views/action-prompt.ftl"/>

		<@n.form cssClass="n-sform" id="sampledate" method="post" theme="nxhtml">
			<@n.viewfield
				name="d.id"
				label="%{getText('update-id', '')}"
			/>
			
			<@n.viewfield
				name="d.popupDatetimeField"
				format="datetime"
				label="%{getText('update-popupDatetimeField', '')}"
			/>
			
			<@n.viewfield
				name="d.popupDateField"
				format="date"
				label="%{getText('update-popupDateField', '')}"
			/>
			
			<@n.viewfield
				name="d.popupTimeField"
				format="time"
				label="%{getText('update-popupTimeField', '')}"
			/>
			
			<@n.viewfield
				name="d.inlineDatetimeField"
				format="datetime"
				label="%{getText('update-inlineDatetimeField', '')}"
			/>
			
			<@n.viewfield
				name="d.inlineDateField"
				format="date"
				label="%{getText('update-inlineDateField', '')}"
			/>
			
			<@n.viewfield
				name="d.inlineTimeField"
				format="time"
				label="%{getText('update-inlineTimeField', '')}"
			/>
			<#assign _buttons_ = [] />
			<#if action.hasDataPermission(d!, 'sampledate_update')>
				<@n.url var="_u_" action="sampledate_update" escapeAmp="false">
					<@s.param name="d.id" value="d.id"/>
				</@n.url>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-update",
					"onclick": "location.href='${_u_?js_string}'; return false;",
					"text": "button-update"
				}]/>
			</#if>
			<#if action.hasDataPermission(d!, 'sampledate_copy')>
				<@n.url var="_u_" action="sampledate_copy" escapeAmp="false">
					<@s.param name="d.id" value="d.id"/>
				</@n.url>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-copy",
					"onclick": "location.href='${_u_?js_string}'; return false;",
					"text": "button-copy"
				}]/>
			</#if>
			<#if action.hasPermission('sampledate_insert')>
				<@n.url var="_u_" action="sampledate_insert"/>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-insert",
					"onclick": "location.href='${_u_?js_string}'; return false;",
					"text": "button-insert"
				}]/>
			</#if>
			<#if action.hasDataPermission(d!, 'sampledate_delete')>
				<@n.url var="_u_" action="sampledate_delete" escapeAmp="false">
					<@s.param name="d.id" value="d.id"/>
				</@n.url>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-delete",
					"onclick": "location.href='${_u_?js_string}'; return false;",
					"text": "button-delete"
				}]/>
			</#if>
			<#if action.hasPermission('sampledate_list')>
				<@n.url var="_u_" action="sampledate_list"/>
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
