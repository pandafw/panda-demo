<html>
<head>
	<title><@p.text name="title-add"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<ol class="breadcrumb">
			<li><@p.i icon="icon"/> <@p.text name="title"/></li>
			<li class="active"><@p.text name="step-add"/></li>
		</ol>
	</div>

	<div class="p-toolbar-wrap"><ul class="p-toolbar">
<#if action.hasPermission("~/list")><li><@p.a icon="icon-list" action="~/list" label="#(button-list)"/>
</li></#if>	</ul><div class="clearfix"></div></div>

	<#include "/action-alert.ftl"/>

	<@p.form cssClass="p-eform" id="sampleunique" initfocus="true" method="post" theme="bs3h">
			<@p.viewfield
				key="id"
				value="%{r.id}"
			/>
			<@p.textfield
				key="name"
				value="%{r.name}"
				required="true"
				maxlength="100"
				size="60"
			/>
			<@p.textfield
				key="compositeUnique1"
				value="%{r.compositeUnique1}"
				required="true"
				maxlength="10"
				size="60"
			/>
			<@p.textfield
				key="compositeUnique2"
				value="%{r.compositeUnique2}"
				required="true"
				maxlength="10"
				size="60"
			/>
		<#assign _buttons_ = [] />
	<#if action.getTextAsBoolean('ui-input-confirm', false)>
		<#assign _buttons_ = _buttons_ + [{
			"icon": "icon-add-confirm",
			"action": "~/add_confirm",
			"text": "button-add-confirm"
		}]/>
	<#else>
		<#assign _buttons_ = _buttons_ + [{
			"icon": "icon-add-execute",
			"action": "~/add_execute",
			"text": "button-add-execute"
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

		<script type="text/javascript"><!--
		
			function onPageLoad() {
			}
		--></script>
</div>

</body>
</html>
