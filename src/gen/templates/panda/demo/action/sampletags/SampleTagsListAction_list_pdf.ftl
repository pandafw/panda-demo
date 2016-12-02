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
<#if a.displayField("styleField")>
	<#assign _columns_ = _columns_ + [{
			"name": "styleField",
			"value": false,
			"header": a.getFieldLabel("styleField"),
			"format": {
				"codemap": consts.styleMap,
				"type": "code"
			},
			"sortable": false,
			"tooltip": a.getFieldTooltip("styleField")
		}] />
</#if>
<#if a.displayField("name")>
	<#assign _columns_ = _columns_ + [{
			"name": "name",
			"value": false,
			"header": a.getFieldLabel("name"),
			"sortable": false,
			"tooltip": a.getFieldTooltip("name")
		}] />
</#if>
<#if a.displayField("boolField")>
	<#assign _columns_ = _columns_ + [{
			"name": "boolField",
			"value": false,
			"header": a.getFieldLabel("boolField"),
			"format": {
				"type": "check"
			},
			"sortable": false,
			"tooltip": a.getFieldTooltip("boolField")
		}] />
</#if>
<#if a.displayField("intField")>
	<#assign _columns_ = _columns_ + [{
			"name": "intField",
			"value": false,
			"header": a.getFieldLabel("intField"),
			"sortable": false,
			"tooltip": a.getFieldTooltip("intField")
		}] />
</#if>
<#if a.displayField("decField")>
	<#assign _columns_ = _columns_ + [{
			"name": "decField",
			"value": false,
			"header": a.getFieldLabel("decField"),
			"sortable": false,
			"tooltip": a.getFieldTooltip("decField")
		}] />
</#if>
<#if a.displayField("radioField")>
	<#assign _columns_ = _columns_ + [{
			"name": "radioField",
			"value": false,
			"header": a.getFieldLabel("radioField"),
			"format": {
				"codemap": consts.radioMap,
				"type": "code"
			},
			"sortable": false,
			"tooltip": a.getFieldTooltip("radioField")
		}] />
</#if>
<#if a.displayField("selectField")>
	<#assign _columns_ = _columns_ + [{
			"name": "selectField",
			"value": false,
			"header": a.getFieldLabel("selectField"),
			"format": {
				"codemap": consts.selectMap,
				"type": "code"
			},
			"sortable": false,
			"tooltip": a.getFieldTooltip("selectField")
		}] />
</#if>
<#if a.displayField("checkField")>
	<#assign _columns_ = _columns_ + [{
			"name": "checkField",
			"value": false,
			"header": a.getFieldLabel("checkField"),
			"format": {
				"codemap": consts.checkMap,
				"type": "code"
			},
			"sortable": false,
			"tooltip": a.getFieldTooltip("checkField")
		}] />
</#if>
<#if a.displayField("datetimeField")>
	<#assign _columns_ = _columns_ + [{
			"name": "datetimeField",
			"value": false,
			"header": a.getFieldLabel("datetimeField"),
			"format": {
				"type": "datetime"
			},
			"sortable": false,
			"tooltip": a.getFieldTooltip("datetimeField")
		}] />
</#if>
<#if a.displayField("dateField")>
	<#assign _columns_ = _columns_ + [{
			"name": "dateField",
			"value": false,
			"header": a.getFieldLabel("dateField"),
			"format": {
				"type": "date"
			},
			"sortable": false,
			"tooltip": a.getFieldTooltip("dateField")
		}] />
</#if>
<#if a.displayField("timeField")>
	<#assign _columns_ = _columns_ + [{
			"name": "timeField",
			"value": false,
			"header": a.getFieldLabel("timeField"),
			"format": {
				"type": "time"
			},
			"sortable": false,
			"tooltip": a.getFieldTooltip("timeField")
		}] />
</#if>
<#if a.displayField("status")>
	<#assign _columns_ = _columns_ + [{
			"name": "status",
			"value": false,
			"header": a.getFieldLabel("status"),
			"format": {
				"codemap": consts.dataStatusMap,
				"type": "code"
			},
			"hidden": false,
			"sortable": false,
			"tooltip": a.getFieldTooltip("status")
		}] />
</#if>
<#if a.displayField("cusid")>
	<#assign _columns_ = _columns_ + [{
			"name": "cusid",
			"value": false,
			"header": a.getFieldLabel("cusid"),
			"hidden": false,
			"sortable": false,
			"tooltip": a.getFieldTooltip("cusid")
		}] />
</#if>
<#if a.displayField("ctime")>
	<#assign _columns_ = _columns_ + [{
			"name": "ctime",
			"value": false,
			"header": a.getFieldLabel("ctime"),
			"format": {
				"type": "datetime"
			},
			"hidden": false,
			"sortable": false,
			"tooltip": a.getFieldTooltip("ctime")
		}] />
</#if>
<#if a.displayField("uusid")>
	<#assign _columns_ = _columns_ + [{
			"name": "uusid",
			"value": false,
			"header": a.getFieldLabel("uusid"),
			"hidden": false,
			"sortable": false,
			"tooltip": a.getFieldTooltip("uusid")
		}] />
</#if>
<#if a.displayField("utime")>
	<#assign _columns_ = _columns_ + [{
			"name": "utime",
			"value": false,
			"header": a.getFieldLabel("utime"),
			"format": {
				"type": "datetime"
			},
			"hidden": false,
			"sortable": false,
			"tooltip": a.getFieldTooltip("utime")
		}] />
</#if>


	<@p.listview id="sampletags_list_pdf" action="~/list_pdf" 
		list=result columns=_columns_ cssColumn="styleField status"
		cssTable="table-striped" autosize="false" script="false" header=" " footer=" "
	/>
</div>

</body>
</html>
