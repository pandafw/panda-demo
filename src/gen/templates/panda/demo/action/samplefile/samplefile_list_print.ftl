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
		"name": "name",
		"header": action.getText("list_print-column-name", ""), 
		"sortable": false,
		"tooltip": action.getText("list_print-column-name-tip", ""),
		"value": false			
	}] />

	<@p.listview id="samplefile_list_print" action="samplefile_list_print" 
		list="ds" columns=_columns_
		start="pg.s" limit="pg.l" total="pg.t" sort="so.c" dir="so.d"
		autosize="false" script="false"
	/>
</div>

</body>
</html>
