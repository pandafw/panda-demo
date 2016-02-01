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

	<#include "/action-alert.ftl"/>
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
		"name": "tagsId",
		"header": text.getText("a.t.tagsId"),
		"hidden": true
	}, {
		"name": "tagsName",
		"header": text.getText("a.t.tagsName"),
		"hidden": false
	}, {
		"name": "fileId",
		"header": text.getText("a.t.fileId"),
		"hidden": true
	}, {
		"name": "fileName",
		"header": text.getText("a.t.fileName"),
		"hidden": false
	}
] />
<@p.csv list=result columns=_columns_/>
</#if>