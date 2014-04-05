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

	<@p.form cssClass="p-cform" id="sampleunique" initfocus="true" method="post" theme="bs3h">
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
			<@p.viewfield
				key="d.status"
				list="consts.dataStatusMap"
			/>
			<@p.viewfield
				key="d.cusid"
			/>
			<@p.viewfield
				key="d.cusnm"
			/>
			<@p.viewfield
				key="d.ctime"
				format="datetime"
			/>
			<@p.viewfield
				key="d.uusid"
			/>
			<@p.viewfield
				key="d.uusnm"
			/>
			<@p.viewfield
				key="d.utime"
				format="datetime"
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

</body>
</html>
