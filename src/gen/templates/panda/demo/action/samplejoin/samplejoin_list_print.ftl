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
		"header": action.getText("d.id", ""), 
		"sortable": false,
		"tooltip": action.getText("d.id-tip", ""),
		"value": false			
	}, {
		"name": "tagsId",
		"header": action.getText("d.tagsId", ""), 
		"hidden": true,
		"sortable": false,
		"tooltip": action.getText("d.tagsId-tip", ""),
		"value": false			
	}, {
		"name": "tagsName",
		"header": action.getText("d.tagsName", ""), 
		"sortable": false,
		"tooltip": action.getText("d.tagsName-tip", ""),
		"value": false			
	}, {
		"name": "fileId",
		"header": action.getText("d.fileId", ""), 
		"hidden": true,
		"sortable": false,
		"tooltip": action.getText("d.fileId-tip", ""),
		"value": false			
	}, {
		"name": "fileName",
		"header": action.getText("d.fileName", ""), 
		"sortable": false,
		"tooltip": action.getText("d.fileName-tip", ""),
		"value": false			
	}, {
		"name": "status",
		"header": action.getText("d.status", ""), 
		"format": {
			"codemap": "consts.dataStatusMap",
			"type": "code"
		},
		"hidden": false,
		"sortable": false,
		"tooltip": action.getText("d.status-tip", ""),
		"value": false			
	}, {
		"name": "cusid",
		"header": action.getText("d.cusid", ""), 
		"hidden": false,
		"sortable": false,
		"tooltip": action.getText("d.cusid-tip", ""),
		"value": false			
	}, {
		"name": "ctime",
		"header": action.getText("d.ctime", ""), 
		"format": {
			"type": "datetime"
		},
		"hidden": false,
		"sortable": false,
		"tooltip": action.getText("d.ctime-tip", ""),
		"value": false			
	}, {
		"name": "uusid",
		"header": action.getText("d.uusid", ""), 
		"hidden": false,
		"sortable": false,
		"tooltip": action.getText("d.uusid-tip", ""),
		"value": false			
	}, {
		"name": "utime",
		"header": action.getText("d.utime", ""), 
		"format": {
			"type": "datetime"
		},
		"hidden": false,
		"sortable": false,
		"tooltip": action.getText("d.utime-tip", ""),
		"value": false			
	}] />

	<@p.listview id="samplejoin_list_print" action="samplejoin_list_print" 
		list="ds" columns=_columns_ cssColumn="status"
		start="pg.s" limit="pg.l" total="pg.t" sort="so.c" dir="so.d"
		autosize="false" script="false"
	/>
</div>

</body>
</html>
