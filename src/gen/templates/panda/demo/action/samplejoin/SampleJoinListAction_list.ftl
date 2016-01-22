<html>
<head>
	<title><@p.text name="title-list"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<ol class="breadcrumb">
			<li><@p.i icon="icon"/> <@p.text name="title"/></li>
			<li class="active"><@p.text name="step-list"/></li>
		</ol>
	</div>

	<div class="p-toolbar-wrap"><ul class="p-toolbar">
		<li><@p.a icon="icon-refresh" href="javascript:location.reload(true)" label="#(button-refresh)"/>
</li>	</ul><div class="clearfix"></div></div>

	<#include "/action-alert.ftl"/>

	<#assign _columns_ = [{
		"name": "_number_",
		"type": "number",
		"header": text.getText("listview-th-number", ""),
		"fixed": true
	}] />

	<#assign _actions_ = [] />
	<#assign _ash_ = "" />
	<#if action.hasPermission("~/add")>
		<@p.url var='_u_' action='~/add'/>
		<#assign _ash_ = '<a class="n-lv-ia" href="' + vars._u_ + '" title="' + text.getText('tooltip-add', '')?html + '"><i class="' + text.getText('icon-add', '') + '"></i>' + text.getText('label-add', '') + '</a>'/>
	</#if>
	<#if action.hasPermission("~/copy")>
		<#assign _actions_ = _actions_ + [{
			"action": "~/copy",
			"params": { "id": "%{top.id}" },
			"icon": text.getText("icon-copy"),
			"label": text.getText("label-copy", ""),
			"tooltip": text.getText("tooltip-copy", "")
		}] />
	</#if>
	<#if action.hasPermission("~/edit")>
		<#assign _actions_ = _actions_ + [{
			"action": "~/edit",
			"params": { "id": "%{top.id}" },
			"icon": text.getText("icon-edit"),
			"label": text.getText("label-edit", ""),
			"tooltip": text.getText("tooltip-edit", "")
		}] />
	</#if>
	<#if action.hasPermission("~/delete")>
		<#assign _actions_ = _actions_ + [{
			"action": "~/delete",
			"params": { "id": "%{top.id}" },
			"icon": text.getText("icon-delete"),
			"label": text.getText("label-delete", ""),
			"tooltip": text.getText("tooltip-delete", "")
		}] />
	</#if>
	<#if _actions_?has_content || _ash_?has_content>
		<#if !(_ash_?has_content)>
			<#assign _ash_ = text.getText("listview-th-actions", "")/>
		</#if>
		<#assign _actionc_ = [{
			"name": "_actions_",
			"type": "actions",
			"header": _ash_,
			"actions": _actions_,
			"fixed": true
		}] />
	</#if>
	<#if text.getText("listview-actions-align", "left") == "left">
		<#assign _columns_ = _columns_ + _actionc_![]/>
	</#if>

	<#if action.hasPermission("~/bdelete") || action.hasPermission("~/benalbe") || action.hasPermission("~/bdisable")>
		<#assign _columns_ = _columns_ + [{
			"name": "_check_",
			"type": "check",
			"fixed": true
		}] />
	</#if>

	<#assign _columns_ = _columns_ + [{
			"name" : "id",
			"pkey" : true,
			"value": true,
			"header": text.getText("a.t.id"),
			"filter": {
				"type": "number"
			},
			"link": true,
			"sortable": true,
			"tooltip": text.getText("a.t.id-tip", "")
		}, {
			"name" : "tagsId",
			"header": text.getText("a.t.tagsId"),
			"filter": {
				"type": "number"
			},
			"hidden": true,
			"sortable": true,
			"tooltip": text.getText("a.t.tagsId-tip", "")
		}, {
			"name" : "tagsName",
			"header": text.getText("a.t.tagsName"),
			"filter": {
				"type": "string"
			},
			"sortable": true,
			"tooltip": text.getText("a.t.tagsName-tip", "")
		}, {
			"name" : "fileId",
			"header": text.getText("a.t.fileId"),
			"filter": {
				"type": "number"
			},
			"hidden": true,
			"sortable": true,
			"tooltip": text.getText("a.t.fileId-tip", "")
		}, {
			"name" : "fileName",
			"header": text.getText("a.t.fileName"),
			"filter": {
				"type": "string"
			},
			"sortable": true,
			"tooltip": text.getText("a.t.fileName-tip", "")
		}, {
			"name" : "status",
			"header": text.getText("a.t.status"),
			"format": {
				"codemap": consts.dataStatusMap,
				"type": "code"
			},
			"filter": {
				"list": consts.dataStatusMap,
				"type": "checklist"
			},
			"hidden": false,
			"link": false,
			"sortable": true,
			"tooltip": text.getText("a.t.status-tip", "")
		}, {
			"name" : "cusid",
			"header": text.getText("a.t.cusid"),
			"filter": {
				"type": "number"
			},
			"hidden": false,
			"link": false,
			"sortable": true,
			"tooltip": text.getText("a.t.cusid-tip", "")
		}, {
			"name" : "ctime",
			"header": text.getText("a.t.ctime"),
			"format": {
				"type": "datetime"
			},
			"filter": {
				"type": "datetime"
			},
			"hidden": false,
			"link": false,
			"sortable": true,
			"tooltip": text.getText("a.t.ctime-tip", "")
		}, {
			"name" : "uusid",
			"header": text.getText("a.t.uusid"),
			"filter": {
				"type": "number"
			},
			"hidden": false,
			"link": false,
			"sortable": true,
			"tooltip": text.getText("a.t.uusid-tip", "")
		}, {
			"name" : "utime",
			"header": text.getText("a.t.utime"),
			"format": {
				"type": "datetime"
			},
			"filter": {
				"type": "datetime"
			},
			"hidden": false,
			"link": false,
			"sortable": true,
			"tooltip": text.getText("a.t.utime-tip", "")
		}
	] />

	<#if text.getText("listview-actions-align", "") == "right">
		<#assign _columns_ = _columns_ + _actionc_![]/>
	</#if>
	<@p.set var="lvtools">
		<#if action.hasPermission("~/bdelete")>
			<@p.b icon="icon-bdelete" onclick="return samplejoin_list_bdelete();" label="#(button-bdelete)"/>
		</#if>
		<#if action.hasPermission("~/benalbe")>
			<@p.b icon="icon-benable" onclick="return samplejoin_list_benable();" label="#(button-benable)"/>
		</#if>
		<#if action.hasPermission("~/bdisable")>
			<@p.b icon="icon-bdisable" onclick="return samplejoin_list_bdisable();" label="#(button-bdisable)"/>
		</#if>
		<#if action.hasPermission("~/list_print")>
			<@p.b icon="icon-print" onclick="return samplejoin_list_print();" label="#(button-print)"/>
		</#if>
		<#if action.hasPermission("~/list_csv")>
			<@p.b icon="icon-csv" onclick="return samplejoin_list_csv();" label="#(button-csv)"/>
		</#if>
		<#if action.hasPermission("~/list_json")>
			<@p.b icon="icon-json" onclick="return samplejoin_list_json();" label="#(button-json)"/>
		</#if>
		<#if action.hasPermission("~/list_xml")>
			<@p.b icon="icon-xml" onclick="return samplejoin_list_xml();" label="#(button-xml)"/>
		</#if>
		<#if action.hasPermission("/pdf")>
			<@p.b icon="icon-pdf" onclick="return samplejoin_list_pdf();" label="#(button-pdf)"/>
		</#if>
	</@p.set>

	<@p.listview id="samplejoin_list" action="~/list" 
		list=result columns=_columns_ cssColumn="status"
		cssTable="table-hover table-striped"
		link={ "action": "~/view", "params": { "id": "%{top.id}" } }
		tools="%{vars.lvtools}"
	/>

	<script type="text/javascript"><!--
		function samplejoin_list_bdelete() {
			return plv_submitCheckedKeys('samplejoin_list', '<@p.url action="~/bdelete"/>');
		}
		function samplejoin_list_benable() {
			return plv_submitCheckedKeys('samplejoin_list', '<@p.url action="~/benalbe"/>');
		}
		function samplejoin_list_bdisable() {
			return plv_submitCheckedKeys('samplejoin_list', '<@p.url action="~/bdisable"/>');
		}
		function samplejoin_list_print() {
			window.open("<@p.url action='~/list_print' includeParams='all' escapeAmp='false'/>");
			return false;
		}
		function samplejoin_list_csv() {
			window.open("<@p.url action='~/list_csv' includeParams='all' escapeAmp='false'/>");
			return false;
		}
		function samplejoin_list_json() {
			window.open("<@p.url action='~/list_json' includeParams='all' escapeAmp='false'/>");
			return false;
		}
		function samplejoin_list_xml() {
			window.open("<@p.url action='~/list_xml' includeParams='all' escapeAmp='false'/>");
			return false;
		}
		function samplejoin_list_pdf() {
			window.open("<@p.url action='/pdf' escapeAmp='false'/>?url=" + encodeURIComponent("<@p.url action='~/list_print' forceAddSchemeHostAndPort='true' escapeAmp='false'/>" + location.search));
			return false;
		}
	--></script>
</div>

</body>
</html>
