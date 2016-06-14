<html>
<head>
	<title><@p.text name="title-list_popup"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<ol class="breadcrumb">
			<li><@p.i icon="icon"/> <@p.text name="title"/></li>
			<li class="active"><@p.text name="step-list_popup"/></li>
		</ol>
	</div>
<#assign _well = a.getText("well-list_popup", "")/>
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
			"value": true,
			"header": a.getFieldLabel("id"),
			"filter": {
				"type": "number"
			},
			"sortable": true,
			"tooltip": a.getFieldTooltip("id")
		}] />
</#if>
<#if a.displayField("name")>
	<#assign _columns_ = _columns_ + [{
			"name": "name",
			"value": true,
			"header": a.getFieldLabel("name"),
			"filter": {
				"type": "string"
			},
			"sortable": true,
			"tooltip": a.getFieldTooltip("name")
		}] />
</#if>
<#if a.displayField("fileSize")>
	<#assign _columns_ = _columns_ + [{
			"name": "fileSize",
			"value": true,
			"header": a.getFieldLabel("fileSize"),
			"format": {
				"expr": "assist.getFileLink(top)",
				"escape": "none",
				"type": "expr"
			},
			"hidden": false,
			"sortable": true,
			"tooltip": a.getFieldTooltip("fileSize")
		}] />
</#if>
<#if a.displayField("imageSize")>
	<#assign _columns_ = _columns_ + [{
			"name": "imageSize",
			"value": true,
			"header": a.getFieldLabel("imageSize"),
			"format": {
				"expr": "assist.getImageLink(top)",
				"escape": "none",
				"type": "expr"
			},
			"hidden": false,
			"sortable": true,
			"tooltip": a.getFieldTooltip("imageSize")
		}] />
</#if>
<#if a.displayField("status")>
	<#assign _columns_ = _columns_ + [{
			"name": "status",
			"value": true,
			"header": a.getFieldLabel("status"),
			"format": {
				"codemap": consts.dataStatusMap,
				"type": "code"
			},
			"filter": {
				"list": consts.dataStatusMap,
				"type": "checklist"
			},
			"hidden": false,
			"sortable": true,
			"tooltip": a.getFieldTooltip("status")
		}] />
</#if>
<#if a.displayField("cusid")>
	<#assign _columns_ = _columns_ + [{
			"name": "cusid",
			"value": true,
			"header": a.getFieldLabel("cusid"),
			"filter": {
				"type": "number"
			},
			"hidden": false,
			"sortable": true,
			"tooltip": a.getFieldTooltip("cusid")
		}] />
</#if>
<#if a.displayField("ctime")>
	<#assign _columns_ = _columns_ + [{
			"name": "ctime",
			"value": true,
			"header": a.getFieldLabel("ctime"),
			"format": {
				"type": "datetime"
			},
			"filter": {
				"type": "datetime"
			},
			"hidden": false,
			"sortable": true,
			"tooltip": a.getFieldTooltip("ctime")
		}] />
</#if>
<#if a.displayField("uusid")>
	<#assign _columns_ = _columns_ + [{
			"name": "uusid",
			"value": true,
			"header": a.getFieldLabel("uusid"),
			"filter": {
				"type": "number"
			},
			"hidden": false,
			"sortable": true,
			"tooltip": a.getFieldTooltip("uusid")
		}] />
</#if>
<#if a.displayField("utime")>
	<#assign _columns_ = _columns_ + [{
			"name": "utime",
			"value": true,
			"header": a.getFieldLabel("utime"),
			"format": {
				"type": "datetime"
			},
			"filter": {
				"type": "datetime"
			},
			"hidden": false,
			"sortable": true,
			"tooltip": a.getFieldTooltip("utime")
		}] />
</#if>


	<@p.listview id="samplefile_list_popup" action="~/list_popup" 
		list=result columns=_columns_ cssColumn="status"
		headPager="true" singleSelect="true" toggleSelect="false"
		cssClass="p-lv-clickable" cssTable="table-hover table-striped"
		onrowclick="$.popup().callback(plv_getRowData(this));"
	/>
</div>

</body>
</html>
