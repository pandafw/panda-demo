<html>
<head>
	<title><@p.text name="title-list_popup"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<h3><@p.i icon="icon"/> <@p.text name="title-list_popup"><@p.param name="title" value="#(title)"/></@p.text></h3>
	</div>

	<#include "/action-alert.ftl"/>

	<#assign _columns_ = [{
			"name": "_number_",
			"type": "number",
			"header": text.getText("listview-th-number", ""),
			"fixed": true
		}, {
			"name": "id",
			"value": true,
			"header": text.getText("a.t.id"),
			"filter": {
				"type": "number"
			},
			"sortable": true,
			"tooltip": text.getText("a.t.id-tip", "")
		}, {
			"name": "name",
			"value": true,
			"header": text.getText("a.t.name"),
			"filter": {
				"type": "string"
			},
			"sortable": true,
			"tooltip": text.getText("a.t.name-tip", "")
		}, {
			"name": "status",
			"value": true,
			"header": text.getText("a.t.status"),
			"format": {
				"codemap": consts.dataStatusMap,
				"type": "code"
			},
			"filter": {
				"list": consts.dataStatusMap,
				"type": "radio"
			},
			"hidden": false,
			"sortable": true,
			"tooltip": text.getText("a.t.status-tip", "")
		}, {
			"name": "cusid",
			"value": true,
			"header": text.getText("a.t.cusid"),
			"filter": {
				"type": "number"
			},
			"hidden": false,
			"sortable": true,
			"tooltip": text.getText("a.t.cusid-tip", "")
		}, {
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
		}, {
			"name": "uusid",
			"value": true,
			"header": text.getText("a.t.uusid"),
			"filter": {
				"type": "number"
			},
			"hidden": false,
			"sortable": true,
			"tooltip": text.getText("a.t.uusid-tip", "")
		}, {
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
		}
	] />

	<@p.listview id="samplefile_list_popup" action="~/list_popup" 
		list=result columns=_columns_ cssColumn="status"
		headPager="true" singleSelect="true" toggleSelect="false" autosize="false"
		cssClass="p-lv-clickable" cssTable="table-hover table-striped"
		onrowclick="$.popup().callback(plv_getRowData(this));"
	/>
</div>

</body>
</html>
