<html>
<head>
	<title><@p.text name="title-list_popup"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<h3><@p.i icon="icon"/> <@p.text name="title-list_popup"><@p.param name="title" value="#(title)"/></@p.text></h3>
	</div>
<#if text.getText("well-list_popup", "")?has_content>
	<div class="p-well"><@p.text name="well-list_popup"/></div>
</#if>

	<#include "/action-alert.ftl"/>

	<#assign _columns_ = [{
			"name": "_number_",
			"type": "number",
			"header": text.getText("listview-th-number", ""),
			"fixed": true
		}] />
<#if a.displayColumn("id")>
	<#assign _columns_ = _columns_ + [{
			"name": "id",
			"value": true,
			"header": text.getText("a.t.id"),
			"filter": {
				"type": "number"
			},
			"sortable": true,
			"tooltip": text.getText("a.t.id-tip", "")
		}] />
</#if>
<#if a.displayColumn("name")>
	<#assign _columns_ = _columns_ + [{
			"name": "name",
			"value": true,
			"header": text.getText("a.t.name"),
			"filter": {
				"type": "string"
			},
			"sortable": true,
			"tooltip": text.getText("a.t.name-tip", "")
		}] />
</#if>
<#if a.displayColumn("status")>
	<#assign _columns_ = _columns_ + [{
			"name": "status",
			"value": true,
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
			"sortable": true,
			"tooltip": text.getText("a.t.status-tip", "")
		}] />
</#if>
<#if a.displayColumn("cusid")>
	<#assign _columns_ = _columns_ + [{
			"name": "cusid",
			"value": true,
			"header": text.getText("a.t.cusid"),
			"filter": {
				"type": "number"
			},
			"hidden": false,
			"sortable": true,
			"tooltip": text.getText("a.t.cusid-tip", "")
		}] />
</#if>
<#if a.displayColumn("ctime")>
	<#assign _columns_ = _columns_ + [{
			"name": "ctime",
			"value": true,
			"header": text.getText("a.t.ctime"),
			"format": {
				"type": "datetime"
			},
			"filter": {
				"type": "datetime"
			},
			"hidden": false,
			"sortable": true,
			"tooltip": text.getText("a.t.ctime-tip", "")
		}] />
</#if>
<#if a.displayColumn("uusid")>
	<#assign _columns_ = _columns_ + [{
			"name": "uusid",
			"value": true,
			"header": text.getText("a.t.uusid"),
			"filter": {
				"type": "number"
			},
			"hidden": false,
			"sortable": true,
			"tooltip": text.getText("a.t.uusid-tip", "")
		}] />
</#if>
<#if a.displayColumn("utime")>
	<#assign _columns_ = _columns_ + [{
			"name": "utime",
			"value": true,
			"header": text.getText("a.t.utime"),
			"format": {
				"type": "datetime"
			},
			"filter": {
				"type": "datetime"
			},
			"hidden": false,
			"sortable": true,
			"tooltip": text.getText("a.t.utime-tip", "")
		}] />
</#if>


	<@p.listview id="samplefile_list_popup" action="~/list_popup" 
		list=result columns=_columns_ cssColumn="status"
		headPager="true" singleSelect="true" toggleSelect="false" autosize="false"
		cssClass="p-lv-clickable" cssTable="table-hover table-striped"
		onrowclick="$.popup().callback(plv_getRowData(this));"
	/>
</div>

</body>
</html>
