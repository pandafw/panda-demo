	<div class="p-header">
		<h3><@p.i icon="icon"/> <@p.text name="title-bdelete"><@p.param name="title" value="#(title)"/></@p.text></h3>
	</div>

<div class="p-section">
	<div class="p-header">
		<h3><@p.i icon="icon"/> <@p.text name="title-bdelete"><@p.param name="title" value="#(title)"/></@p.text></h3>
	</div>

	<div class="p-toolbar-wrap"><ul class="p-toolbar">
		<li><@p.a icon="icon-refresh" href="javascript:location.reload(true)"><@p.text name='button-refresh'/></@p.a>
</li>	</ul><div class="clearfix"></div></div>

	<#include "/action-alert.ftl"/>
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
	}, {
		"name": "status",
		"header": action.getText("bdelete-column-status", ""), 
		"format": {
			"type": "code",
			"codemap": "consts.dataStatusMap"
		},
		"hidden": false,
		"sortable": false,
		"tooltip": action.getText("bdelete-column-status-tip", ""),
		"value": false		
	}, {
		"name": "cusid",
		"header": action.getText("bdelete-column-cusid", ""), 
		"hidden": false,
		"sortable": false,
		"tooltip": action.getText("bdelete-column-cusid-tip", ""),
		"value": false		
	}, {
		"name": "ctime",
		"header": action.getText("bdelete-column-ctime", ""), 
		"format": {
			"type": "datetime"
		},
		"hidden": false,
		"sortable": false,
		"tooltip": action.getText("bdelete-column-ctime-tip", ""),
		"value": false		
	}, {
		"name": "uusid",
		"header": action.getText("bdelete-column-uusid", ""), 
		"hidden": false,
		"sortable": false,
		"tooltip": action.getText("bdelete-column-uusid-tip", ""),
		"value": false		
	}, {
		"name": "utime",
		"header": action.getText("bdelete-column-utime", ""), 
		"format": {
			"type": "datetime"
		},
		"hidden": false,
		"sortable": false,
		"tooltip": action.getText("bdelete-column-utime-tip", ""),
		"value": false		
	}] />

	<@p.listview id="samplejoin_bdelete"
		list="ds" columns=_columns_ cssColumn="status"
	>
	</@p.listview>
	
	<br/>
	<div class="p-tcenter">
		<#if action.hasPermission("samplejoin_${list.butons}")>
			<@p.url var="_u_" action='samplejoin_${list.butons}'/>
			<@p.submit icon="icon-${list.butons}" onclick="location.href='${_u_}';return false;" theme="simple"><@p.text name='button-${list.butons}'/></@p.submit>
		</#if>
	</div>
</div>

</body>
</html>
