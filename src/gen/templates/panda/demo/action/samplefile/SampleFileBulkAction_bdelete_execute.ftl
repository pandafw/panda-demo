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

	<#include "/action-alert.ftl"/>
	<br/>

<#if result?has_content>
	<#assign _columns_ = [{
		"name": "_rownum_",
		"type": "rownum",
		"header": text.getText("listview-th-rownum", ""),
		"fixed": true
	}, {
		"name": "id",
		"header": text.getText("a.t.id"),
		"sortable": false,
		"tooltip": text.getText("a.t.id-tip", "")
	}, {
		"name": "name",
		"header": text.getText("a.t.name"),
		"sortable": false,
		"tooltip": text.getText("a.t.name-tip", "")
	}, {
		"name": "status",
		"header": text.getText("a.t.status"),
		"format": {
			"codemap": consts.dataStatusMap,
			"type": "code"
			},
		"hidden": false,
		"sortable": false,
		"tooltip": text.getText("a.t.status-tip", "")
	}, {
		"name": "cusid",
		"header": text.getText("a.t.cusid"),
		"hidden": false,
		"sortable": false,
		"tooltip": text.getText("a.t.cusid-tip", "")
	}, {
		"name": "ctime",
		"header": text.getText("a.t.ctime"),
		"format": {
			"type": "datetime"
			},
		"hidden": false,
		"sortable": false,
		"tooltip": text.getText("a.t.ctime-tip", "")
	}, {
		"name": "uusid",
		"header": text.getText("a.t.uusid"),
		"hidden": false,
		"sortable": false,
		"tooltip": text.getText("a.t.uusid-tip", "")
	}, {
		"name": "utime",
		"header": text.getText("a.t.utime"),
		"format": {
			"type": "datetime"
			},
		"hidden": false,
		"sortable": false,
		"tooltip": text.getText("a.t.utime-tip", "")
	}] />

	<@p.listview id="samplefile_bdelete"
		list=result columns=_columns_ cssColumn="status"
		cssTable="table-hover table-striped"
	/>
	
	<br/>
	<div class="p-tcenter">
		
	<#if action.hasPermission("~/list")>
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
