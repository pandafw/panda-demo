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
<#assign _well = a.getText("well-bdelete-success", "")/>
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
			"header": a.getFieldLabel("id"),
			"sortable": false,
			"tooltip": a.getFieldTooltip("id")
		}] />
</#if>
<#if a.displayField("popupDatetimeField")>
	<#assign _columns_ = _columns_ + [{
			"name": "popupDatetimeField",
			"header": a.getFieldLabel("popupDatetimeField"),
			"format": {
				"type": "datetime"
				},
			"sortable": false,
			"tooltip": a.getFieldTooltip("popupDatetimeField")
		}] />
</#if>
<#if a.displayField("popupDateField")>
	<#assign _columns_ = _columns_ + [{
			"name": "popupDateField",
			"header": a.getFieldLabel("popupDateField"),
			"format": {
				"type": "date"
				},
			"sortable": false,
			"tooltip": a.getFieldTooltip("popupDateField")
		}] />
</#if>
<#if a.displayField("popupTimeField")>
	<#assign _columns_ = _columns_ + [{
			"name": "popupTimeField",
			"header": a.getFieldLabel("popupTimeField"),
			"format": {
				"type": "time"
				},
			"sortable": false,
			"tooltip": a.getFieldTooltip("popupTimeField")
		}] />
</#if>
<#if a.displayField("inlineDatetimeField")>
	<#assign _columns_ = _columns_ + [{
			"name": "inlineDatetimeField",
			"header": a.getFieldLabel("inlineDatetimeField"),
			"format": {
				"type": "datetime"
				},
			"sortable": false,
			"tooltip": a.getFieldTooltip("inlineDatetimeField")
		}] />
</#if>
<#if a.displayField("inlineDateField")>
	<#assign _columns_ = _columns_ + [{
			"name": "inlineDateField",
			"header": a.getFieldLabel("inlineDateField"),
			"format": {
				"type": "date"
				},
			"sortable": false,
			"tooltip": a.getFieldTooltip("inlineDateField")
		}] />
</#if>
<#if a.displayField("inlineTimeField")>
	<#assign _columns_ = _columns_ + [{
			"name": "inlineTimeField",
			"header": a.getFieldLabel("inlineTimeField"),
			"format": {
				"type": "time"
				},
			"sortable": false,
			"tooltip": a.getFieldTooltip("inlineTimeField")
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


	<@p.listview id="sampledate_bdelete"
		list=result columns=_columns_ cssColumn="status"
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
