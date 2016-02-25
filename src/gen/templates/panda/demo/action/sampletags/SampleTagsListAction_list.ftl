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
<#if text.getText("well-list", "")?has_content>
	<div class="p-well"><@p.text name="well-list"/></div>
</#if>


	<div class="p-toolbar-wrap"><ul class="p-toolbar">
		<li><@p.a icon="icon-refresh" href="javascript:location.reload(true)" label="#(button-refresh)"/>
</li><#if action.hasPermission("~/add")><li><@p.a icon="icon-new" action="~/add" label="#(button-new)"/>
</li></#if><#if action.hasPermission("~/list_print")><li><@p.a icon="icon-print" target="_blank" action="~/list_print" includeParams="all" label="#(button-print)"/>
</li></#if><#if action.hasPermission("~/list_csv")><li><@p.a icon="icon-csv" target="_blank" action="~/list_csv" includeParams="all" label="#(button-csv)"/>
</li></#if><#if action.hasPermission("~/list_json")><li><@p.a icon="icon-json" target="_blank" action="~/list_json" includeParams="all" label="#(button-json)"/>
</li></#if><#if action.hasPermission("~/list_xml")><li><@p.a icon="icon-xml" target="_blank" action="~/list_xml" includeParams="all" label="#(button-xml)"/>
</li></#if><#if r?has_content><li><@p.a icon="icon-pdf" target="_blank" action="/pdf"><@p.param name="url"><@p.url action="~/list_print" forceAddSchemeHostAndPort="true" escapeAmp="false" includeParams="all"/></@p.param><@p.text name='button-pdf'/></@p.a>
</li></#if>	</ul><div class="clearfix"></div></div>

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
		<#assign _ash_ = '<a class="n-lv-ia" href="' + vars._u_ + '" title="' + text.getText('tooltip-new', '')?html + '"><i class="' + text.getText('icon-new', '') + '"></i>' + text.getText('label-new', '') + '</a>'/>
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
	<#if a.actionsAlignLeft>
		<#assign _columns_ = _columns_ + _actionc_![]/>
	</#if>

	<#if action.hasPermission("~/bdelete") || action.hasPermission("~/benalbe") || action.hasPermission("~/bdisable")>
		<#assign _columns_ = _columns_ + [{
			"name": "_check_",
			"type": "check",
			"fixed": true
		}] />
	</#if>

<#if a.displayColumn("id")>
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
		}] />
</#if>
<#if a.displayColumn("styleField")>
	<#assign _columns_ = _columns_ + [{
			"name" : "styleField",
			"header": text.getText("a.t.styleField"),
			"format": {
				"codemap": consts.styleMap,
				"type": "code"
			},
			"filter": {
				"fixed": true,
				"list": consts.styleMap,
				"type": "checklist"
			},
			"sortable": true,
			"tooltip": text.getText("a.t.styleField-tip", "")
		}] />
</#if>
<#if a.displayColumn("name")>
	<#assign _columns_ = _columns_ + [{
			"name" : "name",
			"header": text.getText("a.t.name"),
			"filter": {
				"fixed": true,
				"type": "string"
			},
			"sortable": true,
			"tooltip": text.getText("a.t.name-tip", "")
		}] />
</#if>
<#if a.displayColumn("boolField")>
	<#assign _columns_ = _columns_ + [{
			"name" : "boolField",
			"header": text.getText("a.t.boolField"),
			"format": {
				"type": "check"
			},
			"filter": {
				"type": "boolean"
			},
			"sortable": true,
			"tooltip": text.getText("a.t.boolField-tip", "")
		}] />
</#if>
<#if a.displayColumn("intField")>
	<#assign _columns_ = _columns_ + [{
			"name" : "intField",
			"header": text.getText("a.t.intField"),
			"filter": {
				"type": "number"
			},
			"sortable": true,
			"tooltip": text.getText("a.t.intField-tip", "")
		}] />
</#if>
<#if a.displayColumn("decField")>
	<#assign _columns_ = _columns_ + [{
			"name" : "decField",
			"header": text.getText("a.t.decField"),
			"filter": {
				"type": "number"
			},
			"sortable": true,
			"tooltip": text.getText("a.t.decField-tip", "")
		}] />
</#if>
<#if a.displayColumn("radioField")>
	<#assign _columns_ = _columns_ + [{
			"name" : "radioField",
			"header": text.getText("a.t.radioField"),
			"format": {
				"codemap": consts.radioMap,
				"type": "code"
			},
			"filter": {
				"list": consts.radioMap,
				"type": "radio"
			},
			"sortable": true,
			"tooltip": text.getText("a.t.radioField-tip", "")
		}] />
</#if>
<#if a.displayColumn("selectField")>
	<#assign _columns_ = _columns_ + [{
			"name" : "selectField",
			"header": text.getText("a.t.selectField"),
			"format": {
				"codemap": consts.selectMap,
				"type": "code"
			},
			"filter": {
				"list": consts.selectMap,
				"type": "select"
			},
			"sortable": true,
			"tooltip": text.getText("a.t.selectField-tip", "")
		}] />
