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
		"name": "popupDatetimeField",
		"header": text.getText("a.t.popupDatetimeField"),
		"format": {
			"type": "datetime"
			},
		"sortable": false,
		"tooltip": text.getText("a.t.popupDatetimeField-tip", "")
	}, {
		"name": "popupDateField",
		"header": text.getText("a.t.popupDateField"),
		"format": {
			"type": "date"
			},
		"sortable": false,
		"tooltip": text.getText("a.t.popupDateField-tip", "")
	}, {
		"name": "popupTimeField",
		"header": text.getText("a.t.popupTimeField"),
		"format": {
			"type": "time"
			},
		"sortable": false,
		"tooltip": text.getText("a.t.popupTimeField-tip", "")
	}, {
		"name": "inlineDatetimeField",
		"header": text.getText("a.t.inlineDatetimeField"),
		"format": {
			"type": "datetime"
			},
		"sortable": false,
		"tooltip": text.getText("a.t.inlineDatetimeField-tip", "")
	}, {
		"name": "inlineDateField",
		"header": text.getText("a.t.inlineDateField"),
		"format": {
			"type": "date"
			},
		"sortable": false,
		"tooltip": text.getText("a.t.inlineDateField-tip", "")
	}, {
		"name": "inlineTimeField",
		"header": text.getText("a.t.inlineTimeField"),
		"format": {
			"type": "time"
			},
		"sortable": false,
		"tooltip": text.getText("a.t.inlineTimeField-tip", "")
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

	<@p.listview id="sampledate_bdelete"
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
