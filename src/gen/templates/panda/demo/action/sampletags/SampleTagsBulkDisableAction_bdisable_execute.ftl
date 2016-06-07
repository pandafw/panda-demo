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
<#assign _well = a.getText("well-bdisable-success", "")/>
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
<#if a.displayField("styleField")>
	<#assign _columns_ = _columns_ + [{
			"name": "styleField",
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
			"header": a.getText("a.t.name"),
			"sortable": false,
			"tooltip": a.getText("a.t.name-tip", "")
		}] />
</#if>
<#if a.displayField("boolField")>
	<#assign _columns_ = _columns_ + [{
			"name": "boolField",
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
			"header": a.getText("a.t.intField"),
			"sortable": false,
			"tooltip": a.getText("a.t.intField-tip", "")
		}] />
</#if>
<#if a.displayField("decField")>
	<#assign _columns_ = _columns_ + [{
			"name": "decField",
			"header": a.getText("a.t.decField"),
			"sortable": false,
			"tooltip": a.getText("a.t.decField-tip", "")
		}] />
</#if>
<#if a.displayField("radioField")>
	<#assign _columns_ = _columns_ + [{
			"name": "radioField",
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
			"header": a.getText("a.t.cusid"),
			"hidden": false,
			"sortable": false,
			"tooltip": a.getText("a.t.cusid-tip", "")
		}] />
</#if>
<#if a.displayField("ctime")>
	<#assign _columns_ = _columns_ + [{
			"name": "ctime",
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
			"header": a.getText("a.t.uusid"),
			"hidden": false,
			"sortable": false,
			"tooltip": a.getText("a.t.uusid-tip", "")
		}] />
</#if>
<#if a.displayField("utime")>
	<#assign _columns_ = _columns_ + [{
			"name": "utime",
			"header": a.getText("a.t.utime"),
			"format": {
				"type": "datetime"
				},
			"hidden": false,
			"sortable": false,
			"tooltip": a.getText("a.t.utime-tip", "")
		}] />
</#if>


	<@p.listview id="sampletags_bdisable"
		list=result columns=_columns_ cssColumn="styleField status"
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
