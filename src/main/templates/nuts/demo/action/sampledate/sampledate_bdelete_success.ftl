<#-- This file was auto-generated by nuts.tools.codegen.FreemarkerGenerator  -->
<html>
<head>
	<title><@n.text name="title-${actionResult}"><@s.param><@n.text name="title"/></@s.param></@n.text></title>
</head>
<body>

<div class="n-sect">
	<div class="n-sect-head">
		<ul class="n-toolbar">
			<li><@n.a icon="icon-refresh" href="javascript:location.reload(true)"><@n.text name='button-refresh'/></@n.a></li>
		</ul>
		<h3 class="n-sect-title"><@n.text name="title-${actionResult}"><@s.param><@n.text name="title"/></@s.param></@n.text></h3>
	</div>
	<div class="n-sect-body">
		<#include "/nuts/exts/struts2/views/action-prompt.ftl"/>
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

		<@n.listview id="sampledate_bdelete"
			list="ds" columns=_columns_ cssColumn="invalid"
		>
		</@n.listview>
		
		<br/>
		<div class="n-tcenter">
		<#if action.hasPermission("sampledate_list")>
			<@n.url var="_u_" action='sampledate_list'/>
			<@n.submit icon="icon-list" onclick="location.href='${_u_}';return false;" theme="simple"><@n.text name='button-list'/></@n.submit>
		</#if>
		</div>
	</div>
</div>

</body>
</html>
