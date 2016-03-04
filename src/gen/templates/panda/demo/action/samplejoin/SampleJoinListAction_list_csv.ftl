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
<@p.text var="_fn_" name="title-list_csv" escape="none"><@p.param name="title" value="#(title)"/></@p.text>
<@p.head expiry="0" charset="UTF-8" bom="true" filename="%{vars._fn_ + '.csv'}" attachment="true" contentType="text/comma-separated-values"/>
<#assign _columns_ = [] />
<#if a.displayField("id")>
	<#assign _columns_ = _columns_ + [{
			"name": "id",
			"header": text.getText("a.t.id"),
			"hidden": false
		}] />
</#if>
<#if a.displayField("tagsId")>
	<#assign _columns_ = _columns_ + [{
			"name": "tagsId",
			"header": text.getText("a.t.tagsId"),
			"hidden": true
		}] />
</#if>
<#if a.displayField("tagsName")>
	<#assign _columns_ = _columns_ + [{
			"name": "tagsName",
			"header": text.getText("a.t.tagsName"),
			"hidden": false
		}] />
</#if>
<#if a.displayField("fileId")>
	<#assign _columns_ = _columns_ + [{
			"name": "fileId",
			"header": text.getText("a.t.fileId"),
			"hidden": true
		}] />
</#if>
<#if a.displayField("fileName")>
	<#assign _columns_ = _columns_ + [{
			"name": "fileName",
			"header": text.getText("a.t.fileName"),
			"hidden": false
		}] />
</#if>
<@p.csv list=result columns=_columns_/>
</#if>