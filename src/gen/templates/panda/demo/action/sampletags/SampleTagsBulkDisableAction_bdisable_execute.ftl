<html>
<head>
	<title><@p.text name="title-bdisable"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<ol class="breadcrumb">
			<li><@p.i icon="icon"/> <@p.text name="title"/></li>
			<li><@p.text name="step-bdisable"/></li>
			<li class="active"><@p.text name="step-bdisable-success"/></li>
		</ol>
	</div>
<#if text.getText("well-bdisable", "")?has_content>
	<div class="p-well"><@p.text name="well-bdisable"/></div>
</#if>


	<#include "/action-alert.ftl"/>
	<br/>

<#if result?has_content>
	<#assign _columns_ = [{
			"name": "_rownum_",
			"type": "rownum",
			"header": text.getText("listview-th-rownum", ""),
			"fixed": true
		}] />
<#if a.displayColumn("id")>
	<#assign _columns_ = _columns_ + [{
			"name": "id",
			"header": text.getText("a.t.id"),
			"sortable": false,
			"tooltip": text.getText("a.t.id-tip", "")
		}] />
</#if>
<#if a.displayColumn("styleField")>
	<#assign _columns_ = _columns_ + [{
			"name": "styleField",
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
			"header": text.getText("a.t.name"),
			"sortable": false,
			"tooltip": text.getText("a.t.name-tip", "")
		}] />
</#if>
<#if a.displayColumn("boolField")>
	<#assign _columns_ = _columns_ + [{
			"name": "boolField",
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
			"header": text.getText("a.t.intField"),
			"sortable": false,
			"tooltip": text.getText("a.t.intField-tip", "")
		}] />
</#if>
<#if a.displayColumn("decField")>
	<#assign _columns_ = _columns_ + [{
			"name": "decField",
			"header": text.getText("a.t.decField"),
			"sortable": false,
			"tooltip": text.getText("a.t.decField-tip", "")
		}] />
</#if>
<#if a.displayColumn("radioField")>
	<#assign _columns_ = _columns_ + [{
			"name": "radioField",
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
			"header": text.getText("a.t.htmlField"),
			"display": false,
			"sortable": false,
			"tooltip": text.getText("a.t.htmlField-tip", "")
		}] />
</#if>
<#if a.displayColumn("bbcodeField")>
	<#assign _columns_ = _columns_ + [{
			"name": "bbcodeField",
			"header": text.getText("a.t.bbcodeField"),
			"display": false,
			"sortable": false,
			"tooltip": text.getText("a.t.bbcodeField-tip", "")
		}] />
</#if>
<#if a.displayColumn("status")>
	<#assign _columns_ = _columns_ + [{
			"name": "status",
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
			"header": text.getText("a.t.cusid"),
			"hidden": false,
			"sortable": false,
			"tooltip": text.getText("a.t.cusid-tip", "")
		}] />
</#if>
<#if a.displayColumn("ctime")>
	<#assign _columns_ = _columns_ + [{
			"name": "ctime",
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
			"header": text.getText("a.t.uusid"),
			"hidden": false,
			"sortable": false,
			"tooltip": text.getText("a.t.uusid-tip", "")
		}] />
</#if>
<#if a.displayColumn("utime")>
	<#assign _columns_ = _columns_ + [{
			"name": "utime",
			"header": text.getText("a.t.utime"),
			"format": {
				"type": "datetime"
				},
			"hidden": false,
			"sortable": false,
			"tooltip": text.getText("a.t.utime-tip", "")
		}] />
</#if>


	<@p.listview id="sampletags_bdisable"
		list=result columns=_columns_ cssColumn="styleField status"
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
