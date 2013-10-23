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
			"name": "popupDatetimeField",
			"header": action.getText("list_print-column-popupDatetimeField", ""), 
			"format": {
				"type": "datetime"
			},
			"sortable": false,
			"tooltip": action.getText("list_print-column-popupDatetimeField-tip", ""),
			"value": false			
		}, {
			"name": "popupDateField",
			"header": action.getText("list_print-column-popupDateField", ""), 
			"format": {
				"type": "date"
			},
			"sortable": false,
			"tooltip": action.getText("list_print-column-popupDateField-tip", ""),
			"value": false			
		}, {
			"name": "popupTimeField",
			"header": action.getText("list_print-column-popupTimeField", ""), 
			"format": {
				"type": "time"
			},
			"sortable": false,
			"tooltip": action.getText("list_print-column-popupTimeField-tip", ""),
			"value": false			
		}, {
			"name": "inlineDatetimeField",
			"header": action.getText("list_print-column-inlineDatetimeField", ""), 
			"format": {
				"type": "datetime"
			},
			"sortable": false,
			"tooltip": action.getText("list_print-column-inlineDatetimeField-tip", ""),
			"value": false			
		}, {
			"name": "inlineDateField",
			"header": action.getText("list_print-column-inlineDateField", ""), 
			"format": {
				"type": "date"
			},
			"sortable": false,
			"tooltip": action.getText("list_print-column-inlineDateField-tip", ""),
			"value": false			
		}, {
			"name": "inlineTimeField",
			"header": action.getText("list_print-column-inlineTimeField", ""), 
			"format": {
				"type": "time"
			},
			"sortable": false,
			"tooltip": action.getText("list_print-column-inlineTimeField-tip", ""),
			"value": false			
		}] />

		<@n.listview id="sampledate_list_print" action="sampledate_list_print" 
			list="ds" columns=_columns_ cssColumn="invalid"
			start="pg.s" limit="pg.l" total="pg.t" sort="so.c" dir="so.d"
			autosize="false" script="false"
		/>
	</div>
</div>

</body>
</html>
