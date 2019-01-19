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
<#if a.displayField("id")>
	<#assign _columns_ = _columns_ + [{
			"name": "id",
			"value": false,
			"header": text.getText("a.t.id"),
			"sortable": false,
			"tooltip": text.getText("a.t.id-tip", "")
		}] />
</#if>
<#if a.displayField("name")>
	<#assign _columns_ = _columns_ + [{
			"name": "name",
			"value": false,
			"header": text.getText("a.t.name"),
			"sortable": false,
			"tooltip": text.getText("a.t.name-tip", "")
		}] />
</#if>
<#if a.displayField("compositeUnique1")>
	<#assign _columns_ = _columns_ + [{
			"name": "compositeUnique1",
			"value": false,
			"header": text.getText("a.t.compositeUnique1"),
			"sortable": false,
			"tooltip": text.getText("a.t.compositeUnique1-tip", "")
		}] />
</#if>
<#if a.displayField("compositeUnique2")>
	<#assign _columns_ = _columns_ + [{
			"name": "compositeUnique2",
			"value": false,
			"header": text.getText("a.t.compositeUnique2"),
			"sortable": false,
			"tooltip": text.getText("a.t.compositeUnique2-tip", "")
		}] />
</#if>


	<@p.listview id="sampleunique_list_print" action="~/list_print" 
		list=result columns=_columns_ cssColumn="status"
		cssTable="table-striped" autosize="false" script="false"
	/>
</div>

</body>
</html>
