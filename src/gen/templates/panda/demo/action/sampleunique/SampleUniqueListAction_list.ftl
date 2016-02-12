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
</li><#if action.hasPermission("~/list_print")><li><@p.a icon="icon-print" target="_blank" action="~/list_print" label="#(button-print)"/>
</li></#if><#if action.hasPermission("~/list_csv")><li><@p.a icon="icon-csv" target="_blank" action="~/list_csv" label="#(button-csv)"/>
</li></#if><#if action.hasPermission("~/list_json")><li><@p.a icon="icon-json" target="_blank" action="~/list_json" label="#(button-json)"/>
</li></#if><#if action.hasPermission("~/list_xml")><li><@p.a icon="icon-xml" target="_blank" action="~/list_xml" label="#(button-xml)"/>
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
<#if a.displayColumn("name")>
	<#assign _columns_ = _columns_ + [{
			"name" : "name",
			"header": text.getText("a.t.name"),
			"filter": {
				"type": "string"
			},
			"sortable": true,
			"tooltip": text.getText("a.t.name-tip", "")
		}] />
</#if>
<#if a.displayColumn("compositeUnique1")>
	<#assign _columns_ = _columns_ + [{
			"name" : "compositeUnique1",
			"header": text.getText("a.t.compositeUnique1"),
			"filter": {
				"type": "string"
			},
			"sortable": true,
			"tooltip": text.getText("a.t.compositeUnique1-tip", "")
		}] />
</#if>
<#if a.displayColumn("compositeUnique2")>
	<#assign _columns_ = _columns_ + [{
			"name" : "compositeUnique2",
			"header": text.getText("a.t.compositeUnique2"),
			"filter": {
				"type": "string"
			},
			"sortable": true,
			"tooltip": text.getText("a.t.compositeUnique2-tip", "")
		}] />
</#if>

	<#if a.actionsAlignRight>
		<#assign _columns_ = _columns_ + _actionc_![]/>
	</#if>
	<@p.set var="lvtools">
		<#if action.hasPermission("~/bdelete")>
			<@p.b icon="icon-bdelete" onclick="return sampleunique_list_bdelete();" label="#(button-bdelete)"/>
		</#if>
		<#if action.hasPermission("~/benalbe")>
			<@p.b icon="icon-benable" onclick="return sampleunique_list_benable();" label="#(button-benable)"/>
		</#if>
		<#if action.hasPermission("~/bdisable")>
			<@p.b icon="icon-bdisable" onclick="return sampleunique_list_bdisable();" label="#(button-bdisable)"/>
		</#if>
	</@p.set>

	<@p.listview id="sampleunique_list" action="~/list" 
		list=result columns=_columns_ cssColumn="status"
		cssTable="table-hover table-striped"
		link={ "action": "~/view", "params": { "id": "%{top.id}" } }
		tools="%{vars.lvtools}"
	/>

	<script type="text/javascript"><!--
		function sampleunique_list_bdelete() {
			return plv_submitCheckedKeys('sampleunique_list', '<@p.url action="~/bdelete"/>');
		}
		function sampleunique_list_benable() {
			return plv_submitCheckedKeys('sampleunique_list', '<@p.url action="~/benalbe"/>');
		}
		function sampleunique_list_bdisable() {
			return plv_submitCheckedKeys('sampleunique_list', '<@p.url action="~/bdisable"/>');
		}
	--></script>
</div>

</body>
</html>
