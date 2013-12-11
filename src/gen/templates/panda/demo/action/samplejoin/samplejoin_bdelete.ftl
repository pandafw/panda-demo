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
	}] />

	<@p.listview id="samplejoin_bdelete"
		action="samplejoin_bdelete_execute" method="post"
		list="ds" columns=_columns_
	>
	</@p.listview>
	
	<br/>
	<div class="p-tcenter">
		<@p.submit icon="icon-bdelete-execute" onclick="return samplejoin_bdelete_submit();" theme="simple"><@p.text name="button-bdelete-execute"/></@p.submit>
		<#if action.hasPermission("samplejoin_list")>
			<@p.url var="_u_" action='samplejoin_list'/>
			<@p.submit icon="icon-list" onclick="location.href='${_u_}';return false;" theme="simple"><@p.text name='button-list'/></@p.submit>
		</#if>

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
