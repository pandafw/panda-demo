<#-- This file was auto-generated by nuts.tools.codegen.FreemarkerGenerator  -->
<html>
<head>
	<title><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></title>
</head>
<body>

<div class="n-sect">
	<div class="n-sect-head">
		<ul class="n-toolbar">
		<#if action.hasPermission("sampleunique_list")>
			<li><@p.a icon="icon-list" action="sampleunique_list"><@p.text name='button-list'/></@p.a></li>
		</#if>
		</ul>
		<h3 class="n-sect-title"><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></h3>
	</div>
	<div class="n-sect-body">

		<#include "/panda/exts/struts2/views/action-prompt.ftl"/>

		<@p.form cssClass="n-eform" id="sampleunique" method="post" theme="nxhtml">
		
			<@p.viewfield
				name="d.id"
				label="%{getText('insert-id', '')}"
			/>
		
			<@p.textfield
				name="d.name"
				required="true"
				maxlength="100"
				size="60"
				label="%{getText('insert-name', '')}"
				tooltip="%{getText('insert-name-tip', '')}"
			/>
		
			<@p.textfield
				name="d.compositeUnique1"
				required="true"
				maxlength="10"
				size="60"
				label="%{getText('insert-compositeUnique1', '')}"
				tooltip="%{getText('insert-compositeUnique1-tip', '')}"
			/>
		
			<@p.textfield
				name="d.compositeUnique2"
				required="true"
				maxlength="10"
				size="60"
				label="%{getText('insert-compositeUnique2', '')}"
				tooltip="%{getText('insert-compositeUnique2-tip', '')}"
			/>
			<#assign _buttons_ = [] />
		<#if action.getTextAsBoolean('ui-input-confirm', false)>
			<#assign _buttons_ = _buttons_ + [{
				"icon": "icon-insert-confirm",
				"action": "sampleunique_insert_confirm",
				"text": "button-insert-confirm"
			}]/>
		<#else>
			<#assign _buttons_ = _buttons_ + [{
				"icon": "icon-insert-execute",
				"action": "sampleunique_insert_execute",
				"text": "button-insert-execute"
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

		<script type="text/javascript"><!--
		--></script>
	</div>
</div>

</body>
</html>
