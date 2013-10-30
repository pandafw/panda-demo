<#-- This file was auto-generated by nuts.tools.codegen.FreemarkerGenerator  -->
<html>
<head>
	<title><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<ul class="p-toolbar">
		<#if action.hasPermission("sampleunique_list")>
			<li><@p.a icon="icon-list" action="sampleunique_list"><@p.text name='button-list'/></@p.a></li>
		</#if>
		</ul>
		<h3 class="p-title"><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></h3>
	</div>
	<div class="n-sect-body">
		<#include "/panda/exts/struts2/views/action-alert.ftl"/>

		<@p.form cssClass="n-cform" id="sampleunique" method="post" theme="bs3">
			<@p.viewfield
				name="d.id"
				label="%{getText('delete-id', '')}"
			/>
			
			<@p.viewfield
				name="d.name"
				label="%{getText('delete-name', '')}"
			/>
			
			<@p.viewfield
				name="d.compositeUnique1"
				label="%{getText('delete-compositeUnique1', '')}"
			/>
			
			<@p.viewfield
				name="d.compositeUnique2"
				label="%{getText('delete-compositeUnique2', '')}"
			/>
			<#assign _buttons_ = [{
				"icon": "icon-delete-execute",
				"action": "sampleunique_delete_execute",
				"text": "button-delete-execute"
			}]/>
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
</div>

</body>
</html>
