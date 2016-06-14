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
			<li class="active"><@p.text name="step-bdisable-confirm"/></li>
		</ol>
	</div>
<#assign _well = a.getText("well-bdisable", "")/>
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
			"header": a.getFieldLabel("id"),
			"sortable": false,
			"tooltip": a.getFieldTooltip("id")
		}] />
</#if>
<#if a.displayField("styleField")>
	<#assign _columns_ = _columns_ + [{
			"name": "styleField",
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
			"header": a.getFieldLabel("name"),
			"sortable": false,
			"tooltip": a.getFieldTooltip("name")
		}] />
</#if>
<#if a.displayField("boolField")>
	<#assign _columns_ = _columns_ + [{
			"name": "boolField",
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
			"header": a.getFieldLabel("intField"),
			"sortable": false,
			"tooltip": a.getFieldTooltip("intField")
		}] />
</#if>
<#if a.displayField("decField")>
	<#assign _columns_ = _columns_ + [{
			"name": "decField",
			"header": a.getFieldLabel("decField"),
			"sortable": false,
			"tooltip": a.getFieldTooltip("decField")
		}] />
</#if>
<#if a.displayField("radioField")>
	<#assign _columns_ = _columns_ + [{
			"name": "radioField",
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
			"header": a.getFieldLabel("cusid"),
			"hidden": false,
			"sortable": false,
			"tooltip": a.getFieldTooltip("cusid")
		}] />
</#if>
<#if a.displayField("ctime")>
	<#assign _columns_ = _columns_ + [{
			"name": "ctime",
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
			"header": a.getFieldLabel("uusid"),
			"hidden": false,
			"sortable": false,
			"tooltip": a.getFieldTooltip("uusid")
		}] />
</#if>
<#if a.displayField("utime")>
	<#assign _columns_ = _columns_ + [{
			"name": "utime",
			"header": a.getFieldLabel("utime"),
			"format": {
				"type": "datetime"
				},
			"hidden": false,
			"sortable": false,
			"tooltip": a.getFieldTooltip("utime")
		}] />
</#if>

	<@p.listview id="sampletags_bdisable"
		action="~/bdisable_execute" method="post"
		list=result columns=_columns_ cssColumn="styleField status"
		cssTable="table-hover table-striped"
	/>
	
	<br/>
	<div class="p-tcenter">
		<@p.submit icon="icon-bdisable-execute" onclick="return sampletags_bdisable_submit();" label="#(button-bdisable-execute)"/>

		<@p.a btn="default" icon="icon-back" href="javascript:window.history.back()" label="#(button-back)"/>

		<script type="text/javascript"><!--
			function sampletags_bdisable_submit() {
				return plv_submitCheckedKeys('sampletags_bdisable');
			}
			
			function onPageLoad() {
				plv_checkAll('sampletags_bdisable');
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
