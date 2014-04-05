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
		"name": "popupDatetimeField",
		"header": action.getText("bdelete-column-popupDatetimeField", ""), 
		"format": {
			"type": "datetime"
		},
		"sortable": false,
		"tooltip": action.getText("bdelete-column-popupDatetimeField-tip", "")			
	}, {
		"name": "popupDateField",
		"header": action.getText("bdelete-column-popupDateField", ""), 
		"format": {
			"type": "date"
		},
		"sortable": false,
		"tooltip": action.getText("bdelete-column-popupDateField-tip", "")			
	}, {
		"name": "popupTimeField",
		"header": action.getText("bdelete-column-popupTimeField", ""), 
		"format": {
			"type": "time"
		},
		"sortable": false,
		"tooltip": action.getText("bdelete-column-popupTimeField-tip", "")			
	}, {
		"name": "inlineDatetimeField",
		"header": action.getText("bdelete-column-inlineDatetimeField", ""), 
		"format": {
			"type": "datetime"
		},
		"sortable": false,
		"tooltip": action.getText("bdelete-column-inlineDatetimeField-tip", "")			
	}, {
		"name": "inlineDateField",
		"header": action.getText("bdelete-column-inlineDateField", ""), 
		"format": {
			"type": "date"
		},
		"sortable": false,
		"tooltip": action.getText("bdelete-column-inlineDateField-tip", "")			
	}, {
		"name": "inlineTimeField",
		"header": action.getText("bdelete-column-inlineTimeField", ""), 
		"format": {
			"type": "time"
		},
		"sortable": false,
		"tooltip": action.getText("bdelete-column-inlineTimeField-tip", "")			
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

	<@p.listview id="sampledate_bdelete"
		action="sampledate_bdelete_execute" method="post"
		list="ds" columns=_columns_ cssColumn="status"
	>
	</@p.listview>
	
	<br/>
	<div class="p-tcenter">
		<@p.submit icon="icon-bdelete-execute" onclick="return sampledate_bdelete_submit();" theme="simple"><@p.text name="button-bdelete-execute"/></@p.submit>
		<#if action.hasPermission("sampledate_list")>
			<@p.url var="_u_" action='sampledate_list'/>
			<@p.submit icon="icon-list" onclick="location.href='${_u_}';return false;" theme="simple"><@p.text name='button-list'/></@p.submit>
		</#if>

		<script type="text/javascript"><!--
			function sampledate_bdelete_submit() {
				return nlv_submitCheckedKeys('sampledate_bdelete');
			}
			
			$(function() {
				nlv_checkAll('sampledate_bdelete');
			});
		--></script>
	</div>
</div>

</body>
</html>