</#if>
<#if a.displayColumn("checkField")>
	<#assign _columns_ = _columns_ + [{
			"name" : "checkField",
			"header": text.getText("a.t.checkField"),
			"format": {
				"codemap": consts.checkMap,
				"type": "code"
			},
			"filter": {
				"list": consts.checkMap,
				"type": "checklist"
			},
			"sortable": true,
			"tooltip": text.getText("a.t.checkField-tip", "")
		}] />
</#if>
<#if a.displayColumn("datetimeField")>
	<#assign _columns_ = _columns_ + [{
			"name" : "datetimeField",
			"header": text.getText("a.t.datetimeField"),
			"format": {
				"type": "datetime"
			},
			"filter": {
				"type": "datetime"
			},
			"sortable": true,
			"tooltip": text.getText("a.t.datetimeField-tip", "")
		}] />
</#if>
<#if a.displayColumn("dateField")>
	<#assign _columns_ = _columns_ + [{
			"name" : "dateField",
			"header": text.getText("a.t.dateField"),
			"format": {
				"type": "date"
			},
			"filter": {
				"fixed": true,
				"type": "date"
			},
			"sortable": true,
			"tooltip": text.getText("a.t.dateField-tip", "")
		}] />
</#if>
<#if a.displayColumn("timeField")>
	<#assign _columns_ = _columns_ + [{
			"name" : "timeField",
			"header": text.getText("a.t.timeField"),
			"format": {
				"type": "time"
			},
			"filter": {
				"type": "time"
			},
			"sortable": true,
			"tooltip": text.getText("a.t.timeField-tip", "")
		}] />
</#if>
<#if a.displayColumn("htmlField")>
	<#assign _columns_ = _columns_ + [{
			"name" : "htmlField",
			"header": text.getText("a.t.htmlField"),
			"display": false,
			"tooltip": text.getText("a.t.htmlField-tip", "")
		}] />
</#if>
<#if a.displayColumn("bbcodeField")>
	<#assign _columns_ = _columns_ + [{
			"name" : "bbcodeField",
			"header": text.getText("a.t.bbcodeField"),
			"display": false,
			"tooltip": text.getText("a.t.bbcodeField-tip", "")
		}] />
</#if>
<#if a.displayColumn("status")>
	<#assign _columns_ = _columns_ + [{
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
		}] />
</#if>
<#if a.displayColumn("cusid")>
	<#assign _columns_ = _columns_ + [{
			"name" : "cusid",
			"header": text.getText("a.t.cusid"),
			"filter": {
				"type": "number"
			},
			"hidden": false,
			"link": false,
			"sortable": true,
			"tooltip": text.getText("a.t.cusid-tip", "")
		}] />
</#if>
<#if a.displayColumn("ctime")>
	<#assign _columns_ = _columns_ + [{
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
		}] />
</#if>
<#if a.displayColumn("uusid")>
	<#assign _columns_ = _columns_ + [{
			"name" : "uusid",
			"header": text.getText("a.t.uusid"),
			"filter": {
				"type": "number"
			},
			"hidden": false,
			"link": false,
			"sortable": true,
			"tooltip": text.getText("a.t.uusid-tip", "")
		}] />
</#if>
<#if a.displayColumn("utime")>
	<#assign _columns_ = _columns_ + [{
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
		}] />
</#if>

	<#if a.actionsAlignRight>
		<#assign _columns_ = _columns_ + _actionc_![]/>
	</#if>
	<@p.set var="lvtools">
		<#if action.hasPermission("~/bdelete")>
			<@p.b icon="icon-bdelete" onclick="return sampletags_list_bdelete();" label="#(button-bdelete)"/>
		</#if>
		<#if action.hasPermission("~/benalbe")>
			<@p.b icon="icon-benable" onclick="return sampletags_list_benable();" label="#(button-benable)"/>
		</#if>
		<#if action.hasPermission("~/bdisable")>
			<@p.b icon="icon-bdisable" onclick="return sampletags_list_bdisable();" label="#(button-bdisable)"/>
		</#if>
	</@p.set>

	<@p.listview id="sampletags_list" action="~/list" 
		list=result columns=_columns_ cssColumn="styleField status"
		cssTable="table-hover table-striped"
		link={ "action": "~/view", "params": { "id": "%{top.id}" } }
		tools="%{vars.lvtools}"
	/>

	<script type="text/javascript"><!--
		function sampletags_list_bdelete() {
			return plv_submitCheckedKeys('sampletags_list', '<@p.url action="~/bdelete"/>', null, "");
		}
		function sampletags_list_benable() {
			return plv_submitCheckedKeys('sampletags_list', '<@p.url action="~/benalbe"/>', null, "");
		}
		function sampletags_list_bdisable() {
			return plv_submitCheckedKeys('sampletags_list', '<@p.url action="~/bdisable"/>', null, "");
		}
	--></script>
</div>

</body>
</html>
