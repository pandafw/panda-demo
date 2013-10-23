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

		<@n.listview id="samplejoin_bdelete"
			list="ds" columns=_columns_
		>
		</@n.listview>
		
		<br/>
		<div class="n-tcenter">
		<#if action.hasPermission("samplejoin_list")>
			<@n.url var="_u_" action='samplejoin_list'/>
			<@n.submit icon="icon-list" onclick="location.href='${_u_}';return false;" theme="simple"><@n.text name='button-list'/></@n.submit>
		</#if>
		</div>
	</div>
</div>

</body>
</html>
