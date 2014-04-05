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
		"header": action.getText("_number_", ""),
		"nowrap": true,
		"fixed": true
	}] />

	<#assign _actions_ = [] />
	<#assign _ash_ = "" />
	<#if action.hasPermission("sampleunique_insert")>
		<@p.url var="_u_" action="sampleunique_insert"/>
		<@p.text var="_icon_" name="icon-insert"/>
		<#assign _ash_ = "<a class=\"n-lv-ia\" href=\"" + _u_
				+ "\" title=\"" + action.getText("tooltip-insert", "")?html + "\">"/>
		<#if _icon_?has_content>
			<#assign _ash_ = _ash_ + "<img class=\"n-lv-i n-icon " + _icon_ 
				+ "\" src=\"" + static + "/nuts/images/s.gif\"></img>"/>
		</#if>
		<#assign _ash_ = _ash_ + action.getText("label-insert", "") + "</a>"/>
	</#if>
	<#if action.hasPermission("sampleunique_copy")>
		<#assign _actions_ = _actions_ + [{
			"action": "sampleunique_copy",
			"icon": action.getText("icon-copy"),
			"label": action.getText("label-copy", ""),
			"tooltip": action.getText("tooltip-copy", "")
		}] />
	</#if>
	<#if action.hasPermission("sampleunique_update")>
		<#assign _actions_ = _actions_ + [{
			"action": "sampleunique_update",
			"icon": action.getText("icon-update"),
			"label": action.getText("label-update", ""),
			"tooltip": action.getText("tooltip-update", "")
		}] />
	</#if>
	<#if action.hasPermission("sampleunique_delete")>
		<#assign _actions_ = _actions_ + [{
			"action": "sampleunique_delete",
			"icon": action.getText("icon-delete"),
			"label": action.getText("label-delete", ""),
			"tooltip": action.getText("tooltip-delete", "")
		}] />
	</#if>
	<#if _actions_?has_content || _ash_?has_content>
		<#if !(_ash_?has_content)>
			<#assign _ash_ = action.getText("_actions_", "")/>
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

	<#if action.hasPermission("sampleunique_bdelete")>
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
			"header": action.getText("d.id"),
			"filter": {
				"type": "number"
			},
			"link": true,
			"sortable": true,
			"tooltip": action.getText("d.id-tip", "")
		}, {
			"name" : "name",
			"header": action.getText("d.name"),
			"filter": {
				"type": "string"
			},
			"sortable": true,
			"tooltip": action.getText("d.name-tip", "")
		}, {
			"name" : "compositeUnique1",
			"header": action.getText("d.compositeUnique1"),
			"filter": {
				"type": "string"
			},
			"sortable": true,
			"tooltip": action.getText("d.compositeUnique1-tip", "")
		}, {
			"name" : "compositeUnique2",
			"header": action.getText("d.compositeUnique2"),
			"filter": {
				"type": "string"
			},
			"sortable": true,
			"tooltip": action.getText("d.compositeUnique2-tip", "")
		}, {
			"name" : "status",
			"header": action.getText("d.status"),
			"format": {
				"codemap": "consts.dataStatusMap",
				"type": "code"
			},
			"filter": {
				"list": "consts.dataStatusMap",
				"type": "radio"
			},
			"hidden": false,
			"link": false,
			"sortable": true,
			"tooltip": action.getText("d.status-tip", "")
		}, {
			"name" : "cusid",
			"header": action.getText("d.cusid"),
			"filter": {
				"type": "number"
			},
			"hidden": false,
			"link": false,
			"sortable": true,
			"tooltip": action.getText("d.cusid-tip", "")
		}, {
			"name" : "ctime",
			"header": action.getText("d.ctime"),
			"format": {
				"type": "datetime"
			},
			"filter": {
				"type": "datetime"
			},
			"hidden": false,
			"link": false,
			"sortable": true,
			"tooltip": action.getText("d.ctime-tip", "")
		}, {
			"name" : "uusid",
			"header": action.getText("d.uusid"),
			"filter": {
				"type": "number"
			},
			"hidden": false,
			"link": false,
			"sortable": true,
			"tooltip": action.getText("d.uusid-tip", "")
		}, {
			"name" : "utime",
			"header": action.getText("d.utime"),
			"format": {
				"type": "datetime"
			},
			"filter": {
				"type": "datetime"
			},
			"hidden": false,
			"link": false,
			"sortable": true,
			"tooltip": action.getText("d.utime-tip", "")
		}
	] />

	<#if action.getText("listview-actions-align", "") == "right">
		<#assign _columns_ = _columns_ + _actionc_![]/>
	</#if>

	<@p.listview id="sampleunique_list" action="sampleunique_list" 
		list="ds" columns=_columns_ cssColumn="status"
		start="pg.s" limit="pg.l" total="pg.t" sort="so.c" dir="so.d" filters="qf" filterm="qm" pager="true"
		link={ "action": "sampleunique_view", "params": { "d.id": "id" } }
	>
		<@s.param name="tools">
			<#if action.hasPermission("sampleunique_bdelete")>
				<@p.submit icon="icon-bdelete" action="sampleunique_bdelete" onclick="return sampleunique_list_bdelete();" theme="simple"><@p.text name="button-bdelete"/></@p.submit>
			</#if>
			<#if action.hasPermission("sampleunique_list_print")>
				<@p.submit icon="icon-print" onclick="return sampleunique_list_print();" theme="simple"><@p.text name="button-print"/></@p.submit>
			</#if>
			<#if action.hasPermission("sampleunique_list_csv")>
				<@p.submit icon="icon-csv" onclick="return sampleunique_list_csv();" theme="simple"><@p.text name="button-csv"/></@p.submit>
			</#if>
			<#if action.hasPermission("/json/sampleunique_list")>
				<@p.submit icon="icon-json" onclick="return sampleunique_list_json();" theme="simple"><@p.text name="button-json"/></@p.submit>
			</#if>
			<#if action.hasPermission("/xml/samplequnique_list")>
				<@p.submit icon="icon-xml" onclick="return sampleunique_list_xml();" theme="simple"><@p.text name="button-xml"/></@p.submit>
			</#if>
			<#if action.hasPermission("sampleunique_list_print")>
				<@p.submit icon="icon-pdf-list_print" onclick="return sampleunique_list_pdf_list_print();" theme="simple"><@p.text name="button-pdf-list_print"/></@p.submit>
			</#if>
		</@s.param>
	</@p.listview>

	<script type="text/javascript"><!--
		function sampleunique_list_bdelete() {
			return nlv_submitCheckedKeys('sampleunique_list', '<@p.url action="sampleunique_bdelete"/>');
		}
		function sampleunique_list_print() {
			window.open("<@p.url action='sampleunique_list_print' includeParams='all' escapeAmp='false'/>");
			return false;
		}
		function sampleunique_list_csv() {
			window.open("<@p.url action='sampleunique_list_csv' includeParams='all' escapeAmp='false'/>");
			return false;
		}
		function sampleunique_list_json() {
			window.open("<@p.url action='sampleunique_list' namespace='/json' includeParams='all' escapeAmp='false'/>");
			return false;
		}
		function sampleunique_list_xml() {
			window.open("<@p.url action='samplequnique_list' namespace='/xml' includeParams='all' escapeAmp='false'/>");
			return false;
		}
		function sampleunique_list_pdf_list_print() {
			window.open("<@p.url action='pdf' namespace='/' escapeAmp='false'/>?url=" + encodeURIComponent("<@p.url action='sampleunique_list_print' forceAddSchemeHostAndPort='true' escapeAmp='false'/>" + location.search));
			return false;
		}
	--></script>
</div>

</body>
</html>
