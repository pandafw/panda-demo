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
<#if a.displayField("styleField")>
	<#assign _columns_ = _columns_ + [{
			"name": "styleField",
			"value": false,
			"header": a.getText("a.t.styleField"),
			"format": {
				"codemap": consts.styleMap,
				"type": "code"
			},
			"sortable": false,
			"tooltip": a.getText("a.t.styleField-tip", "")
		}] />
</#if>
<#if a.displayField("name")>
	<#assign _columns_ = _columns_ + [{
			"name": "name",
			"value": false,
			"header": a.getText("a.t.name"),
			"sortable": false,
			"tooltip": a.getText("a.t.name-tip", "")
		}] />
</#if>
<#if a.displayField("boolField")>
	<#assign _columns_ = _columns_ + [{
			"name": "boolField",
			"value": false,
			"header": a.getText("a.t.boolField"),
			"format": {
				"type": "check"
			},
			"sortable": false,
			"tooltip": a.getText("a.t.boolField-tip", "")
		}] />
</#if>
<#if a.displayField("intField")>
	<#assign _columns_ = _columns_ + [{
			"name": "intField",
			"value": false,
			"header": a.getText("a.t.intField"),
			"sortable": false,
			"tooltip": a.getText("a.t.intField-tip", "")
		}] />
</#if>
<#if a.displayField("decField")>
	<#assign _columns_ = _columns_ + [{
			"name": "decField",
			"value": false,
			"header": a.getText("a.t.decField"),
			"sortable": false,
			"tooltip": a.getText("a.t.decField-tip", "")
		}] />
</#if>
<#if a.displayField("radioField")>
	<#assign _columns_ = _columns_ + [{
			"name": "radioField",
			"value": false,
			"header": a.getText("a.t.radioField"),
			"format": {
				"codemap": consts.radioMap,
				"type": "code"
			},
			"sortable": false,
			"tooltip": a.getText("a.t.radioField-tip", "")
		}] />
</#if>
<#if a.displayField("selectField")>
	<#assign _columns_ = _columns_ + [{
			"name": "selectField",
			"value": false,
			"header": a.getText("a.t.selectField"),
			"format": {
				"codemap": consts.selectMap,
				"type": "code"
			},
			"sortable": false,
			"tooltip": a.getText("a.t.selectField-tip", "")
		}] />
</#if>
<#if a.displayField("checkField")>
	<#assign _columns_ = _columns_ + [{
			"name": "checkField",
			"value": false,
			"header": a.getText("a.t.checkField"),
			"format": {
				"codemap": consts.checkMap,
				"type": "code"
			},
			"sortable": false,
			"tooltip": a.getText("a.t.checkField-tip", "")
		}] />
</#if>
<#if a.displayField("datetimeField")>
	<#assign _columns_ = _columns_ + [{
			"name": "datetimeField",
			"value": false,
			"header": a.getText("a.t.datetimeField"),
			"format": {
				"type": "datetime"
			},
			"sortable": false,
			"tooltip": a.getText("a.t.datetimeField-tip", "")
		}] />
</#if>
<#if a.displayField("dateField")>
	<#assign _columns_ = _columns_ + [{
			"name": "dateField",
			"value": false,
			"header": a.getText("a.t.dateField"),
			"format": {
				"type": "date"
			},
			"sortable": false,
			"tooltip": a.getText("a.t.dateField-tip", "")
		}] />
</#if>
<#if a.displayField("timeField")>
	<#assign _columns_ = _columns_ + [{
			"name": "timeField",
			"value": false,
			"header": a.getText("a.t.timeField"),
			"format": {
				"type": "time"
			},
			"sortable": false,
			"tooltip": a.getText("a.t.timeField-tip", "")
		}] />
</#if>
<#if a.displayField("status")>
	<#assign _columns_ = _columns_ + [{
			"name": "status",
			"value": false,
			"header": a.getText("a.t.status"),
			"format": {
				"codemap": consts.dataStatusMap,
				"type": "code"
			},
			"hidden": false,
			"sortable": false,
			"tooltip": a.getText("a.t.status-tip", "")
		}] />
</#if>
<#if a.displayField("cusid")>
	<#assign _columns_ = _columns_ + [{
			"name": "cusid",
			"value": false,
			"header": a.getText("a.t.cusid"),
			"hidden": false,
			"sortable": false,
			"tooltip": a.getText("a.t.cusid-tip", "")
		}] />
</#if>
<#if a.displayField("ctime")>
	<#assign _columns_ = _columns_ + [{
			"name": "ctime",
			"value": false,
			"header": a.getText("a.t.ctime"),
			"format": {
				"type": "datetime"
			},
			"hidden": false,
			"sortable": false,
			"tooltip": a.getText("a.t.ctime-tip", "")
		}] />
</#if>
<#if a.displayField("uusid")>
	<#assign _columns_ = _columns_ + [{
			"name": "uusid",
			"value": false,
			"header": a.getText("a.t.uusid"),
			"hidden": false,
			"sortable": false,
			"tooltip": a.getText("a.t.uusid-tip", "")
		}] />
</#if>
<#if a.displayField("utime")>
	<#assign _columns_ = _columns_ + [{
			"name": "utime",
			"value": false,
			"header": a.getText("a.t.utime"),
			"format": {
				"type": "datetime"
			},
			"hidden": false,
			"sortable": false,
			"tooltip": a.getText("a.t.utime-tip", "")
		}] />
</#if>


	<@p.listview id="sampletags_list_print" action="~/list_print" 
		list=result columns=_columns_ cssColumn="styleField status"
		cssTable="table-striped" autosize="false" script="false"
	/>
</div>

</body>
</html>
