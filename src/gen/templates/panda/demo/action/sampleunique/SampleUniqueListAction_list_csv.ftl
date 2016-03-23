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
<#assign _well = a.getText("well-list_csv", "")/>
<#if _well?has_content>
	<div class="p-well">${_well}</div>
</#if>

	<#include "/action-alert.ftl"/>
</div>

</body>
</html>
<#else>
<@p.text var="_fn_" name="title-list_csv" escape="none"><@p.param name="title" value="#(title)"/></@p.text>
<@p.head expiry="0" charset="UTF-8" bom="true" filename="%{vars._fn_ + '.csv'}" attachment="true" contentType="text/comma-separated-values"/>
<#assign _columns_ = [] />
<#if a.displayField("id")>
	<#assign _columns_ = _columns_ + [{
			"name": "id",
			"header": a.getText("a.t.id"),
			"hidden": false
		}] />
</#if>
<#if a.displayField("name")>
	<#assign _columns_ = _columns_ + [{
			"name": "name",
			"header": a.getText("a.t.name"),
			"hidden": false
		}] />
</#if>
<#if a.displayField("compositeUnique1")>
	<#assign _columns_ = _columns_ + [{
			"name": "compositeUnique1",
			"header": a.getText("a.t.compositeUnique1"),
			"hidden": false
		}] />
</#if>
<#if a.displayField("compositeUnique2")>
	<#assign _columns_ = _columns_ + [{
			"name": "compositeUnique2",
			"header": a.getText("a.t.compositeUnique2"),
			"hidden": false
		}] />
</#if>
<@p.csv list=result columns=_columns_/>
</#if>