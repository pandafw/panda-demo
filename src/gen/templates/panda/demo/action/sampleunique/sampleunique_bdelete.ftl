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
		"name": "name",
		"header": action.getText("bdelete-column-name", ""), 
		"sortable": false,
		"tooltip": action.getText("bdelete-column-name-tip", "")			
	}, {
		"name": "compositeUnique1",
		"header": action.getText("bdelete-column-compositeUnique1", ""), 
		"sortable": false,
		"tooltip": action.getText("bdelete-column-compositeUnique1-tip", "")			
	}, {
		"name": "compositeUnique2",
		"header": action.getText("bdelete-column-compositeUnique2", ""), 
		"sortable": false,
		"tooltip": action.getText("bdelete-column-compositeUnique2-tip", "")			
	}] />

	<@p.listview id="sampleunique_bdelete"
		action="sampleunique_bdelete_execute" method="post"
		list="ds" columns=_columns_ cssColumn="invalid"
	>
	</@p.listview>
	
	<br/>
	<div class="p-tcenter">
		<@p.submit icon="icon-bdelete-execute" onclick="return sampleunique_bdelete_submit();" theme="simple"><@p.text name="button-bdelete-execute"/></@p.submit>
		<#if action.hasPermission("sampleunique_list")>
			<@p.url var="_u_" action='sampleunique_list'/>
			<@p.submit icon="icon-list" onclick="location.href='${_u_}';return false;" theme="simple"><@p.text name='button-list'/></@p.submit>
		</#if>

		<script type="text/javascript"><!--
			function sampleunique_bdelete_submit() {
				return nlv_submitCheckedKeys('sampleunique_bdelete');
			}
			
			$(function() {
				nlv_checkAll('sampleunique_bdelete');
			});
		--></script>
	</div>
</div>

</body>
</html>
