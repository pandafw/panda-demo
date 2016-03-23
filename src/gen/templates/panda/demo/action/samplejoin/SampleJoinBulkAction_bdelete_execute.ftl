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
<#if a.displayField("tagsId")>
	<#assign _columns_ = _columns_ + [{
			"name": "tagsId",
			"header": a.getText("a.t.tagsId"),
			"hidden": true,
			"sortable": false,
			"tooltip": a.getText("a.t.tagsId-tip", "")
		}] />
</#if>
<#if a.displayField("tagsName")>
	<#assign _columns_ = _columns_ + [{
			"name": "tagsName",
			"header": a.getText("a.t.tagsName"),
			"sortable": false,
			"tooltip": a.getText("a.t.tagsName-tip", "")
		}] />
</#if>
<#if a.displayField("fileId")>
	<#assign _columns_ = _columns_ + [{
			"name": "fileId",
			"header": a.getText("a.t.fileId"),
			"hidden": true,
			"sortable": false,
			"tooltip": a.getText("a.t.fileId-tip", "")
		}] />
</#if>
<#if a.displayField("fileName")>
	<#assign _columns_ = _columns_ + [{
			"name": "fileName",
			"header": a.getText("a.t.fileName"),
			"sortable": false,
			"tooltip": a.getText("a.t.fileName-tip", "")
		}] />
</#if>


	<@p.listview id="samplejoin_bdelete"
		list=result columns=_columns_ cssColumn="status"
		cssTable="table-hover table-striped"
	/>
	
	<br/>
	<div class="p-tcenter">
		
	<#if a.hasPermission("~/list")>
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
