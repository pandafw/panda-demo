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
	<#if action.hasPermission("sampleunique_list")>
		<li><@p.a icon="icon-list" action="sampleunique_list"><@p.text name='button-list'/></@p.a></li>
	</#if>
	</ul>


	<#include "/panda/exts/struts2/views/action-alert.ftl"/>

	<@p.form cssClass="p-eform" id="sampleunique" initfocus="true" method="post" theme="bs3h">
			<@p.viewfield
				key="d.id"
			/>
			<@p.textfield
				key="d.name"
				required="true"
				maxlength="100"
				size="60"
			/>
			<@p.textfield
				key="d.compositeUnique1"
				required="true"
				maxlength="10"
				size="60"
			/>
			<@p.textfield
				key="d.compositeUnique2"
				required="true"
				maxlength="10"
				size="60"
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

</body>
</html>
