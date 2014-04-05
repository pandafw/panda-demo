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
	<#if action.hasPermission("sampletags_insert")>
		<@p.url var="_u_" action="sampletags_insert"/>
		<@p.text var="_icon_" name="icon-insert"/>
		<#assign _ash_ = "<a class=\"n-lv-ia\" href=\"" + _u_
				+ "\" title=\"" + action.getText("tooltip-insert", "")?html + "\">"/>
		<#if _icon_?has_content>
			<#assign _ash_ = _ash_ + "<img class=\"n-lv-i n-icon " + _icon_ 
				+ "\" src=\"" + static + "/nuts/images/s.gif\"></img>"/>
		</#if>
		<#assign _ash_ = _ash_ + action.getText("label-insert", "") + "</a>"/>
	</#if>
	<#if action.hasPermission("sampletags_copy")>
		<#assign _actions_ = _actions_ + [{
			"action": "sampletags_copy",
			"icon": action.getText("icon-copy"),
			"label": action.getText("label-copy", ""),
			"tooltip": action.getText("tooltip-copy", "")
		}] />
	</#if>
	<#if action.hasPermission("sampletags_update")>
		<#assign _actions_ = _actions_ + [{
			"action": "sampletags_update",
			"icon": action.getText("icon-update"),
			"label": action.getText("label-update", ""),
			"tooltip": action.getText("tooltip-update", "")
		}] />
	</#if>
	<#if action.hasPermission("sampletags_delete")>
		<#assign _actions_ = _actions_ + [{
			"action": "sampletags_delete",
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

	<#if action.hasPermission("sampletags_bdelete")>
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
			"name" : "styleField",
			"header": action.getText("d.styleField"),
			"format": {
				"codemap": "consts.styleMap",
				"type": "code"
			},
			"filter": {
				"fixed": true,
				"list": "consts.styleMap",
				"type": "checklist"
			},
			"sortable": true,
			"tooltip": action.getText("d.styleField-tip", "")
		}, {
			"name" : "name",
			"header": action.getText("d.name"),
			"filter": {
				"fixed": true,
				"type": "string"
			},
			"sortable": true,
			"tooltip": action.getText("d.name-tip", "")
		}, {
			"name" : "boolField",
			"header": action.getText("d.boolField"),
			"format": {
				"type": "check"
			},
			"filter": {
				"type": "boolean"
			},
			"sortable": true,
			"tooltip": action.getText("d.boolField-tip", "")
		}, {
			"name" : "intField",
			"header": action.getText("d.intField"),
			"filter": {
				"type": "number"
			},
			"sortable": true,
			"tooltip": action.getText("d.intField-tip", "")
		}, {
			"name" : "decField",
			"header": action.getText("d.decField"),
			"filter": {
				"type": "number"
			},
			"sortable": true,
			"tooltip": action.getText("d.decField-tip", "")
		}, {
			"name" : "radioField",
			"header": action.getText("d.radioField"),
			"format": {
				"codemap": "consts.radioMap",
				"type": "code"
			},
			"filter": {
				"list": "consts.radioMap",
				"type": "radio"
			},
			"sortable": true,
			"tooltip": action.getText("d.radioField-tip", "")
		}, {
			"name" : "selectField",
			"header": action.getText("d.selectField"),
			"format": {
				"codemap": "consts.selectMap",
				"type": "code"
			},
			"filter": {
				"list": "consts.selectMap",
				"type": "select"
			},
			"sortable": true,
			"tooltip": action.getText("d.selectField-tip", "")
		}, {
			"name" : "checkField",
			"header": action.getText("d.checkField"),
			"format": {
				"codemap": "consts.checkMap",
				"type": "code"
			},
			"filter": {
				"list": "consts.checkMap",
				"type": "checklist"
			},
			"sortable": true,
			"tooltip": action.getText("d.checkField-tip", "")
		}, {
			"name" : "datetimeField",
			"header": action.getText("d.datetimeField"),
			"format": {
				"type": "datetime"
			},
			"filter": {
				"type": "datetime"
			},
			"sortable": true,
			"tooltip": action.getText("d.datetimeField-tip", "")
		}, {
			"name" : "dateField",
			"header": action.getText("d.dateField"),
			"format": {
				"type": "date"
			},
			"filter": {
				"fixed": true,
				"type": "date"
			},
			"sortable": true,
			"tooltip": action.getText("d.dateField-tip", "")
		}, {
			"name" : "timeField",
			"header": action.getText("d.timeField"),
			"format": {
				"type": "time"
			},
			"filter": {
				"type": "time"
			},
			"sortable": true,
			"tooltip": action.getText("d.timeField-tip", "")
		}, {
			"name" : "htmlField",
			"header": action.getText("d.htmlField"),
			"display": false,
			"tooltip": action.getText("d.htmlField-tip", "")
		}, {
			"name" : "bbcodeField",
			"header": action.getText("d.bbcodeField"),
			"display": false,
			"tooltip": action.getText("d.bbcodeField-tip", "")
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

	<@p.listview id="sampletags_list" action="sampletags_list" 
		list="ds" columns=_columns_ cssColumn="styleField"
		start="pg.s" limit="pg.l" total="pg.t" sort="so.c" dir="so.d" filters="qf" filterm="qm" pager="true"
		link={ "action": "sampletags_view", "params": { "d.id": "id" } }
	>
		<@s.param name="tools">
			<#if action.hasPermission("sampletags_bdelete")>
				<@p.submit icon="icon-bdelete" action="sampletags_bdelete" onclick="return sampletags_list_bdelete();" theme="simple"><@p.text name="button-bdelete"/></@p.submit>
			</#if>
			<#if action.hasPermission("sampletags_list_print")>
				<@p.submit icon="icon-print" onclick="return sampletags_list_print();" theme="simple"><@p.text name="button-print"/></@p.submit>
			</#if>
			<#if action.hasPermission("sampletags_list_csv")>
				<@p.submit icon="icon-csv" onclick="return sampletags_list_csv();" theme="simple"><@p.text name="button-csv"/></@p.submit>
			</#if>
			<#if action.hasPermission("/json/sampletags_list")>
				<@p.submit icon="icon-json" onclick="return sampletags_list_json();" theme="simple"><@p.text name="button-json"/></@p.submit>
			</#if>
			<#if action.hasPermission("/xml/sampletags_list")>
				<@p.submit icon="icon-xml" onclick="return sampletags_list_xml();" theme="simple"><@p.text name="button-xml"/></@p.submit>
			</#if>
			<#if action.hasPermission("sampletags_list_print")>
				<@p.submit icon="icon-pdf-list_print" onclick="return sampletags_list_pdf_list_print();" theme="simple"><@p.text name="button-pdf-list_print"/></@p.submit>
			</#if>
		</@s.param>
	</@p.listview>

	<script type="text/javascript"><!--
		function sampletags_list_bdelete() {
			return nlv_submitCheckedKeys('sampletags_list', '<@p.url action="sampletags_bdelete"/>');
		}
		function sampletags_list_print() {
			window.open("<@p.url action='sampletags_list_print' includeParams='all' escapeAmp='false'/>");
			return false;
		}
		function sampletags_list_csv() {
			window.open("<@p.url action='sampletags_list_csv' includeParams='all' escapeAmp='false'/>");
			return false;
		}
		function sampletags_list_json() {
			window.open("<@p.url action='sampletags_list' namespace='/json' includeParams='all' escapeAmp='false'/>");
			return false;
		}
		function sampletags_list_xml() {
			window.open("<@p.url action='sampletags_list' namespace='/xml' includeParams='all' escapeAmp='false'/>");
			return false;
		}
		function sampletags_list_pdf_list_print() {
			window.open("<@p.url action='pdf' namespace='/' escapeAmp='false'/>?url=" + encodeURIComponent("<@p.url action='sampletags_list_print' forceAddSchemeHostAndPort='true' escapeAmp='false'/>" + location.search));
			return false;
		}
	--></script>
</div>

</body>
</html>
