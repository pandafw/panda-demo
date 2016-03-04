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
</li><#if a.hasPermission("~/add")><li><@p.a icon="icon-new" action="~/add" label="#(button-new)"/>
</li></#if><#if a.hasPermission("~/list_print")><li><@p.a icon="icon-print" target="_blank" action="~/list_print" includeParams="all" label="#(button-print)"/>
</li></#if><#if a.hasPermission("~/list_csv")><li><@p.a icon="icon-csv" target="_blank" action="~/list_csv" includeParams="all" label="#(button-csv)"/>
</li></#if><#if a.hasPermission("~/list_json")><li><@p.a icon="icon-json" target="_blank" action="~/list_json" includeParams="all" label="#(button-json)"/>
</li></#if><#if a.hasPermission("~/list_xml")><li><@p.a icon="icon-xml" target="_blank" action="~/list_xml" includeParams="all" label="#(button-xml)"/>
</li></#if><#if r?has_content><li><@p.a icon="icon-pdf" label="#(button-pdf)" target="_blank" action="/pdf"><@p.param name="url"><@p.url action="~/list_print" forceAddSchemeHostAndPort="true" escapeAmp="false" includeParams="all"/></@p.param></@p.a>
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
	<#if a.hasPermission("~/add")>
		<@p.url var='_u_' action='~/add'/>
		<#assign _ash_ = '<a class="n-lv-ia" href="' + vars._u_ + '" title="' + text.getText('tooltip-new', '')?html + '"><i class="' + text.getText('icon-new', '') + '"></i>' + text.getText('label-new', '') + '</a>'/>
	</#if>
	<#if a.hasPermission("~/copy")>
		<#assign _actions_ = _actions_ + [{
			"action": "~/copy",
			"params": { "id": "%{top.id}" },
			"icon": text.getText("icon-copy"),
			"label": text.getText("label-copy", ""),
			"tooltip": text.getText("tooltip-copy", "")
		}] />
	</#if>
	<#if a.hasPermission("~/edit")>
		<#assign _actions_ = _actions_ + [{
			"action": "~/edit",
			"params": { "id": "%{top.id}" },
			"icon": text.getText("icon-edit"),
			"label": text.getText("label-edit", ""),
			"tooltip": text.getText("tooltip-edit", "")
		}] />
	</#if>
	<#if a.hasPermission("~/delete")>
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

<#if a.displayField("id")>
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
<#if a.displayField("popupDatetimeField")>
	<#assign _columns_ = _columns_ + [{
			"name" : "popupDatetimeField",
			"header": text.getText("a.t.popupDatetimeField"),
			"format": {
				"type": "datetime"
			},
			"filter": {
				"type": "datetime"
			},
			"sortable": true,
			"tooltip": text.getText("a.t.popupDatetimeField-tip", "")
		}] />
</#if>
<#if a.displayField("popupDateField")>
	<#assign _columns_ = _columns_ + [{
			"name" : "popupDateField",
			"header": text.getText("a.t.popupDateField"),
			"format": {
				"type": "date"
			},
			"filter": {
				"type": "date"
			},
			"sortable": true,
			"tooltip": text.getText("a.t.popupDateField-tip", "")
		}] />
</#if>
<#if a.displayField("popupTimeField")>
	<#assign _columns_ = _columns_ + [{
			"name" : "popupTimeField",
			"header": text.getText("a.t.popupTimeField"),
			"format": {
				"type": "time"
			},
			"filter": {
				"type": "time"
			},
			"sortable": true,
			"tooltip": text.getText("a.t.popupTimeField-tip", "")
		}] />
</#if>
<#if a.displayField("inlineDatetimeField")>
	<#assign _columns_ = _columns_ + [{
			"name" : "inlineDatetimeField",
			"header": text.getText("a.t.inlineDatetimeField"),
			"format": {
				"type": "datetime"
			},
			"filter": {
				"type": "datetime"
			},
			"sortable": true,
			"tooltip": text.getText("a.t.inlineDatetimeField-tip", "")
		}] />
</#if>
<#if a.displayField("inlineDateField")>
	<#assign _columns_ = _columns_ + [{
			"name" : "inlineDateField",
			"header": text.getText("a.t.inlineDateField"),
			"format": {
				"type": "date"
			},
			"filter": {
				"type": "date"
			},
			"sortable": true,
			"tooltip": text.getText("a.t.inlineDateField-tip", "")
		}] />
</#if>
<#if a.displayField("inlineTimeField")>
	<#assign _columns_ = _columns_ + [{
			"name" : "inlineTimeField",
			"header": text.getText("a.t.inlineTimeField"),
			"format": {
				"type": "time"
			},
			"filter": {
				"type": "time"
			},
			"sortable": true,
			"tooltip": text.getText("a.t.inlineTimeField-tip", "")
		}] />
</#if>
<#if a.displayField("status")>
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
<#if a.displayField("cusid")>
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
<#if a.displayField("ctime")>
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
<#if a.displayField("uusid")>
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
<#if a.displayField("utime")>
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
		<#if a.hasPermission("~/bdelete")>
			<@p.b icon="icon-bdelete" onclick="return sampledate_list_bdelete();" label="#(button-bdelete)"/>
		</#if>
		<#if a.hasPermission("~/benalbe")>
			<@p.b icon="icon-benable" onclick="return sampledate_list_benable();" label="#(button-benable)"/>
		</#if>
		<#if a.hasPermission("~/bdisable")>
			<@p.b icon="icon-bdisable" onclick="return sampledate_list_bdisable();" label="#(button-bdisable)"/>
		</#if>
	</@p.set>

	<@p.listview id="sampledate_list" action="~/list" 
		list=result columns=_columns_ cssColumn="status"
		cssTable="table-hover table-striped"
		link={ "action": "~/view", "params": { "id": "%{top.id}" } }
		tools="%{vars.lvtools}"
	/>

	<script type="text/javascript"><!--
		function sampledate_list_bdelete() {
			return plv_submitCheckedKeys('sampledate_list', '<@p.url action="~/bdelete"/>', null, "");
		}
		function sampledate_list_benable() {
			return plv_submitCheckedKeys('sampledate_list', '<@p.url action="~/benalbe"/>', null, "");
		}
		function sampledate_list_bdisable() {
			return plv_submitCheckedKeys('sampledate_list', '<@p.url action="~/bdisable"/>', null, "");
		}
	--></script>
</div>

</body>
</html>
