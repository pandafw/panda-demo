<#-- This file was auto-generated by nuts.tools.codegen.FreemarkerGenerator  -->
<#if action.hasErrors()>
<html>
<head>
	<title><@n.text name="title-${actionResult}"><@s.param><@n.text name="title"/></@s.param></@n.text></title>
</head>
<body>

<div class="n-sect">
	<div class="n-sect-head">
		<h3 class="n-sect-title"><@n.text name="title-${actionResult}"><@s.param><@n.text name="title"/></@s.param></@n.text></h3>
	</div>
	<div class="n-sect-body">
		<#include "/nuts/exts/struts2/views/action-prompt-all.ftl"/>
	</div>
</div>

</body>
</html>
<#else>
<@n.text var="_fn_" name="title-${actionResult}"><@s.param><@n.text name="title"/></@s.param></@n.text>
<@n.head charset="UTF-8" bom="true" contentType="text/comma-separated-values"
	noCache="true" attachment="true" filename="%{#_fn_ + '.csv'}"/>
<#assign _columns_ = [{
	"name": "id",
	"header": action.getText("list_csv-column-id"), 
	"hidden": false
}, {
	"name": "name",
	"header": action.getText("list_csv-column-name"), 
	"hidden": false
}] />
<@n.csv list="ds" columns=_columns_/>
</#if>