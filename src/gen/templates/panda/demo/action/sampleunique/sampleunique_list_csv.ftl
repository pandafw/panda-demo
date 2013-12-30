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
	"name": "name",
	"header": action.getText("d.name"), 
	"hidden": false
}, {
	"name": "compositeUnique1",
	"header": action.getText("d.compositeUnique1"), 
	"hidden": false
}, {
	"name": "compositeUnique2",
	"header": action.getText("d.compositeUnique2"), 
	"hidden": false
}] />
<@p.csv list="ds" columns=_columns_/>
</#if>