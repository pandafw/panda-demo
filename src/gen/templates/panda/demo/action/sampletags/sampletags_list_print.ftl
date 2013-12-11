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
		"header": action.getText("list_print-column-id", ""), 
		"sortable": false,
		"tooltip": action.getText("list_print-column-id-tip", ""),
		"value": false			
	}, {
		"name": "styleField",
		"header": action.getText("list_print-column-styleField", ""), 
		"format": {
			"codemap": "consts.styleMap",
			"type": "code"
		},
		"sortable": false,
		"tooltip": action.getText("list_print-column-styleField-tip", ""),
		"value": false			
	}, {
		"name": "name",
		"header": action.getText("list_print-column-name", ""), 
		"sortable": false,
		"tooltip": action.getText("list_print-column-name-tip", ""),
		"value": false			
	}, {
		"name": "boolField",
		"header": action.getText("list_print-column-boolField", ""), 
		"format": {
			"type": "check"
		},
		"sortable": false,
		"tooltip": action.getText("list_print-column-boolField-tip", ""),
		"value": false			
	}, {
		"name": "intField",
		"header": action.getText("list_print-column-intField", ""), 
		"sortable": false,
		"tooltip": action.getText("list_print-column-intField-tip", ""),
		"value": false			
	}, {
		"name": "decField",
		"header": action.getText("list_print-column-decField", ""), 
		"sortable": false,
		"tooltip": action.getText("list_print-column-decField-tip", ""),
		"value": false			
	}, {
		"name": "radioField",
		"header": action.getText("list_print-column-radioField", ""), 
		"format": {
			"codemap": "consts.radioMap",
			"type": "code"
		},
		"sortable": false,
		"tooltip": action.getText("list_print-column-radioField-tip", ""),
		"value": false			
	}, {
		"name": "selectField",
		"header": action.getText("list_print-column-selectField", ""), 
		"format": {
			"codemap": "consts.selectMap",
			"type": "code"
		},
		"sortable": false,
		"tooltip": action.getText("list_print-column-selectField-tip", ""),
		"value": false			
	}, {
		"name": "checkField",
		"header": action.getText("list_print-column-checkField", ""), 
		"format": {
			"codemap": "consts.checkMap",
			"type": "code"
		},
		"sortable": false,
		"tooltip": action.getText("list_print-column-checkField-tip", ""),
		"value": false			
	}, {
		"name": "datetimeField",
		"header": action.getText("list_print-column-datetimeField", ""), 
		"format": {
			"type": "datetime"
		},
		"sortable": false,
		"tooltip": action.getText("list_print-column-datetimeField-tip", ""),
		"value": false			
	}, {
		"name": "dateField",
		"header": action.getText("list_print-column-dateField", ""), 
		"format": {
			"type": "date"
		},
		"sortable": false,
		"tooltip": action.getText("list_print-column-dateField-tip", ""),
		"value": false			
	}, {
		"name": "timeField",
		"header": action.getText("list_print-column-timeField", ""), 
		"format": {
			"type": "time"
		},
		"sortable": false,
		"tooltip": action.getText("list_print-column-timeField-tip", ""),
		"value": false			
	}, {
		"name": "htmlField",
		"header": action.getText("list_print-column-htmlField", ""), 
		"display": false,
		"sortable": false,
		"tooltip": action.getText("list_print-column-htmlField-tip", ""),
		"value": false			
	}, {
		"name": "bbcodeField",
		"header": action.getText("list_print-column-bbcodeField", ""), 
		"display": false,
		"sortable": false,
		"tooltip": action.getText("list_print-column-bbcodeField-tip", ""),
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
