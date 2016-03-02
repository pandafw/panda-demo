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
<#if a.displayField("popupDatetimeField")>
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
<#if a.displayField("popupDateField")>
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
<#if a.displayField("popupTimeField")>
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
<#if a.displayField("inlineDatetimeField")>
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
<#if a.displayField("inlineDateField")>
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
<#if a.displayField("inlineTimeField")>
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
<#if a.displayField("status")>
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
<#if a.displayField("cusid")>
	<#assign _columns_ = _columns_ + [{
			"name": "cusid",
			"value": false,
			"header": text.getText("a.t.cusid"),
			"hidden": false,
			"sortable": false,
			"tooltip": text.getText("a.t.cusid-tip", "")
		}] />
</#if>
<#if a.displayField("ctime")>
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
<#if a.displayField("uusid")>
	<#assign _columns_ = _columns_ + [{
			"name": "uusid",
			"value": false,
			"header": text.getText("a.t.uusid"),
			"hidden": false,
			"sortable": false,
			"tooltip": text.getText("a.t.uusid-tip", "")
		}] />
</#if>
<#if a.displayField("utime")>
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
		cssTable="table-striped" autosize="false" script="false"
	/>
</div>

</body>
</html>
