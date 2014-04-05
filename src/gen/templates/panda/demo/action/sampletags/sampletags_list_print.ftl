<html>
<head>
	<title><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<h3><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></h3>
	</div>

	<#include "/panda/exts/struts2/views/action-alert.ftl"/>

	<#assign _columns_ = [{
		"name": "_number_",
		"type": "number",
		"nowrap": true,
		"fixed": true
	}, {
		"name": "id",
		"header": action.getText("d.id", ""), 
		"sortable": false,
		"tooltip": action.getText("d.id-tip", ""),
		"value": false			
	}, {
		"name": "styleField",
		"header": action.getText("d.styleField", ""), 
		"format": {
			"codemap": "consts.styleMap",
			"type": "code"
		},
		"sortable": false,
		"tooltip": action.getText("d.styleField-tip", ""),
		"value": false			
	}, {
		"name": "name",
		"header": action.getText("d.name", ""), 
		"sortable": false,
		"tooltip": action.getText("d.name-tip", ""),
		"value": false			
	}, {
		"name": "boolField",
		"header": action.getText("d.boolField", ""), 
		"format": {
			"type": "check"
		},
		"sortable": false,
		"tooltip": action.getText("d.boolField-tip", ""),
		"value": false			
	}, {
		"name": "intField",
		"header": action.getText("d.intField", ""), 
		"sortable": false,
		"tooltip": action.getText("d.intField-tip", ""),
		"value": false			
	}, {
		"name": "decField",
		"header": action.getText("d.decField", ""), 
		"sortable": false,
		"tooltip": action.getText("d.decField-tip", ""),
		"value": false			
	}, {
		"name": "radioField",
		"header": action.getText("d.radioField", ""), 
		"format": {
			"codemap": "consts.radioMap",
			"type": "code"
		},
		"sortable": false,
		"tooltip": action.getText("d.radioField-tip", ""),
		"value": false			
	}, {
		"name": "selectField",
		"header": action.getText("d.selectField", ""), 
		"format": {
			"codemap": "consts.selectMap",
			"type": "code"
		},
		"sortable": false,
		"tooltip": action.getText("d.selectField-tip", ""),
		"value": false			
	}, {
		"name": "checkField",
		"header": action.getText("d.checkField", ""), 
		"format": {
			"codemap": "consts.checkMap",
			"type": "code"
		},
		"sortable": false,
		"tooltip": action.getText("d.checkField-tip", ""),
		"value": false			
	}, {
		"name": "datetimeField",
		"header": action.getText("d.datetimeField", ""), 
		"format": {
			"type": "datetime"
		},
		"sortable": false,
		"tooltip": action.getText("d.datetimeField-tip", ""),
		"value": false			
	}, {
		"name": "dateField",
		"header": action.getText("d.dateField", ""), 
		"format": {
			"type": "date"
		},
		"sortable": false,
		"tooltip": action.getText("d.dateField-tip", ""),
		"value": false			
	}, {
		"name": "timeField",
		"header": action.getText("d.timeField", ""), 
		"format": {
			"type": "time"
		},
		"sortable": false,
		"tooltip": action.getText("d.timeField-tip", ""),
		"value": false			
	}, {
		"name": "htmlField",
		"header": action.getText("d.htmlField", ""), 
		"display": false,
		"sortable": false,
		"tooltip": action.getText("d.htmlField-tip", ""),
		"value": false			
	}, {
		"name": "bbcodeField",
		"header": action.getText("d.bbcodeField", ""), 
		"display": false,
		"sortable": false,
		"tooltip": action.getText("d.bbcodeField-tip", ""),
		"value": false			
	}, {
		"name": "status",
		"header": action.getText("d.status", ""), 
		"format": {
			"codemap": "consts.dataStatusMap",
			"type": "code"
		},
		"hidden": false,
		"sortable": false,
		"tooltip": action.getText("d.status-tip", ""),
		"value": false			
	}, {
		"name": "cusid",
		"header": action.getText("d.cusid", ""), 
		"hidden": false,
		"sortable": false,
		"tooltip": action.getText("d.cusid-tip", ""),
		"value": false			
	}, {
		"name": "ctime",
		"header": action.getText("d.ctime", ""), 
		"format": {
			"type": "datetime"
		},
		"hidden": false,
		"sortable": false,
		"tooltip": action.getText("d.ctime-tip", ""),
		"value": false			
	}, {
		"name": "uusid",
		"header": action.getText("d.uusid", ""), 
		"hidden": false,
		"sortable": false,
		"tooltip": action.getText("d.uusid-tip", ""),
		"value": false			
	}, {
		"name": "utime",
		"header": action.getText("d.utime", ""), 
		"format": {
			"type": "datetime"
		},
		"hidden": false,
		"sortable": false,
		"tooltip": action.getText("d.utime-tip", ""),
		"value": false			
	}] />

	<@p.listview id="sampletags_list_print" action="sampletags_list_print" 
		list="ds" columns=_columns_ cssColumn="styleField"
		start="pg.s" limit="pg.l" total="pg.t" sort="so.c" dir="so.d"
		autosize="false" script="false"
	/>
</div>

</body>
</html>
