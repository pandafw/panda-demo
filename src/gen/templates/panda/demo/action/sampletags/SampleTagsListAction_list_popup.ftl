<html>
<head>
	<title><@p.text name="title-list_popup"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<h3><@p.text name="title-list_popup"><@p.param name="title" value="#(title)"/></@p.text></h3>
	</div>

	<#include "/panda/mvc/view/action-alert.ftl"/>

	<#assign _columns_ = [{
			"name": "_number_",
			"type": "number",
			"nowrap": true,
			"fixed": true
		}, {
			"name": "id",
			"header": text.getText("a.t.id"),
			"filter": {
				"type": "number"
			},
			"sortable": true,
			"tooltip": text.getText("a.t.id-tip", ""),
		}, {
			"name": "name",
			"header": text.getText("a.t.name"),
			"filter": {
				"type": "string"
			},
			"sortable": true,
			"tooltip": text.getText("a.t.name-tip", ""),
		}, {
			"name": "status",
			"header": text.getText("a.t.status"),
			"format": {
				"codemap": consts.dataStatusMap,
				"type": "code"
			},
			"filter": {
				"list": "consts.dataStatusMap",
				"type": "radio"
			},
			"hidden": false,
			"sortable": true,
			"tooltip": text.getText("a.t.status-tip", ""),
		}
		] />

	<@p.listview id="sampletags_list_popup" action="~/list_popup" 
		list=result columns=_columns_ cssColumn="styleField"
		headPager="true" singleSelect="true" toggleSelect="false" autosize="false"
		onrowclick="%{'$.popup().callback(plv_getRowData(this));'}"
	/>
</div>

</body>
</html>
