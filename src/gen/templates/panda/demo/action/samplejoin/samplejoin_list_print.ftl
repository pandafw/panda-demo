<html>
<head>
	<title><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<h3><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></h3>
	</div>

	<#include "/panda/exts/struts2/views/action-alert.ftl"/>

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
		"name": "tagsId",
		"header": action.getText("list_print-column-tagsId", ""), 
		"hidden": true,
		"sortable": false,
		"tooltip": action.getText("list_print-column-tagsId-tip", ""),
		"value": false			
	}, {
		"name": "tagsName",
		"header": action.getText("list_print-column-tagsName", ""), 
		"sortable": false,
		"tooltip": action.getText("list_print-column-tagsName-tip", ""),
		"value": false			
	}, {
		"name": "fileId",
		"header": action.getText("list_print-column-fileId", ""), 
		"hidden": true,
		"sortable": false,
		"tooltip": action.getText("list_print-column-fileId-tip", ""),
		"value": false			
	}, {
		"name": "fileName",
		"header": action.getText("list_print-column-fileName", ""), 
		"sortable": false,
		"tooltip": action.getText("list_print-column-fileName-tip", ""),
		"value": false			
	}] />

	<@p.listview id="samplejoin_list_print" action="samplejoin_list_print" 
		list="ds" columns=_columns_
		start="pg.s" limit="pg.l" total="pg.t" sort="so.c" dir="so.d"
		autosize="false" script="false"
	/>
</div>

</body>
</html>
