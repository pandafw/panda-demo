<#if action.hasErrors()>
<html>
<head>
	<title><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<h3><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></h3>
	</div>

	<#include "/panda/exts/struts2/views/action-alert-all.ftl"/>
</div>

</body>
</html>
<#else>
<@p.text var="_fn_" name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text>
<@p.head expiry="0" charset="UTF-8" bom="true" filename="%{#_fn_ + '.csv'}" attachment="true" contentType="text/comma-separated-values"/>
<#assign _columns_ = [{
	"name": "id",
	"header": action.getText("d.id"), 
	"hidden": false
}, {
	"name": "styleField",
	"header": action.getText("d.styleField"), 
	"format": {
		"codemap": "consts.styleMap",
		"type": "code"
	},
	"hidden": false
}, {
	"name": "name",
	"header": action.getText("d.name"), 
	"hidden": false
}, {
	"name": "boolField",
	"header": action.getText("d.boolField"), 
	"format": {
		"type": "check"
	},
	"hidden": false
}, {
	"name": "intField",
	"header": action.getText("d.intField"), 
	"hidden": false
}, {
	"name": "decField",
	"header": action.getText("d.decField"), 
	"hidden": false
}, {
	"name": "radioField",
	"header": action.getText("d.radioField"), 
	"format": {
		"codemap": "consts.radioMap",
		"type": "code"
	},
	"hidden": false
}, {
	"name": "selectField",
	"header": action.getText("d.selectField"), 
	"format": {
		"codemap": "consts.selectMap",
		"type": "code"
	},
	"hidden": false
}, {
	"name": "checkField",
	"header": action.getText("d.checkField"), 
	"format": {
		"codemap": "consts.checkMap",
		"type": "code"
	},
	"hidden": false
}, {
	"name": "datetimeField",
	"header": action.getText("d.datetimeField"), 
	"format": {
		"type": "datetime"
	},
	"hidden": false
}, {
	"name": "dateField",
	"header": action.getText("d.dateField"), 
	"format": {
		"type": "date"
	},
	"hidden": false
}, {
	"name": "timeField",
	"header": action.getText("d.timeField"), 
	"format": {
		"type": "time"
	},
	"hidden": false
}, {
	"name": "status",
	"header": action.getText("d.status"), 
	"format": {
		"codemap": "consts.dataStatusMap",
		"type": "code"
	},
	"hidden": false
}, {
	"name": "cusid",
	"header": action.getText("d.cusid"), 
	"hidden": false
}, {
	"name": "ctime",
	"header": action.getText("d.ctime"), 
	"format": {
		"type": "datetime"
	},
	"hidden": false
}, {
	"name": "uusid",
	"header": action.getText("d.uusid"), 
	"hidden": false
}, {
	"name": "utime",
	"header": action.getText("d.utime"), 
	"format": {
		"type": "datetime"
	},
	"hidden": false
}] />
<@p.csv list="ds" columns=_columns_/>
</#if>