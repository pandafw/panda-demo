<html>
<head>
	<title><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<h3><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></h3>
	</div>

	<ul class="p-toolbar">
		<li><@p.a icon="icon-refresh" href="javascript:location.reload(true)"><@p.text name='button-refresh'/></@p.a></li>
	</ul>

	<#include "/panda/exts/struts2/views/action-alert.ftl"/>
	<br/>
	
	<#assign _columns_ = [{
		"name": "_number_",
		"type": "number",
		"nowrap": true,
		"fixed": true
	}, {
		"name": "id",
		"header": action.getText("bdelete-column-id", ""), 
		"sortable": false,
		"tooltip": action.getText("bdelete-column-id-tip", ""),
		"value": false		
	}, {
		"name": "popupDatetimeField",
		"header": action.getText("bdelete-column-popupDatetimeField", ""), 
		"format": {
			"type": "datetime"
		},
		"sortable": false,
		"tooltip": action.getText("bdelete-column-popupDatetimeField-tip", ""),
		"value": false		
	}, {
		"name": "popupDateField",
		"header": action.getText("bdelete-column-popupDateField", ""), 
		"format": {
			"type": "date"
		},
		"sortable": false,
		"tooltip": action.getText("bdelete-column-popupDateField-tip", ""),
		"value": false		
	}, {
		"name": "popupTimeField",
		"header": action.getText("bdelete-column-popupTimeField", ""), 
		"format": {
			"type": "time"
		},
		"sortable": false,
		"tooltip": action.getText("bdelete-column-popupTimeField-tip", ""),
		"value": false		
	}, {
		"name": "inlineDatetimeField",
		"header": action.getText("bdelete-column-inlineDatetimeField", ""), 
		"format": {
			"type": "datetime"
		},
		"sortable": false,
		"tooltip": action.getText("bdelete-column-inlineDatetimeField-tip", ""),
		"value": false		
	}, {
		"name": "inlineDateField",
		"header": action.getText("bdelete-column-inlineDateField", ""), 
		"format": {
			"type": "date"
		},
		"sortable": false,
		"tooltip": action.getText("bdelete-column-inlineDateField-tip", ""),
		"value": false		
	}, {
		"name": "inlineTimeField",
		"header": action.getText("bdelete-column-inlineTimeField", ""), 
		"format": {
			"type": "time"
		},
		"sortable": false,
		"tooltip": action.getText("bdelete-column-inlineTimeField-tip", ""),
		"value": false		
	}] />

	<@p.listview id="sampledate_bdelete"
		list="ds" columns=_columns_ cssColumn="invalid"
	>
	</@p.listview>
	
	<br/>
	<div class="p-tcenter">
		<#if action.hasPermission("sampledate_list")>
			<@p.url var="_u_" action='sampledate_list'/>
			<@p.submit icon="icon-list" onclick="location.href='${_u_}';return false;" theme="simple"><@p.text name='button-list'/></@p.submit>
		</#if>
	</div>
</div>

</body>
</html>
