<#if actionErrors?has_content>
<html>
<head>
	<title><@p.text name="title-list_csv"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<h3><@p.i icon="icon"/> <@p.text name="title-list_csv"><@p.param name="title" value="#(title)"/></@p.text></h3>
	</div>
<#if text.getText("well-list_csv", "")?has_content>
	<div class="p-well"><@p.text name="well-list_csv"/></div>
</#if>

	<#include "/action-alert.ftl"/>
</div>

</body>
</html>
<#else>
<@p.text var="_fn_" name="title-list_csv"><@p.param name="title" value="#(title)"/></@p.text>
<@p.head expiry="0" charset="UTF-8" bom="true" filename="%{vars._fn_ + '.csv'}" attachment="true" contentType="text/comma-separated-values"/>
<#assign _columns_ = [] />
<#if a.displayColumn("id")>
	<#assign _columns_ = _columns_ + [{
			"name": "id",
			"header": text.getText("a.t.id"),
			"hidden": false
		}] />
</#if>
<#if a.displayColumn("styleField")>
	<#assign _columns_ = _columns_ + [{
			"name": "styleField",
			"header": text.getText("a.t.styleField"),
			"format": {
				"codemap": consts.styleMap,
				"type": "code"
			},
			"hidden": false
		}] />
</#if>
<#if a.displayColumn("name")>
	<#assign _columns_ = _columns_ + [{
			"name": "name",
			"header": text.getText("a.t.name"),
			"hidden": false
		}] />
</#if>
<#if a.displayColumn("boolField")>
	<#assign _columns_ = _columns_ + [{
			"name": "boolField",
			"header": text.getText("a.t.boolField"),
			"format": {
				"type": "check"
			},
			"hidden": false
		}] />
</#if>
<#if a.displayColumn("intField")>
	<#assign _columns_ = _columns_ + [{
			"name": "intField",
			"header": text.getText("a.t.intField"),
			"hidden": false
		}] />
</#if>
<#if a.displayColumn("decField")>
	<#assign _columns_ = _columns_ + [{
			"name": "decField",
			"header": text.getText("a.t.decField"),
			"hidden": false
		}] />
</#if>
<#if a.displayColumn("radioField")>
	<#assign _columns_ = _columns_ + [{
			"name": "radioField",
			"header": text.getText("a.t.radioField"),
			"format": {
				"codemap": consts.radioMap,
				"type": "code"
			},
			"hidden": false
		}] />
</#if>
<#if a.displayColumn("selectField")>
	<#assign _columns_ = _columns_ + [{
			"name": "selectField",
			"header": text.getText("a.t.selectField"),
			"format": {
				"codemap": consts.selectMap,
				"type": "code"
			},
			"hidden": false
		}] />
</#if>
<#if a.displayColumn("checkField")>
	<#assign _columns_ = _columns_ + [{
			"name": "checkField",
			"header": text.getText("a.t.checkField"),
			"format": {
				"codemap": consts.checkMap,
				"type": "code"
			},
			"hidden": false
		}] />
</#if>
<#if a.displayColumn("datetimeField")>
	<#assign _columns_ = _columns_ + [{
			"name": "datetimeField",
			"header": text.getText("a.t.datetimeField"),
			"format": {
				"type": "datetime"
			},
			"hidden": false
		}] />
</#if>
<#if a.displayColumn("dateField")>
	<#assign _columns_ = _columns_ + [{
			"name": "dateField",
			"header": text.getText("a.t.dateField"),
			"format": {
				"type": "date"
			},
			"hidden": false
		}] />
</#if>
<#if a.displayColumn("timeField")>
	<#assign _columns_ = _columns_ + [{
			"name": "timeField",
			"header": text.getText("a.t.timeField"),
			"format": {
				"type": "time"
			},
			"hidden": false
		}] />
</#if>
<#if a.displayColumn("status")>
	<#assign _columns_ = _columns_ + [{
			"name": "status",
			"header": text.getText("a.t.status"),
			"format": {
				"codemap": consts.dataStatusMap,
				"type": "code"
			},
			"hidden": false
		}] />
</#if>
<#if a.displayColumn("cusid")>
	<#assign _columns_ = _columns_ + [{
			"name": "cusid",
			"header": text.getText("a.t.cusid"),
			"hidden": false
		}] />
</#if>
<#if a.displayColumn("ctime")>
	<#assign _columns_ = _columns_ + [{
			"name": "ctime",
			"header": text.getText("a.t.ctime"),
			"format": {
				"type": "datetime"
			},
			"hidden": false
		}] />
</#if>
<#if a.displayColumn("uusid")>
	<#assign _columns_ = _columns_ + [{
			"name": "uusid",
			"header": text.getText("a.t.uusid"),
			"hidden": false
		}] />
</#if>
<#if a.displayColumn("utime")>
	<#assign _columns_ = _columns_ + [{
			"name": "utime",
			"header": text.getText("a.t.utime"),
			"format": {
				"type": "datetime"
			},
			"hidden": false
		}] />
</#if>
<@p.csv list=result columns=_columns_/>
</#if>