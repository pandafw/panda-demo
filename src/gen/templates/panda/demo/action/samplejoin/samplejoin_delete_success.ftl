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
	<#if action.hasDataPermission(d!, "samplejoin_print")>
		<li><@p.a icon="icon-print" target="_blank" action="samplejoin_print"><@s.param name="d.id" value="d.id"/><@p.text name='button-print'/></@p.a></li>
	</#if>
		<li><@p.a icon="icon-pdf-print" target="_blank" action="pdf" namespace="/">			<@s.param name="url"><@p.url action='samplejoin_print' forceAddSchemeHostAndPort='true' escapeAmp='false'>
					<@s.param name="d.id" value="d.id"/>
			</@p.url></@s.param><@p.text name='button-pdf-print'/></@p.a></li>
	<#if action.hasPermission("samplejoin_list")>
		<li><@p.a icon="icon-list" action="samplejoin_list"><@p.text name='button-list'/></@p.a></li>
	</#if>
	</ul>


	<#include "/panda/exts/struts2/views/action-alert.ftl"/>

	<@p.form cssClass="p-sform" id="samplejoin" initfocus="true" method="post" theme="bs3h">
			<@p.viewfield
				key="d.id"
			/>
			<@p.viewfield
				key="d.tagsId"
			/>
			<@p.viewfield
				key="d.tagsName"
			/>
			<@p.viewfield
				key="d.fileId"
			/>
			<@p.viewfield
				key="d.fileName"
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
			<#assign _buttons_ = [] />
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

</body>
</html>
