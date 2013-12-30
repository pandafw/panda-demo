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

	<#include "/nuts/exts/struts2/views/action-prompt-all.ftl"/>
</div>

</body>
</html>
<#else>
<@p.text var="_fn_" name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text>
<@p.head charset="UTF-8" bom="true" contentType="text/comma-separated-values"
	noCache="true" attachment="true" filename="%{#_fn_ + '.csv'}"/>
<#assign _columns_ = [{
	"name": "id",
	"header": action.getText("d.id"), 
	"hidden": false
}, {
	"name": "tagsId",
	"header": action.getText("d.tagsId"), 
	"hidden": true
}, {
	"name": "tagsName",
	"header": action.getText("d.tagsName"), 
	"hidden": false
}, {
	"name": "fileId",
	"header": action.getText("d.fileId"), 
	"hidden": true
}, {
	"name": "fileName",
	"header": action.getText("d.fileName"), 
	"hidden": false
}] />
<@p.csv list="ds" columns=_columns_/>
</#if>