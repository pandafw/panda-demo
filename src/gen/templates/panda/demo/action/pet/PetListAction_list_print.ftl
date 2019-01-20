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
			"fixed": true,
			"header": a.getText("listview-th-number", "")
		}, {
			"name": "id",
			"value": false,
			"header": a.getFieldLabel("id"),
			"display": a.displayField("id"),
			"sortable": false,
			"tooltip": a.getFieldTooltip("id")
		}, {
			"name": "name",
			"value": false,
			"header": a.getFieldLabel("name"),
			"display": a.displayField("name"),
			"sortable": false,
			"tooltip": a.getFieldTooltip("name")
		}, {
			"name": "cid",
			"value": false,
			"header": a.getFieldLabel("cid"),
			"display": a.displayField("cid"),
			"hidden": true,
			"sortable": false,
			"tooltip": a.getFieldTooltip("cid")
		}, {
			"name": "-icon",
			"value": false,
			"header": a.getFieldLabel("-icon"),
			"display": a.displayField("-icon"),
			"format": {
				"expr": "<img class='pi-icon' src='%{base}/petimage/iicon?id=%{top.id}'>",
				"escape": "none",
				"type": "tran"
			},
			"sortable": false,
			"tooltip": a.getFieldTooltip("-icon")
		}, {
			"name": "cname",
			"value": false,
			"header": a.getFieldLabel("cname"),
			"display": a.displayField("cname"),
			"sortable": false,
			"tooltip": a.getFieldTooltip("cname")
		}, {
			"name": "gender",
			"value": false,
			"header": a.getFieldLabel("gender"),
			"display": a.displayField("gender"),
			"format": {
				"codemap": consts.petGenderMap,
				"type": "code"
			},
			"sortable": false,
			"tooltip": a.getFieldTooltip("gender")
		}, {
			"name": "birthday",
			"value": false,
			"header": a.getFieldLabel("birthday"),
			"display": a.displayField("birthday"),
			"format": {
				"type": "date"
			},
			"sortable": false,
			"tooltip": a.getFieldTooltip("birthday")
		}, {
			"name": "origin",
			"value": false,
			"header": a.getFieldLabel("origin"),
			"display": a.displayField("origin"),
			"format": {
				"codemap": consts.petOriginMap,
				"type": "code"
			},
			"sortable": false,
			"tooltip": a.getFieldTooltip("origin")
		}, {
			"name": "temper",
			"value": false,
			"header": a.getFieldLabel("temper"),
			"display": a.displayField("temper"),
			"format": {
				"codemap": consts.petTemperMap,
				"type": "code"
			},
			"sortable": false,
			"tooltip": a.getFieldTooltip("temper")
		}, {
			"name": "habits",
			"value": false,
			"header": a.getFieldLabel("habits"),
			"display": a.displayField("habits"),
			"format": {
				"codemap": consts.petHabitMap,
				"type": "code"
			},
			"sortable": false,
			"tooltip": a.getFieldTooltip("habits")
		}, {
			"name": "amount",
			"value": false,
			"header": a.getFieldLabel("amount"),
			"display": a.displayField("amount"),
			"sortable": false,
			"tooltip": a.getFieldTooltip("amount")
		}, {
			"name": "price",
			"value": false,
			"header": a.getFieldLabel("price"),
			"display": a.displayField("price"),
			"sortable": false,
			"tooltip": a.getFieldTooltip("price")
		}, {
			"name": "shopName",
			"value": false,
			"header": a.getFieldLabel("shopName"),
			"display": a.displayField("shopName"),
			"sortable": false,
			"tooltip": a.getFieldTooltip("shopName")
		}, {
			"name": "status",
			"value": false,
			"header": a.getFieldLabel("status"),
			"display": a.displayField("status"),
			"format": {
				"codemap": consts.dataStatusMap,
				"type": "code"
			},
			"hidden": false,
			"sortable": false,
			"tooltip": a.getFieldTooltip("status")
		}, {
			"name": "uusid",
			"value": false,
			"header": a.getFieldLabel("uusid"),
			"display": a.displayField("uusid"),
			"hidden": false,
			"sortable": false,
			"tooltip": a.getFieldTooltip("uusid")
		}, {
			"name": "utime",
			"value": false,
			"header": a.getFieldLabel("utime"),
			"display": a.displayField("utime"),
			"format": {
				"type": "datetime"
			},
			"hidden": false,
			"sortable": false,
			"tooltip": a.getFieldTooltip("utime")
		}] />


	<@p.listview id="pet_list_print" action="~/list.print" 
		list=result columns=_columns_ cssColumn="status"
		cssTable="table-striped"
	/>
</div>

</body>
</html>
