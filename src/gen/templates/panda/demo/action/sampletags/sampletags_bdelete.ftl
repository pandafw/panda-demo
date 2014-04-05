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
		"name": "styleField",
		"header": action.getText("bdelete-column-styleField", ""), 
		"format": {
			"type": "code",
			"codemap": "consts.styleMap"
		},
		"sortable": false,
		"tooltip": action.getText("bdelete-column-styleField-tip", "")			
	}, {
		"name": "name",
		"header": action.getText("bdelete-column-name", ""), 
		"sortable": false,
		"tooltip": action.getText("bdelete-column-name-tip", "")			
	}, {
		"name": "boolField",
		"header": action.getText("bdelete-column-boolField", ""), 
		"format": {
			"type": "check"
		},
		"sortable": false,
		"tooltip": action.getText("bdelete-column-boolField-tip", "")			
	}, {
		"name": "intField",
		"header": action.getText("bdelete-column-intField", ""), 
		"sortable": false,
		"tooltip": action.getText("bdelete-column-intField-tip", "")			
	}, {
		"name": "decField",
		"header": action.getText("bdelete-column-decField", ""), 
		"sortable": false,
		"tooltip": action.getText("bdelete-column-decField-tip", "")			
	}, {
		"name": "radioField",
		"header": action.getText("bdelete-column-radioField", ""), 
		"format": {
			"type": "code",
			"codemap": "consts.radioMap"
		},
		"sortable": false,
		"tooltip": action.getText("bdelete-column-radioField-tip", "")			
	}, {
		"name": "selectField",
		"header": action.getText("bdelete-column-selectField", ""), 
		"format": {
			"type": "code",
			"codemap": "consts.selectMap"
		},
		"sortable": false,
		"tooltip": action.getText("bdelete-column-selectField-tip", "")			
	}, {
		"name": "checkField",
		"header": action.getText("bdelete-column-checkField", ""), 
		"format": {
			"type": "code",
			"codemap": "consts.checkMap"
		},
		"sortable": false,
		"tooltip": action.getText("bdelete-column-checkField-tip", "")			
	}, {
		"name": "datetimeField",
		"header": action.getText("bdelete-column-datetimeField", ""), 
		"format": {
			"type": "datetime"
		},
		"sortable": false,
		"tooltip": action.getText("bdelete-column-datetimeField-tip", "")			
	}, {
		"name": "dateField",
		"header": action.getText("bdelete-column-dateField", ""), 
		"format": {
			"type": "date"
		},
		"sortable": false,
		"tooltip": action.getText("bdelete-column-dateField-tip", "")			
	}, {
		"name": "timeField",
		"header": action.getText("bdelete-column-timeField", ""), 
		"format": {
			"type": "time"
		},
		"sortable": false,
		"tooltip": action.getText("bdelete-column-timeField-tip", "")			
	}, {
		"name": "htmlField",
		"header": action.getText("bdelete-column-htmlField", ""), 
		"display": false,
		"sortable": false,
		"tooltip": action.getText("bdelete-column-htmlField-tip", "")			
	}, {
		"name": "bbcodeField",
		"header": action.getText("bdelete-column-bbcodeField", ""), 
		"display": false,
		"sortable": false,
		"tooltip": action.getText("bdelete-column-bbcodeField-tip", "")			
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

	<@p.listview id="sampletags_bdelete"
		action="sampletags_bdelete_execute" method="post"
		list="ds" columns=_columns_ cssColumn="styleField"
	>
	</@p.listview>
	
	<br/>
	<div class="p-tcenter">
		<@p.submit icon="icon-bdelete-execute" onclick="return sampletags_bdelete_submit();" theme="simple"><@p.text name="button-bdelete-execute"/></@p.submit>
		<#if action.hasPermission("sampletags_list")>
			<@p.url var="_u_" action='sampletags_list'/>
			<@p.submit icon="icon-list" onclick="location.href='${_u_}';return false;" theme="simple"><@p.text name='button-list'/></@p.submit>
		</#if>

		<script type="text/javascript"><!--
			function sampletags_bdelete_submit() {
				return nlv_submitCheckedKeys('sampletags_bdelete');
			}
			
			$(function() {
				nlv_checkAll('sampletags_bdelete');
			});
		--></script>
	</div>
</div>

</body>
</html>
