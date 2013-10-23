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
		}] />

		<@n.listview id="sampledate_bdelete"
			action="sampledate_bdelete_execute" method="post"
			list="ds" columns=_columns_ cssColumn="invalid"
		>
		</@n.listview>
		
		<br/>
		<div class="n-tcenter">
			<@n.submit icon="icon-bdelete-execute" onclick="return sampledate_bdelete_submit();" theme="simple"><@n.text name="button-bdelete-execute"/></@n.submit>
		<#if action.hasPermission("sampledate_list")>
			<@n.url var="_u_" action='sampledate_list'/>
			<@n.submit icon="icon-list" onclick="location.href='${_u_}';return false;" theme="simple"><@n.text name='button-list'/></@n.submit>
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
</div>

</body>
</html>
