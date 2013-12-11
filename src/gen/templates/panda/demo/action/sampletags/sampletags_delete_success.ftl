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
	<#if action.hasPermission("sampletags_list")>
		<li><@p.a icon="icon-list" action="sampletags_list"><@p.text name='button-list'/></@p.a></li>
	</#if>
	</ul>


	<#include "/panda/exts/struts2/views/action-alert.ftl"/>

	<@p.form cssClass="p-sform" id="sampletags" initfocus="true" method="post" theme="bs3h">
			<@p.viewfield
				key="d.id"
			/>
			<@p.viewfield
				key="d.name"
			/>
			<@p.viewfield
				key="d.boolField"
				format="check"
			/>
			<@p.viewfield
				key="d.intField"
			/>
			<@p.viewfield
				key="d.decField"
			/>
			<@p.viewfield
				key="d.radioField"
				list="consts.radioMap"
			/>
			<@p.viewfield
				key="d.selectField"
				list="consts.selectMap"
			/>
			<@p.viewfield
				key="d.checkField"
				list="consts.checkMap"
			/>
			<@p.viewfield
				key="d.datetimeField"
				format="datetime"
			/>
			<@p.viewfield
				key="d.dateField"
				format="date"
			/>
			<@p.viewfield
				key="d.timeField"
				format="time"
			/>
			<@p.viewfield
				key="d.htmlField"
			/>
			<@p.viewfield
				key="d.bbcodeField"
			/>
			<#assign _buttons_ = [] />
			<#if action.hasPermission('sampletags_list')>
				<@p.url var="_u_" action="sampletags_list"/>
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
