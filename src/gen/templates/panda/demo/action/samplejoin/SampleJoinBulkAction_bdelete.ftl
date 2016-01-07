<html>
<head>
	<title><@p.text name="title-bdelete"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<h3><@p.i icon="icon"/> <@p.text name="title-bdelete"><@p.param name="title" value="#(title)"/></@p.text></h3>
	</div>

	<#include "/action-alert.ftl"/>
	<br/>

	<#assign _columns_ = [{
		"name": "_number_",
		"type": "number",
		"nowrap": true,
		"fixed": true
	}, {
		"name": "_check_",
		"type": "check",
		"nowrap": true,
		"fixed": true
	}{
		"name": "id",
		"pkey" : true,
		"header": action.getText("bdelete-column-id", ""), 
		"sortable": false,
		"tooltip": action.getText("bdelete-column-id-tip", "")			
	}, {
		"name": "tagsId",
		"header": action.getText("bdelete-column-tagsId", ""), 
		"hidden": true,
		"sortable": false,
		"tooltip": action.getText("bdelete-column-tagsId-tip", "")			
	}, {
		"name": "tagsName",
		"header": action.getText("bdelete-column-tagsName", ""), 
		"sortable": false,
		"tooltip": action.getText("bdelete-column-tagsName-tip", "")			
	}, {
		"name": "fileId",
		"header": action.getText("bdelete-column-fileId", ""), 
		"hidden": true,
		"sortable": false,
		"tooltip": action.getText("bdelete-column-fileId-tip", "")			
	}, {
		"name": "fileName",
		"header": action.getText("bdelete-column-fileName", ""), 
		"sortable": false,
		"tooltip": action.getText("bdelete-column-fileName-tip", "")			
	}, {
		"name": "status",
		"header": action.getText("bdelete-column-status", ""), 
		"format": {
			"type": "code",
			"codemap": "consts.dataStatusMap"
		},
		"hidden": false,
		"sortable": false,
		"tooltip": action.getText("bdelete-column-status-tip", "")			
	}, {
		"name": "cusid",
		"header": action.getText("bdelete-column-cusid", ""), 
		"hidden": false,
		"sortable": false,
		"tooltip": action.getText("bdelete-column-cusid-tip", "")			
	}, {
		"name": "ctime",
		"header": action.getText("bdelete-column-ctime", ""), 
		"format": {
			"type": "datetime"
		},
		"hidden": false,
		"sortable": false,
		"tooltip": action.getText("bdelete-column-ctime-tip", "")			
	}, {
		"name": "uusid",
		"header": action.getText("bdelete-column-uusid", ""), 
		"hidden": false,
		"sortable": false,
		"tooltip": action.getText("bdelete-column-uusid-tip", "")			
	}, {
		"name": "utime",
		"header": action.getText("bdelete-column-utime", ""), 
		"format": {
			"type": "datetime"
		},
		"hidden": false,
		"sortable": false,
		"tooltip": action.getText("bdelete-column-utime-tip", "")			
	}] />

	<@p.listview id="samplejoin_bdelete"
		action="samplejoin_bdelete_execute" method="post"
		list="ds" columns=_columns_ cssColumn="status"
	>
	</@p.listview>
	
	<br/>
	<div class="p-tcenter">
		<@p.submit icon="icon-bdelete-execute" onclick="return samplejoin_bdelete_submit();" theme="simple"><@p.text name="button-bdelete-execute"/></@p.submit>

		<script type="text/javascript"><!--
			function samplejoin_bdelete_submit() {
				return nlv_submitCheckedKeys('samplejoin_bdelete');
			}
			
			$(function() {
				nlv_checkAll('samplejoin_bdelete');
			});
		--></script>
	</div>
</div>

</body>
</html>
