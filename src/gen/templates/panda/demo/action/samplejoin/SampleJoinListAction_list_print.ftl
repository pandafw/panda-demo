<html>
<head>
	<title><@p.text name="title-list_print"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<ol class="breadcrumb">
			<li><@p.i icon="icon"/> <@p.text name="title"/></li>
			<li class="active"><@p.text name="step-list_print"/></li>
		</ol>
	</div>
<#assign _well = a.getText("well-list_print", "")/>
<#if _well?has_content>
	<div class="p-well">${_well}</div>
</#if>

	<#include "/action-alert.ftl"/>

	<#assign _columns_ = [{
			"name": "_number_",
			"type": "number",
			"header": a.getText("listview-th-number", ""),
			"fixed": true
		}] />
<#if a.displayField("id")>
	<#assign _columns_ = _columns_ + [{
			"name": "id",
			"value": false,
			"header": a.getText("a.t.id"),
			"sortable": false,
			"tooltip": a.getText("a.t.id-tip", "")
		}] />
</#if>
<#if a.displayField("tagsId")>
	<#assign _columns_ = _columns_ + [{
			"name": "tagsId",
			"value": false,
			"header": a.getText("a.t.tagsId"),
			"hidden": true,
			"sortable": false,
			"tooltip": a.getText("a.t.tagsId-tip", "")
		}] />
</#if>
<#if a.displayField("tagsName")>
	<#assign _columns_ = _columns_ + [{
			"name": "tagsName",
			"value": false,
			"header": a.getText("a.t.tagsName"),
			"sortable": false,
			"tooltip": a.getText("a.t.tagsName-tip", "")
		}] />
</#if>
<#if a.displayField("fileId")>
	<#assign _columns_ = _columns_ + [{
			"name": "fileId",
			"value": false,
			"header": a.getText("a.t.fileId"),
			"hidden": true,
			"sortable": false,
			"tooltip": a.getText("a.t.fileId-tip", "")
		}] />
</#if>
<#if a.displayField("fileName")>
	<#assign _columns_ = _columns_ + [{
			"name": "fileName",
			"value": false,
			"header": a.getText("a.t.fileName"),
			"sortable": false,
			"tooltip": a.getText("a.t.fileName-tip", "")
		}] />
</#if>


	<@p.listview id="samplejoin_list_print" action="~/list_print" 
		list=result columns=_columns_ cssColumn="status"
		cssTable="table-striped" autosize="false" script="false"
	/>
</div>

</body>
</html>
