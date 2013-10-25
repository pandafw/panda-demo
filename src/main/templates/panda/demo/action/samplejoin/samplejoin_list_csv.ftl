<#-- This file was auto-generated by nuts.tools.codegen.FreemarkerGenerator  -->
<#if action.hasErrors()>
<html>
<head>
	<title><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></title>
</head>
<body>

<div class="n-sect">
	<div class="n-sect-head">
		<h3 class="n-sect-title"><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></h3>
	</div>
	<div class="n-sect-body">
		<#include "/panda/exts/struts2/views/action-prompt-all.ftl"/>
	</div>
</div>

</body>
</html>
<#else>
<@p.text var="_fn_" name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text>
<@p.head charset="UTF-8" bom="true" contentType="text/comma-separated-values"
	noCache="true" attachment="true" filename="%{#_fn_ + '.csv'}"/>
<#assign _columns_ = [{
	"name": "id",
	"header": action.getText("list_csv-column-id"), 
	"hidden": false
}, {
	"name": "tagsId",
	"header": action.getText("list_csv-column-tagsId"), 
	"hidden": true
}, {
	"name": "tagsName",
	"header": action.getText("list_csv-column-tagsName"), 
	"hidden": false
}, {
	"name": "fileId",
	"header": action.getText("list_csv-column-fileId"), 
	"hidden": true
}, {
	"name": "fileName",
	"header": action.getText("list_csv-column-fileName"), 
	"hidden": false
}] />
<@p.csv list="ds" columns=_columns_/>
</#if>