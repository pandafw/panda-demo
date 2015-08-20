<html>
<head>
	<title><@p.text name="title-list_print"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<h3><@p.text name="title-list_print"><@p.param name="title" value="#(title)"/></@p.text></h3>
	</div>

	<#include "/panda/mvc/view/action-alert.ftl"/>

	<#assign _columns_ = [{
		"name": "_number_",
		"type": "number",
		"nowrap": true,
		"fixed": true
	}, {
		"name": "id",
		"header": text.getText("a.t.id"),
		"sortable": false,
		"tooltip": text.getText("a.t.id-tip", ""),
		"value": false			
	}, {
		"name": "name",
		"header": text.getText("a.t.name"),
		"sortable": false,
		"tooltip": text.getText("a.t.name-tip", ""),
		"value": false			
	}, {
		"name": "compositeUnique1",
		"header": text.getText("a.t.compositeUnique1"),
		"sortable": false,
		"tooltip": text.getText("a.t.compositeUnique1-tip", ""),
		"value": false			
	}, {
		"name": "compositeUnique2",
		"header": text.getText("a.t.compositeUnique2"),
		"sortable": false,
		"tooltip": text.getText("a.t.compositeUnique2-tip", ""),
		"value": false			
	}, {
		"name": "status",
		"header": text.getText("a.t.status"),
		"format": {
			"codemap": consts.dataStatusMap,
			"type": "code"
		},
		"hidden": false,
		"sortable": false,
		"tooltip": text.getText("a.t.status-tip", ""),
		"value": false			
	}, {
		"name": "cusid",
		"header": text.getText("a.t.cusid"),
		"hidden": false,
		"sortable": false,
		"tooltip": text.getText("a.t.cusid-tip", ""),
		"value": false			
	}, {
		"name": "ctime",
		"header": text.getText("a.t.ctime"),
		"format": {
			"type": "datetime"
		},
		"hidden": false,
		"sortable": false,
		"tooltip": text.getText("a.t.ctime-tip", ""),
		"value": false			
	}, {
		"name": "uusid",
		"header": text.getText("a.t.uusid"),
		"hidden": false,
		"sortable": false,
		"tooltip": text.getText("a.t.uusid-tip", ""),
		"value": false			
	}, {
		"name": "utime",
		"header": text.getText("a.t.utime"),
		"format": {
			"type": "datetime"
		},
		"hidden": false,
		"sortable": false,
		"tooltip": text.getText("a.t.utime-tip", ""),
		"value": false			
	}] />

	<@p.listview id="sampleunique_list_print" action="~/list_print" 
		list=result columns=_columns_ cssColumn="status"
		autosize="false" script="false"
	/>
</div>

</body>
</html>
