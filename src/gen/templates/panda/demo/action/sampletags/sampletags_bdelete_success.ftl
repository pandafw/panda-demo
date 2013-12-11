<html>
<head>
	<title><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<h3><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></h3>
	</div>

	<ul class="p-toolbar">
		<li><@p.a icon="icon-refresh" href="javascript:location.reload(true)"><@p.text name='button-refresh'/></@p.a></li>
	</ul>

	<#include "/panda/exts/struts2/views/action-alert.ftl"/>
	<br/>
	
	<#assign _columns_ = [{
		"name": "_number_",
		"type": "number",
		"nowrap": true,
		"fixed": true
	}, {
		"name": "id",
		"header": action.getText("bdelete-column-id", ""), 
		"sortable": false,
		"tooltip": action.getText("bdelete-column-id-tip", ""),
		"value": false		
	}, {
		"name": "styleField",
		"header": action.getText("bdelete-column-styleField", ""), 
		"format": {
			"type": "code",
			"codemap": "consts.styleMap"
		},
		"sortable": false,
		"tooltip": action.getText("bdelete-column-styleField-tip", ""),
		"value": false		
	}, {
		"name": "name",
		"header": action.getText("bdelete-column-name", ""), 
		"sortable": false,
		"tooltip": action.getText("bdelete-column-name-tip", ""),
		"value": false		
	}, {
		"name": "boolField",
		"header": action.getText("bdelete-column-boolField", ""), 
		"format": {
			"type": "check"
		},
		"sortable": false,
		"tooltip": action.getText("bdelete-column-boolField-tip", ""),
		"value": false		
	}, {
		"name": "intField",
		"header": action.getText("bdelete-column-intField", ""), 
		"sortable": false,
		"tooltip": action.getText("bdelete-column-intField-tip", ""),
		"value": false		
	}, {
		"name": "decField",
		"header": action.getText("bdelete-column-decField", ""), 
		"sortable": false,
		"tooltip": action.getText("bdelete-column-decField-tip", ""),
		"value": false		
	}, {
		"name": "radioField",
		"header": action.getText("bdelete-column-radioField", ""), 
		"format": {
			"type": "code",
			"codemap": "consts.radioMap"
		},
		"sortable": false,
		"tooltip": action.getText("bdelete-column-radioField-tip", ""),
		"value": false		
	}, {
		"name": "selectField",
		"header": action.getText("bdelete-column-selectField", ""), 
		"format": {
			"type": "code",
			"codemap": "consts.selectMap"
		},
		"sortable": false,
		"tooltip": action.getText("bdelete-column-selectField-tip", ""),
		"value": false		
	}, {
		"name": "checkField",
		"header": action.getText("bdelete-column-checkField", ""), 
		"format": {
			"type": "code",
			"codemap": "consts.checkMap"
		},
		"sortable": false,
		"tooltip": action.getText("bdelete-column-checkField-tip", ""),
		"value": false		
	}, {
		"name": "datetimeField",
		"header": action.getText("bdelete-column-datetimeField", ""), 
		"format": {
			"type": "datetime"
		},
		"sortable": false,
		"tooltip": action.getText("bdelete-column-datetimeField-tip", ""),
		"value": false		
	}, {
		"name": "dateField",
		"header": action.getText("bdelete-column-dateField", ""), 
		"format": {
			"type": "date"
		},
		"sortable": false,
		"tooltip": action.getText("bdelete-column-dateField-tip", ""),
		"value": false		
	}, {
		"name": "timeField",
		"header": action.getText("bdelete-column-timeField", ""), 
		"format": {
			"type": "time"
		},
		"sortable": false,
		"tooltip": action.getText("bdelete-column-timeField-tip", ""),
		"value": false		
	}, {
		"name": "htmlField",
		"header": action.getText("bdelete-column-htmlField", ""), 
		"display": false,
		"sortable": false,
		"tooltip": action.getText("bdelete-column-htmlField-tip", ""),
		"value": false		
	}, {
		"name": "bbcodeField",
		"header": action.getText("bdelete-column-bbcodeField", ""), 
		"display": false,
		"sortable": false,
		"tooltip": action.getText("bdelete-column-bbcodeField-tip", ""),
		"value": false		
	}] />

	<@p.listview id="sampletags_bdelete"
		list="ds" columns=_columns_ cssColumn="styleField"
	>
	</@p.listview>
	
	<br/>
	<div class="p-tcenter">
		<#if action.hasPermission("sampletags_list")>
			<@p.url var="_u_" action='sampletags_list'/>
			<@p.submit icon="icon-list" onclick="location.href='${_u_}';return false;" theme="simple"><@p.text name='button-list'/></@p.submit>
		</#if>
	</div>
</div>

</body>
</html>
