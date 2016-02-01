<html>
<head>
	<title><@p.text name="title-list_print"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<h3><@p.i icon="icon"/> <@p.text name="title-list_print"><@p.param name="title" value="#(title)"/></@p.text></h3>
	</div>

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
<#if a.displayColumn("popupDatetimeField")>
	<#assign _columns_ = _columns_ + [{
			"name": "popupDatetimeField",
			"value": false,
			"header": text.getText("a.t.popupDatetimeField"),
			"format": {
				"type": "datetime"
			},
			"sortable": false,
			"tooltip": text.getText("a.t.popupDatetimeField-tip", "")
		}] />
</#if>
<#if a.displayColumn("popupDateField")>
	<#assign _columns_ = _columns_ + [{
			"name": "popupDateField",
			"value": false,
			"header": text.getText("a.t.popupDateField"),
			"format": {
				"type": "date"
			},
			"sortable": false,
			"tooltip": text.getText("a.t.popupDateField-tip", "")
		}] />
</#if>
<#if a.displayColumn("popupTimeField")>
	<#assign _columns_ = _columns_ + [{
			"name": "popupTimeField",
			"value": false,
			"header": text.getText("a.t.popupTimeField"),
			"format": {
				"type": "time"
			},
			"sortable": false,
			"tooltip": text.getText("a.t.popupTimeField-tip", "")
		}] />
</#if>
<#if a.displayColumn("inlineDatetimeField")>
	<#assign _columns_ = _columns_ + [{
			"name": "inlineDatetimeField",
			"value": false,
			"header": text.getText("a.t.inlineDatetimeField"),
			"format": {
				"type": "datetime"
			},
			"sortable": false,
			"tooltip": text.getText("a.t.inlineDatetimeField-tip", "")
		}] />
</#if>
<#if a.displayColumn("inlineDateField")>
	<#assign _columns_ = _columns_ + [{
			"name": "inlineDateField",
			"value": false,
			"header": text.getText("a.t.inlineDateField"),
			"format": {
				"type": "date"
			},
			"sortable": false,
			"tooltip": text.getText("a.t.inlineDateField-tip", "")
		}] />
</#if>
<#if a.displayColumn("inlineTimeField")>
	<#assign _columns_ = _columns_ + [{
			"name": "inlineTimeField",
			"value": false,
			"header": text.getText("a.t.inlineTimeField"),
			"format": {
				"type": "time"
			},
			"sortable": false,
			"tooltip": text.getText("a.t.inlineTimeField-tip", "")
		}] />
</#if>
<#if a.displayColumn("status")>
	<#assign _columns_ = _columns_ + [{
			"name": "status",
			"value": false,
			"header": text.getText("a.t.status"),
			"format": {
				"codemap": consts.dataStatusMap,
				"type": "code"
			},
			"hidden": false,
			"sortable": false,
			"tooltip": text.getText("a.t.status-tip", "")
		}] />
</#if>
<#if a.displayColumn("cusid")>
	<#assign _columns_ = _columns_ + [{
			"name": "cusid",
			"value": false,
			"header": text.getText("a.t.cusid"),
			"hidden": false,
			"sortable": false,
			"tooltip": text.getText("a.t.cusid-tip", "")
		}] />
</#if>
<#if a.displayColumn("ctime")>
	<#assign _columns_ = _columns_ + [{
			"name": "ctime",
			"value": false,
			"header": text.getText("a.t.ctime"),
			"format": {
				"type": "datetime"
			},
			"hidden": false,
			"sortable": false,
			"tooltip": text.getText("a.t.ctime-tip", "")
		}] />
</#if>
<#if a.displayColumn("uusid")>
	<#assign _columns_ = _columns_ + [{
			"name": "uusid",
			"value": false,
			"header": text.getText("a.t.uusid"),
			"hidden": false,
			"sortable": false,
			"tooltip": text.getText("a.t.uusid-tip", "")
		}] />
</#if>
<#if a.displayColumn("utime")>
	<#assign _columns_ = _columns_ + [{
			"name": "utime",
			"value": false,
			"header": text.getText("a.t.utime"),
			"format": {
				"type": "datetime"
			},
			"hidden": false,
			"sortable": false,
			"tooltip": text.getText("a.t.utime-tip", "")
		}] />
</#if>


	<@p.listview id="sampledate_list_print" action="~/list_print" 
		list=result columns=_columns_ cssColumn="status"
		cssTable="table-striped table-striped" autosize="false" script="false"
	/>
</div>

</body>
</html>
