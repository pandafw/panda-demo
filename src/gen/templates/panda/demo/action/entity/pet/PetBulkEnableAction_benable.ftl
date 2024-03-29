<html>
<head>
	<title><@p.text name="title-benable"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="ui-headline">
		<ol class="breadcrumb">
			<li><@p.i icon="icon"/> <@p.text name="title"/></li>
			<li><@p.text name="step-benable"/></li>
			<li class="active"><@p.text name="step-benable-confirm"/></li>
		</ol>
	</div>
<#assign _well = a.getText("well-benable", "")/>
<#if _well?has_content>
	<div class="p-well">${_well}</div>
</#if>


	<div class="ui-toolbar text-right"><ul>
<#if a.canAccess("./list")><li><@p.a action="./list" icon="icon-list" label="#(btn-list)"/>
</li></#if>	</ul></div>

	<div id="pet_alert"><#include "/action-alert.ftl"/></div>
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
		}, {
			"name": "id",
			"pkey" : true,
			"value": true,
			"header": a.getFieldLabel("id"),
			"display": a.displayField("id"),
			"sortable": false,
			"tooltip": a.getFieldTooltip("id")
		}, {
			"name": "name",
			"header": a.getFieldLabel("name"),
			"display": a.displayField("name"),
			"sortable": false,
			"tooltip": a.getFieldTooltip("name")
		}, {
			"name": "cid",
			"header": a.getFieldLabel("cid"),
			"display": a.displayField("cid"),
			"hidden": true,
			"sortable": false,
			"tooltip": a.getFieldTooltip("cid")
		}, {
			"name": "-icon",
			"header": a.getFieldLabel("-icon"),
			"display": a.displayField("-icon"),
			"format": {
				"expr": "<img class='pi-icon' src='%{base}/petimage/pimage?pid=%{top.id}'>",
				"escape": "none",
				"type": "tran"
			},
			"sortable": false,
			"tooltip": a.getFieldTooltip("-icon")
		}, {
			"name": "cname",
			"header": a.getFieldLabel("cname"),
			"display": a.displayField("cname"),
			"sortable": false,
			"tooltip": a.getFieldTooltip("cname")
		}, {
			"name": "gender",
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
			"header": a.getFieldLabel("birthday"),
			"display": a.displayField("birthday"),
			"format": {
				"type": "date"
			},
			"sortable": false,
			"tooltip": a.getFieldTooltip("birthday")
		}, {
			"name": "origin",
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
			"header": a.getFieldLabel("amount"),
			"display": a.displayField("amount"),
			"sortable": false,
			"tooltip": a.getFieldTooltip("amount")
		}, {
			"name": "price",
			"header": a.getFieldLabel("price"),
			"display": a.displayField("price"),
			"sortable": false,
			"tooltip": a.getFieldTooltip("price")
		}, {
			"name": "shopName",
			"header": a.getFieldLabel("shopName"),
			"display": a.displayField("shopName"),
			"sortable": false,
			"tooltip": a.getFieldTooltip("shopName")
		}, {
			"name": "status",
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
			"name": "updatedAt",
			"header": a.getFieldLabel("updatedAt"),
			"display": a.displayField("updatedAt"),
			"format": {
				"type": "datetime"
			},
			"hidden": false,
			"sortable": false,
			"tooltip": a.getFieldTooltip("updatedAt")
		}, {
			"name": "updatedBy",
			"header": a.getFieldLabel("updatedBy"),
			"display": a.displayField("updatedBy"),
			"format": {
				"expr": "top.updatedByUser",
				"type": "expr"
			},
			"hidden": false,
			"sortable": false,
			"tooltip": a.getFieldTooltip("updatedBy")
		}] />


	<@p.listview id="pet_benable"
		action="./benable.execute" method="post"
		list=result columns=_columns_ cssColumn="status"
		cssTable="table-hover table-striped"
	/>
	
	<br/>
	<div class="p-tcenter" focusme="true">
		<@p.submit onclick="return pet_benable_submit();" icon="icon-benable-execute" label="#(btn-benable-execute)"/>

		<@p.a href="javascript:window.history.back()" btn="default" icon="icon-back" label="#(btn-back)"/>

		<script type="text/javascript"><!--
			function pet_benable_submit() {
				return plv_submitCheckedKeys('pet_benable');
			}
			
			function onPageLoad() {
				plv_checkAll('pet_benable');
			}
		--></script>
	</div>
<#else>
	<div class="p-tcenter">
		<@p.a href="#" onclick="window.history.back();return false;" btn="default" icon="back" label="#(btn-back)"/>
	</div>
</#if>
</div>

</body>
</html>
