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
<#if a.displayColumn("popupDatetimeField")>
	<#assign _columns_ = _columns_ + [{
			"name": "popupDatetimeField",
			"header": text.getText("a.t.popupDatetimeField"),
			"format": {
				"type": "datetime"
			},
			"hidden": false
		}] />
</#if>
<#if a.displayColumn("popupDateField")>
	<#assign _columns_ = _columns_ + [{
			"name": "popupDateField",
			"header": text.getText("a.t.popupDateField"),
			"format": {
				"type": "date"
			},
			"hidden": false
		}] />
</#if>
<#if a.displayColumn("popupTimeField")>
	<#assign _columns_ = _columns_ + [{
			"name": "popupTimeField",
			"header": text.getText("a.t.popupTimeField"),
			"format": {
				"type": "time"
			},
			"hidden": false
		}] />
</#if>
<#if a.displayColumn("inlineDatetimeField")>
	<#assign _columns_ = _columns_ + [{
			"name": "inlineDatetimeField",
			"header": text.getText("a.t.inlineDatetimeField"),
			"format": {
				"type": "datetime"
			},
			"hidden": false
		}] />
</#if>
<#if a.displayColumn("inlineDateField")>
	<#assign _columns_ = _columns_ + [{
			"name": "inlineDateField",
			"header": text.getText("a.t.inlineDateField"),
			"format": {
				"type": "date"
			},
			"hidden": false
		}] />
</#if>
<#if a.displayColumn("inlineTimeField")>
	<#assign _columns_ = _columns_ + [{
			"name": "inlineTimeField",
			"header": text.getText("a.t.inlineTimeField"),
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