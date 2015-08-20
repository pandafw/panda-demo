<#if actionErrors?has_content>
<html>
<head>
	<title><@p.text name="title-list_csv"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<h3><@p.text name="title-list_csv"><@p.param name="title" value="#(title)"/></@p.text></h3>
	</div>

	<#include "/panda/mvc/view/action-alert.ftl"/>
</div>

</body>
</html>
<#else>
<@p.text var="_fn_" name="title-list_csv"><@p.param name="title" value="#(title)"/></@p.text>
<@p.head expiry="0" charset="UTF-8" bom="true" filename="%{vars._fn_ + '.csv'}" attachment="true" contentType="text/comma-separated-values"/>
<#assign _columns_ = [{
	"name": "id",
	"header": text.getText("a.t.id"),
	"hidden": false
}, {
	"name": "styleField",
	"header": text.getText("a.t.styleField"),
	"format": {
		"codemap": consts.styleMap,
		"type": "code"
	},
	"hidden": false
}, {
	"name": "name",
	"header": text.getText("a.t.name"),
	"hidden": false
}, {
	"name": "boolField",
	"header": text.getText("a.t.boolField"),
	"format": {
		"type": "check"
	},
	"hidden": false
}, {
	"name": "intField",
	"header": text.getText("a.t.intField"),
	"hidden": false
}, {
	"name": "decField",
	"header": text.getText("a.t.decField"),
	"hidden": false
}, {
	"name": "radioField",
	"header": text.getText("a.t.radioField"),
	"format": {
		"codemap": consts.radioMap,
		"type": "code"
	},
	"hidden": false
}, {
	"name": "selectField",
	"header": text.getText("a.t.selectField"),
	"format": {
		"codemap": consts.selectMap,
		"type": "code"
	},
	"hidden": false
}, {
	"name": "checkField",
	"header": text.getText("a.t.checkField"),
	"format": {
		"codemap": consts.checkMap,
		"type": "code"
	},
	"hidden": false
}, {
	"name": "datetimeField",
	"header": text.getText("a.t.datetimeField"),
	"format": {
		"type": "datetime"
	},
	"hidden": false
}, {
	"name": "dateField",
	"header": text.getText("a.t.dateField"),
	"format": {
		"type": "date"
	},
	"hidden": false
}, {
	"name": "timeField",
	"header": text.getText("a.t.timeField"),
	"format": {
		"type": "time"
	},
	"hidden": false
}, {
	"name": "status",
	"header": text.getText("a.t.status"),
	"format": {
		"codemap": consts.dataStatusMap,
		"type": "code"
	},
	"hidden": false
}, {
	"name": "cusid",
	"header": text.getText("a.t.cusid"),
	"hidden": false
}, {
	"name": "ctime",
	"header": text.getText("a.t.ctime"),
	"format": {
		"type": "datetime"
	},
	"hidden": false
}, {
	"name": "uusid",
	"header": text.getText("a.t.uusid"),
	"hidden": false
}, {
	"name": "utime",
	"header": text.getText("a.t.utime"),
	"format": {
		"type": "datetime"
	},
	"hidden": false
}] />
<@p.csv list=result columns=_columns_/>
</#if>