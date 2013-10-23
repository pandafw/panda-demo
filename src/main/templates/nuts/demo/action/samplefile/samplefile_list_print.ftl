<#-- This file was auto-generated by nuts.tools.codegen.FreemarkerGenerator  -->
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
		<#include "/nuts/exts/struts2/views/action-prompt.ftl"/>

		<#assign _columns_ = [{
			"name": "_number_",
			"type": "number",
			"nowrap": true,
			"fixed": true
		}, {
			"name": "id",
			"header": action.getText("list_print-column-id", ""), 
			"sortable": false,
			"tooltip": action.getText("list_print-column-id-tip", ""),
			"value": false			
		}, {
			"name": "name",
			"header": action.getText("list_print-column-name", ""), 
			"sortable": false,
			"tooltip": action.getText("list_print-column-name-tip", ""),
			"value": false			
		}] />

		<@n.listview id="samplefile_list_print" action="samplefile_list_print" 
			list="ds" columns=_columns_
			start="pg.s" limit="pg.l" total="pg.t" sort="so.c" dir="so.d"
			autosize="false" script="false"
		/>
	</div>
</div>

</body>
</html>
