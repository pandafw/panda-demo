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
		<li><@p.a icon="icon-refresh" href="javascript:location.reload(true)"><@p.text name='button-refresh'/></@p.a></li>
	</ul>

	<#include "/panda/exts/struts2/views/action-alert.ftl"/>

	<#assign _columns_ = [{
		"name": "_number_",
		"type": "number",
		"header": action.getText("list-column-_number_", ""),
		"nowrap": true,
		"fixed": true
	}] />

	<#assign _actions_ = [] />
	<#assign _ash_ = "" />
	<#if action.hasPermission("samplejoin_insert")>
		<@p.url var="_u_" action="samplejoin_insert"/>
		<@p.text var="_icon_" name="icon-insert"/>
		<#assign _ash_ = "<a class=\"n-lv-ia\" href=\"" + _u_
				+ "\" title=\"" + action.getText("tooltip-insert", "")?html + "\">"/>
		<#if _icon_?has_content>
			<#assign _ash_ = _ash_ + "<img class=\"n-lv-i n-icon " + _icon_ 
				+ "\" src=\"" + static + "/nuts/images/s.gif\"></img>"/>
		</#if>
		<#assign _ash_ = _ash_ + action.getText("label-insert", "") + "</a>"/>
	</#if>
	<#if action.hasPermission("samplejoin_copy")>
		<#assign _actions_ = _actions_ + [{
			"action": "samplejoin_copy",
			"icon": action.getText("icon-copy"),
			"label": action.getText("label-copy", ""),
			"tooltip": action.getText("tooltip-copy", "")
		}] />
	</#if>
	<#if action.hasPermission("samplejoin_update")>
		<#assign _actions_ = _actions_ + [{
			"action": "samplejoin_update",
			"icon": action.getText("icon-update"),
			"label": action.getText("label-update", ""),
			"tooltip": action.getText("tooltip-update", "")
		}] />
	</#if>
	<#if action.hasPermission("samplejoin_delete")>
		<#assign _actions_ = _actions_ + [{
			"action": "samplejoin_delete",
			"icon": action.getText("icon-delete"),
			"label": action.getText("label-delete", ""),
			"tooltip": action.getText("tooltip-delete", "")
		}] />
	</#if>
	<#if _actions_?has_content || _ash_?has_content>
		<#if !(_ash_?has_content)>
			<#assign _ash_ = action.getText("list-column-_actions_", "")/>
		</#if>
		<#assign _actionc_ = [{
			"name": "_actions_",
			"type": "actions",
			"header": _ash_,
			"actions": _actions_,
			"nowrap": true,
			"fixed": true
		}] />
	</#if>
	<#if action.getText("listview-actions-align", "left") == "left">
		<#assign _columns_ = _columns_ + _actionc_![]/>
	</#if>

	<#if action.hasPermission("samplejoin_bdelete")>
		<#assign _columns_ = _columns_ + [{
			"name": "_check_",
			"type": "check",
			"nowrap": true,
			"fixed": true
		}] />
	</#if>

	<#assign _columns_ = _columns_ + [{
			"name" : "id",
			"pkey" : true,
			"header": action.getText("list-column-id"),
			"filter": {
				"type": "number"
			},
			"link": true,
			"sortable": true,
			"tooltip": action.getText("list-column-id-tip", "")
		}, {
			"name" : "tagsId",
			"header": action.getText("list-column-tagsId"),
			"filter": {
				"type": "number"
			},
			"hidden": true,
			"sortable": true,
			"tooltip": action.getText("list-column-tagsId-tip", "")
		}, {
			"name" : "tagsName",
			"header": action.getText("list-column-tagsName"),
			"filter": {
				"type": "string"
			},
			"sortable": true,
			"tooltip": action.getText("list-column-tagsName-tip", "")
		}, {
			"name" : "fileId",
			"header": action.getText("list-column-fileId"),
			"filter": {
				"type": "number"
			},
			"hidden": true,
			"sortable": true,
			"tooltip": action.getText("list-column-fileId-tip", "")
		}, {
			"name" : "fileName",
			"header": action.getText("list-column-fileName"),
			"filter": {
				"type": "string"
			},
			"sortable": true,
			"tooltip": action.getText("list-column-fileName-tip", "")
		}
	] />

	<#if action.getText("listview-actions-align", "") == "right">
		<#assign _columns_ = _columns_ + _actionc_![]/>
	</#if>

	<@p.listview id="samplejoin_list" action="samplejoin_list" 
		list="ds" columns=_columns_
		start="pg.s" limit="pg.l" total="pg.t" sort="so.c" dir="so.d" filters="qf" filterm="qm" pager="true"
		link={ "action": "samplejoin_view", "params": { "d.id": "id" } }
	>
		<@s.param name="tools">
			<#if action.hasPermission("samplejoin_bdelete")>
				<@p.submit icon="icon-bdelete" action="samplejoin_bdelete" onclick="return samplejoin_list_bdelete();" theme="simple"><@p.text name="button-bdelete"/></@p.submit>
			</#if>
			<#if action.hasPermission("samplejoin_list_print")>
				<@p.submit icon="icon-print" onclick="return samplejoin_list_print();" theme="simple"><@p.text name="button-print"/></@p.submit>
			</#if>
			<#if action.hasPermission("samplejoin_list_csv")>
				<@p.submit icon="icon-csv" onclick="return samplejoin_list_csv();" theme="simple"><@p.text name="button-csv"/></@p.submit>
			</#if>
			<#if action.hasPermission("/json/samplejoin_list")>
				<@p.submit icon="icon-json" onclick="return samplejoin_list_json();" theme="simple"><@p.text name="button-json"/></@p.submit>
			</#if>
			<#if action.hasPermission("/xml/samplejoin_list")>
				<@p.submit icon="icon-xml" onclick="return samplejoin_list_xml();" theme="simple"><@p.text name="button-xml"/></@p.submit>
			</#if>
			<#if action.hasPermission("samplejoin_list_print")>
				<@p.submit icon="icon-pdf-list_print" onclick="return samplejoin_list_pdf_list_print();" theme="simple"><@p.text name="button-pdf-list_print"/></@p.submit>
			</#if>
		</@s.param>
	</@p.listview>

	<script type="text/javascript"><!--
		function samplejoin_list_bdelete() {
			return nlv_submitCheckedKeys('samplejoin_list', '<@p.url action="samplejoin_bdelete"/>');
		}
		function samplejoin_list_print() {
			window.open("<@p.url action='samplejoin_list_print' includeParams='all' escapeAmp='false'/>");
			return false;
		}
		function samplejoin_list_csv() {
			window.open("<@p.url action='samplejoin_list_csv' includeParams='all' escapeAmp='false'/>");
			return false;
		}
		function samplejoin_list_json() {
			window.open("<@p.url action='samplejoin_list' namespace='/json' includeParams='all' escapeAmp='false'/>");
			return false;
		}
		function samplejoin_list_xml() {
			window.open("<@p.url action='samplejoin_list' namespace='/xml' includeParams='all' escapeAmp='false'/>");
			return false;
		}
		function samplejoin_list_pdf_list_print() {
			window.open("<@p.url action='pdf' namespace='/' escapeAmp='false'/>?url=" + encodeURIComponent("<@p.url action='samplejoin_list_print' forceAddSchemeHostAndPort='true' escapeAmp='false'/>" + location.search));
			return false;
		}
	--></script>
</div>

</body>
</html>
