<html>
<head>
	<title><@p.text name="title-bdelete"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<ol class="breadcrumb">
			<li><@p.i icon="icon"/> <@p.text name="title"/></li>
			<li><@p.text name="step-bdelete"/></li>
			<li class="active"><@p.text name="step-bdelete-success"/></li>
		</ol>
	</div>
<#assign _well = a.getText("well-bdelete-success", "")/>
<#if _well?has_content>
	<div class="p-well">${_well}</div>
</#if>


	<div class="p-toolbar-wrap"><ul class="p-toolbar">
<#if a.canAccess("~/list")><li><@p.a icon="icon-list" action="~/list" label="#(button-list)"/>
</li></#if>	</ul><div class="clearfix"></div></div>

	<#include "/action-alert.ftl"/>
	<br/>

<#if result?has_content>
	<#assign _columns_ = [{
			"name": "_rownum_",
			"type": "rownum",
			"header": a.getText("listview-th-rownum", ""),
			"fixed": true
		}] />
<#if a.displayField("id")>
	<#assign _columns_ = _columns_ + [{
			"name": "id",
			"header": a.getText("a.t.id"),
			"sortable": false,
			"tooltip": a.getText("a.t.id-tip", "")
		}] />
</#if>
<#if a.displayField("name")>
	<#assign _columns_ = _columns_ + [{
			"name": "name",
			"header": a.getText("a.t.name"),
			"sortable": false,
			"tooltip": a.getText("a.t.name-tip", "")
		}] />
</#if>
<#if a.displayField("compositeUnique1")>
	<#assign _columns_ = _columns_ + [{
			"name": "compositeUnique1",
			"header": a.getText("a.t.compositeUnique1"),
			"sortable": false,
			"tooltip": a.getText("a.t.compositeUnique1-tip", "")
		}] />
</#if>
<#if a.displayField("compositeUnique2")>
	<#assign _columns_ = _columns_ + [{
			"name": "compositeUnique2",
			"header": a.getText("a.t.compositeUnique2"),
			"sortable": false,
			"tooltip": a.getText("a.t.compositeUnique2-tip", "")
		}] />
</#if>


	<@p.listview id="sampleunique_bdelete"
		list=result columns=_columns_ cssColumn="status"
		cssTable="table-hover table-striped"
	/>
	
	<br/>
	<div class="p-tcenter">

		
	<#if a.canAccess("~/list")>
		<@p.a btn="default" icon="icon-list" action="~/list" label="#(button-list)"/>
	</#if>
	</div>
<#else>
	<div class="p-tcenter">
		<@p.a btn="default" icon="back" href="#" onclick="window.history.back();return false;" label="#(button-back)"/>
	</div>
</#if>
</div>

</body>
</html>
