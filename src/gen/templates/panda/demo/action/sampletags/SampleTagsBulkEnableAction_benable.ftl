<html>
<head>
	<title><@p.text name="title-benable"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<ol class="breadcrumb">
			<li><@p.i icon="icon"/> <@p.text name="title"/></li>
			<li><@p.text name="step-benable"/></li>
			<li class="active"><@p.text name="step-benable-confirm"/></li>
		</ol>
	</div>
<#if text.getText("well-benable", "")?has_content>
	<div class="p-well"><@p.text name="well-benable"/></div>
</#if>


	<#include "/action-alert.ftl"/>
	<br/>

<#if result?has_content>
	<#assign _columns_ = [{
			"name": "_rownum_",
			"type": "rownum",
			"header": text.getText("listview-th-rownum", ""),
			"fixed": true
		}, {
			"name": "_check_",
			"type": "check",
			"fixed": true
		}] />
<#if a.displayField("id")>
	<#assign _columns_ = _columns_ + [{
			"name": "id",
			"pkey" : true,
			"value": true,
			"header": text.getText("a.t.id"),
			"sortable": false,
			"tooltip": text.getText("a.t.id-tip", "")
		}] />
</#if>
<#if a.displayField("styleField")>
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
<#if a.displayField("name")>
	<#assign _columns_ = _columns_ + [{
			"name": "name",
			"header": text.getText("a.t.name"),
			"sortable": false,
			"tooltip": text.getText("a.t.name-tip", "")
		}] />
</#if>
<#if a.displayField("boolField")>
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
<#if a.displayField("intField")>
	<#assign _columns_ = _columns_ + [{
			"name": "intField",
			"header": text.getText("a.t.intField"),
			"sortable": false,
			"tooltip": text.getText("a.t.intField-tip", "")
		}] />
</#if>
<#if a.displayField("decField")>
	<#assign _columns_ = _columns_ + [{
			"name": "decField",
			"header": text.getText("a.t.decField"),
			"sortable": false,
			"tooltip": text.getText("a.t.decField-tip", "")
		}] />
</#if>
<#if a.displayField("radioField")>
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
<#if a.displayField("selectField")>
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
<#if a.displayField("checkField")>
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
<#if a.displayField("datetimeField")>
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
<#if a.displayField("dateField")>
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
<#if a.displayField("timeField")>
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
<#if a.displayField("htmlField")>
	<#assign _columns_ = _columns_ + [{
			"name": "htmlField",
			"header": text.getText("a.t.htmlField"),
			"display": false,
			"sortable": false,
			"tooltip": text.getText("a.t.htmlField-tip", "")
		}] />
</#if>
<#if a.displayField("bbcodeField")>
	<#assign _columns_ = _columns_ + [{
			"name": "bbcodeField",
			"header": text.getText("a.t.bbcodeField"),
			"display": false,
			"sortable": false,
			"tooltip": text.getText("a.t.bbcodeField-tip", "")
		}] />
</#if>
<#if a.displayField("status")>
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
<#if a.displayField("cusid")>
	<#assign _columns_ = _columns_ + [{
			"name": "cusid",
			"header": text.getText("a.t.cusid"),
			"hidden": false,
			"sortable": false,
			"tooltip": text.getText("a.t.cusid-tip", "")
		}] />
</#if>
<#if a.displayField("ctime")>
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
<#if a.displayField("uusid")>
	<#assign _columns_ = _columns_ + [{
			"name": "uusid",
			"header": text.getText("a.t.uusid"),
			"hidden": false,
			"sortable": false,
			"tooltip": text.getText("a.t.uusid-tip", "")
		}] />
</#if>
<#if a.displayField("utime")>
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

	<@p.listview id="sampletags_benable"
		action="~/benable_execute" method="post"
		list=result columns=_columns_ cssColumn="styleField status"
		cssTable="table-hover table-striped"
	/>
	
	<br/>
	<div class="p-tcenter">
		<@p.submit icon="icon-benable-execute" onclick="return sampletags_benable_submit();" label="#(button-benable-execute)"/>
		
	<#if a.hasPermission("~/list")>
		<@p.a btn="default" icon="icon-list" action="~/list" label="#(button-list)"/>
	</#if>

		<script type="text/javascript"><!--
			function sampletags_benable_submit() {
				return plv_submitCheckedKeys('sampletags_benable');
			}
			
			function onPageLoad() {
				plv_checkAll('sampletags_benable');
			}
		--></script>
	</div>
<#else>
	<div class="p-tcenter">
		<@p.a btn="default" icon="back" href="#" onclick="window.history.back();return false;" label="#(button-back)"/>
	</div>
</#if>
</div>

</body>
</html>