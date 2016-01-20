<html>
<head>
	<title><@p.text name="title-list_print"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<h3><@p.i icon="icon"/> <@p.text name="title-list_print"><@p.param name="title" value="#(title)"/></@p.text></h3>
	</div>

	<#include "/action-alert.ftl"/>

	<#assign _columns_ = [{
			"name": "_number_",
			"type": "number",
			"header": text.getText("listview-th-number", ""),
			"fixed": true
		}, {
			"name": "id",
			"value": false,
			"header": text.getText("a.t.id"),
			"sortable": false,
			"tooltip": text.getText("a.t.id-tip", "")
		}, {
			"name": "styleField",
			"value": false,
			"header": text.getText("a.t.styleField"),
			"format": {
				"codemap": consts.styleMap,
				"type": "code"
			},
			"sortable": false,
			"tooltip": text.getText("a.t.styleField-tip", "")
		}, {
			"name": "name",
			"value": false,
			"header": text.getText("a.t.name"),
			"sortable": false,
			"tooltip": text.getText("a.t.name-tip", "")
		}, {
			"name": "boolField",
			"value": false,
			"header": text.getText("a.t.boolField"),
			"format": {
				"type": "check"
			},
			"sortable": false,
			"tooltip": text.getText("a.t.boolField-tip", "")
		}, {
			"name": "intField",
			"value": false,
			"header": text.getText("a.t.intField"),
			"sortable": false,
			"tooltip": text.getText("a.t.intField-tip", "")
		}, {
			"name": "decField",
			"value": false,
			"header": text.getText("a.t.decField"),
			"sortable": false,
			"tooltip": text.getText("a.t.decField-tip", "")
		}, {
			"name": "radioField",
			"value": false,
			"header": text.getText("a.t.radioField"),
			"format": {
				"codemap": consts.radioMap,
				"type": "code"
			},
			"sortable": false,
			"tooltip": text.getText("a.t.radioField-tip", "")
		}, {
			"name": "selectField",
			"value": false,
			"header": text.getText("a.t.selectField"),
			"format": {
				"codemap": consts.selectMap,
				"type": "code"
			},
			"sortable": false,
			"tooltip": text.getText("a.t.selectField-tip", "")
		}, {
			"name": "checkField",
			"value": false,
			"header": text.getText("a.t.checkField"),
			"format": {
				"codemap": consts.checkMap,
				"type": "code"
			},
			"sortable": false,
			"tooltip": text.getText("a.t.checkField-tip", "")
		}, {
			"name": "datetimeField",
			"value": false,
			"header": text.getText("a.t.datetimeField"),
			"format": {
				"type": "datetime"
			},
			"sortable": false,
			"tooltip": text.getText("a.t.datetimeField-tip", "")
		}, {
			"name": "dateField",
			"value": false,
			"header": text.getText("a.t.dateField"),
			"format": {
				"type": "date"
			},
			"sortable": false,
			"tooltip": text.getText("a.t.dateField-tip", "")
		}, {
			"name": "timeField",
			"value": false,
			"header": text.getText("a.t.timeField"),
			"format": {
				"type": "time"
			},
			"sortable": false,
			"tooltip": text.getText("a.t.timeField-tip", "")
		}, {
			"name": "htmlField",
			"value": false,
			"header": text.getText("a.t.htmlField"),
			"display": false,
			"sortable": false,
			"tooltip": text.getText("a.t.htmlField-tip", "")
		}, {
			"name": "bbcodeField",
			"value": false,
			"header": text.getText("a.t.bbcodeField"),
			"display": false,
			"sortable": false,
			"tooltip": text.getText("a.t.bbcodeField-tip", "")
		}, {
			"name": "status",
			"value": false,
			"header": text.getText("a.t.status"),
			"format": {
				"codemap": consts.dataStatusMap,
				"type": "code"
			},
			"hidden": false,
			"sortable": false,
			"tooltip": text.getText("a.t.status-tip", "")
		}, {
			"name": "cusid",
			"value": false,
			"header": text.getText("a.t.cusid"),
			"hidden": false,
			"sortable": false,
			"tooltip": text.getText("a.t.cusid-tip", "")
		}, {
			"name": "ctime",
			"value": false,
			"header": text.getText("a.t.ctime"),
			"format": {
				"type": "datetime"
			},
			"hidden": false,
			"sortable": false,
			"tooltip": text.getText("a.t.ctime-tip", "")
		}, {
			"name": "uusid",
			"value": false,
			"header": text.getText("a.t.uusid"),
			"hidden": false,
			"sortable": false,
			"tooltip": text.getText("a.t.uusid-tip", "")
		}, {
			"name": "utime",
			"value": false,
			"header": text.getText("a.t.utime"),
			"format": {
				"type": "datetime"
			},
			"hidden": false,
			"sortable": false,
			"tooltip": text.getText("a.t.utime-tip", "")
		}
	] />

	<@p.listview id="sampletags_list_print" action="~/list_print" 
		list=result columns=_columns_ cssColumn="styleField"
		cssTable="table-striped table-striped" autosize="false" script="false"
	/>
</div>

</body>
</html>
