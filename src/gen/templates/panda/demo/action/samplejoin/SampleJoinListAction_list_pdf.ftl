<html>
<head>
	<title><@p.text name="title-list_pdf"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<ol class="breadcrumb">
			<li><@p.i icon="icon"/> <@p.text name="title"/></li>
			<li class="active"><@p.text name="step-list_pdf"/></li>
		</ol>
	</div>
<#assign _well = a.getText("well-list_pdf", "")/>
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
			"header": a.getFieldLabel("id"),
			"sortable": false,
			"tooltip": a.getFieldTooltip("id")
		}] />
</#if>
<#if a.displayField("tagsId")>
	<#assign _columns_ = _columns_ + [{
			"name": "tagsId",
			"value": false,
			"header": a.getFieldLabel("tagsId"),
			"hidden": true,
			"sortable": false,
			"tooltip": a.getFieldTooltip("tagsId")
		}] />
</#if>
<#if a.displayField("tagsName")>
	<#assign _columns_ = _columns_ + [{
			"name": "tagsName",
			"value": false,
			"header": a.getFieldLabel("tagsName"),
			"sortable": false,
			"tooltip": a.getFieldTooltip("tagsName")
		}] />
</#if>
<#if a.displayField("uniqId")>
	<#assign _columns_ = _columns_ + [{
			"name": "uniqId",
			"value": false,
			"header": a.getFieldLabel("uniqId"),
			"hidden": true,
			"sortable": false,
			"tooltip": a.getFieldTooltip("uniqId")
		}] />
</#if>
<#if a.displayField("uniqName")>
	<#assign _columns_ = _columns_ + [{
			"name": "uniqName",
			"value": false,
			"header": a.getFieldLabel("uniqName"),
			"sortable": false,
			"tooltip": a.getFieldTooltip("uniqName")
		}] />
</#if>


	<@p.listview id="samplejoin_list_pdf" action="~/list_pdf" 
		list=result columns=_columns_ cssColumn="status"
		cssTable="table-striped" autosize="false" script="false" header=" " footer=" "
	/>
</div>

</body>
</html>
