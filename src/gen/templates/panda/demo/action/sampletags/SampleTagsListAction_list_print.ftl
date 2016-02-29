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
<#if a.displayColumn("id")>
	<#assign _columns_ = _columns_ + [{
			"name": "id",
			"value": false,
			"header": text.getText("a.t.id"),
			"sortable": false,
			"tooltip": text.getText("a.t.id-tip", "")
		}] />
</#if>
<#if a.displayColumn("styleField")>
	<#assign _columns_ = _columns_ + [{
			"name": "styleField",
			"value": false,
			"header": text.getText("a.t.styleField"),
			"format": {
				"codemap": consts.styleMap,
				"type": "code"
			},
			"sortable": false,
			"tooltip": text.getText("a.t.styleField-tip", "")
		}] />
</#if>
<#if a.displayColumn("name")>
	<#assign _columns_ = _columns_ + [{
			"name": "name",
			"value": false,
			"header": text.getText("a.t.name"),
			"sortable": false,
			"tooltip": text.getText("a.t.name-tip", "")
		}] />
</#if>
<#if a.displayColumn("boolField")>
	<#assign _columns_ = _columns_ + [{
			"name": "boolField",
			"value": false,
			"header": text.getText("a.t.boolField"),
			"format": {
				"type": "check"
			},
			"sortable": false,
			"tooltip": text.getText("a.t.boolField-tip", "")
		}] />
</#if>
<#if a.displayColumn("intField")>
	<#assign _columns_ = _columns_ + [{
			"name": "intField",
			"value": false,
			"header": text.getText("a.t.intField"),
			"sortable": false,
			"tooltip": text.getText("a.t.intField-tip", "")
		}] />
</#if>
<#if a.displayColumn("decField")>
	<#assign _columns_ = _columns_ + [{
			"name": "decField",
			"value": false,
			"header": text.getText("a.t.decField"),
			"sortable": false,
			"tooltip": text.getText("a.t.decField-tip", "")
		}] />
</#if>
<#if a.displayColumn("radioField")>
	<#assign _columns_ = _columns_ + [{
			"name": "radioField",
			"value": false,
			"header": text.getText("a.t.radioField"),
			"format": {
				"codemap": consts.radioMap,
				"type": "code"
			},
			"sortable": false,
			"tooltip": text.getText("a.t.radioField-tip", "")
		}] />
</#if>
<#if a.displayColumn("selectField")>
	<#assign _columns_ = _columns_ + [{
			"name": "selectField",
			"value": false,
			"header": text.getText("a.t.selectField"),
			"format": {
				"codemap": consts.selectMap,
				"type": "code"
			},
			"sortable": false,
			"tooltip": text.getText("a.t.selectField-tip", "")
		}] />
</#if>
<#if a.displayColumn("checkField")>
	<#assign _columns_ = _columns_ + [{
			"name": "checkField",
			"value": false,
			"header": text.getText("a.t.checkField"),
			"format": {
				"codemap": consts.checkMap,
				"type": "code"
			},
			"sortable": false,
			"tooltip": text.getText("a.t.checkField-tip", "")
		}] />
</#if>
<#if a.displayColumn("datetimeField")>
	<#assign _columns_ = _columns_ + [{
			"name": "datetimeField",
			"value": false,
			"header": text.getText("a.t.datetimeField"),
			"format": {
				"type": "datetime"
			},
			"sortable": false,
			"tooltip": text.getText("a.t.datetimeField-tip", "")
		}] />
</#if>
<#if a.displayColumn("dateField")>
	<#assign _columns_ = _columns_ + [{
			"name": "dateField",
			"value": false,
			"header": text.getText("a.t.dateField"),
			"format": {
				"type": "date"
			},
			"sortable": false,
			"tooltip": text.getText("a.t.dateField-tip", "")
		}] />
</#if>
<#if a.displayColumn("timeField")>
	<#assign _columns_ = _columns_ + [{
			"name": "timeField",
			"value": false,
			"header": text.getText("a.t.timeField"),
			"format": {
				"type": "time"
			},
			"sortable": false,
			"tooltip": text.getText("a.t.timeField-tip", "")
		}] />
</#if>
<#if a.displayColumn("htmlField")>
	<#assign _columns_ = _columns_ + [{
			"name": "htmlField",
			"value": false,
			"header": text.getText("a.t.htmlField"),
			"display": false,
			"sortable": false,
			"tooltip": text.getText("a.t.htmlField-tip", "")
		}] />
</#if>
<#if a.displayColumn("bbcodeField")>
	<#assign _columns_ = _columns_ + [{
			"name": "bbcodeField",
			"value": false,
			"header": text.getText("a.t.bbcodeField"),
			"display": false,
			"sortable": false,
			"tooltip": text.getText("a.t.bbcodeField-tip", "")
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


	<@p.listview id="sampletags_list_print" action="~/list_print" 
		list=result columns=_columns_ cssColumn="styleField status"
		cssTable="table-striped" autosize="false" script="false"
	/>
</div>

</body>
</html>
