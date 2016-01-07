<html>
<head>
	<title><@p.text name="title-list_print"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<h3><@p.i icon="icon"/> <@p.text name="title-list_print"><@p.param name="title" value="#(title)"/></@p.text></h3>
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
		"name": "popupDatetimeField",
		"header": text.getText("a.t.popupDatetimeField"),
		"format": {
			"type": "datetime"
		},
		"sortable": false,
		"tooltip": text.getText("a.t.popupDatetimeField-tip", ""),
		"value": false			
	}, {
		"name": "popupDateField",
		"header": text.getText("a.t.popupDateField"),
		"format": {
			"type": "date"
		},
		"sortable": false,
		"tooltip": text.getText("a.t.popupDateField-tip", ""),
		"value": false			
	}, {
		"name": "popupTimeField",
		"header": text.getText("a.t.popupTimeField"),
		"format": {
			"type": "time"
		},
		"sortable": false,
		"tooltip": text.getText("a.t.popupTimeField-tip", ""),
		"value": false			
	}, {
		"name": "inlineDatetimeField",
		"header": text.getText("a.t.inlineDatetimeField"),
		"format": {
			"type": "datetime"
		},
		"sortable": false,
		"tooltip": text.getText("a.t.inlineDatetimeField-tip", ""),
		"value": false			
	}, {
		"name": "inlineDateField",
		"header": text.getText("a.t.inlineDateField"),
		"format": {
			"type": "date"
		},
		"sortable": false,
		"tooltip": text.getText("a.t.inlineDateField-tip", ""),
		"value": false			
	}, {
		"name": "inlineTimeField",
		"header": text.getText("a.t.inlineTimeField"),
		"format": {
			"type": "time"
		},
		"sortable": false,
		"tooltip": text.getText("a.t.inlineTimeField-tip", ""),
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

	<@p.listview id="sampledate_list_print" action="~/list_print" 
		list=result columns=_columns_ cssColumn="status"
		autosize="false" script="false"
	/>
</div>

</body>
</html>
