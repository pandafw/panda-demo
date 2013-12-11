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
		"name": "tagsId",
		"header": action.getText("bdelete-column-tagsId", ""), 
		"hidden": true,
		"sortable": false,
		"tooltip": action.getText("bdelete-column-tagsId-tip", ""),
		"value": false		
	}, {
		"name": "tagsName",
		"header": action.getText("bdelete-column-tagsName", ""), 
		"sortable": false,
		"tooltip": action.getText("bdelete-column-tagsName-tip", ""),
		"value": false		
	}, {
		"name": "fileId",
		"header": action.getText("bdelete-column-fileId", ""), 
		"hidden": true,
		"sortable": false,
		"tooltip": action.getText("bdelete-column-fileId-tip", ""),
		"value": false		
	}, {
		"name": "fileName",
		"header": action.getText("bdelete-column-fileName", ""), 
		"sortable": false,
		"tooltip": action.getText("bdelete-column-fileName-tip", ""),
		"value": false		
	}] />

	<@p.listview id="samplejoin_bdelete"
		list="ds" columns=_columns_
	>
	</@p.listview>
	
	<br/>
	<div class="p-tcenter">
		<#if action.hasPermission("samplejoin_list")>
			<@p.url var="_u_" action='samplejoin_list'/>
			<@p.submit icon="icon-list" onclick="location.href='${_u_}';return false;" theme="simple"><@p.text name='button-list'/></@p.submit>
		</#if>
	</div>
</div>

</body>
</html>
