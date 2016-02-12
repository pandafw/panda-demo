<html>
<head>
	<title><@p.text name="title-list_print"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<h3><@p.i icon="icon"/> <@p.text name="title-list_print"><@p.param name="title" value="#(title)"/></@p.text></h3>
	</div>
<#if text.getText("well-list_print", "")?has_content>
	<div class="p-well"><@p.text name="well-list_print"/></div>
</#if>

	<#include "/action-alert.ftl"/>

	<#assign _columns_ = [{
			"name": "_number_",
			"type": "number",
			"header": text.getText("listview-th-number", ""),
			"fixed": true
		}] />
<#if a.displayColumn("id")>
	<#assign _columns_ = _columns_ + [{
			"name": "id",
			"value": false,
			"header": text.getText("a.t.id"),
			"sortable": false,
			"tooltip": text.getText("a.t.id-tip", "")
		}] />
</#if>
<#if a.displayColumn("tagsId")>
	<#assign _columns_ = _columns_ + [{
			"name": "tagsId",
			"value": false,
			"header": text.getText("a.t.tagsId"),
			"hidden": true,
			"sortable": false,
			"tooltip": text.getText("a.t.tagsId-tip", "")
		}] />
</#if>
<#if a.displayColumn("tagsName")>
	<#assign _columns_ = _columns_ + [{
			"name": "tagsName",
			"value": false,
			"header": text.getText("a.t.tagsName"),
			"sortable": false,
			"tooltip": text.getText("a.t.tagsName-tip", "")
		}] />
</#if>
<#if a.displayColumn("fileId")>
	<#assign _columns_ = _columns_ + [{
			"name": "fileId",
			"value": false,
			"header": text.getText("a.t.fileId"),
			"hidden": true,
			"sortable": false,
			"tooltip": text.getText("a.t.fileId-tip", "")
		}] />
</#if>
<#if a.displayColumn("fileName")>
	<#assign _columns_ = _columns_ + [{
			"name": "fileName",
			"value": false,
			"header": text.getText("a.t.fileName"),
			"sortable": false,
			"tooltip": text.getText("a.t.fileName-tip", "")
		}] />
</#if>


	<@p.listview id="samplejoin_list_print" action="~/list_print" 
		list=result columns=_columns_ cssColumn="status"
		cssTable="table-striped table-striped" autosize="false" script="false"
	/>
</div>

</body>
</html>
