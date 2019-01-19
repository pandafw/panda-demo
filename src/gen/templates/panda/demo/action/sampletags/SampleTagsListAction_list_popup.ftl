<html>
<head>
	<title><@p.text name="title-list_popup"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<h3><@p.text name="title-list_popup"><@p.param name="title" value="#(title)"/></@p.text></h3>
	</div>

	<#include "/panda/exts/struts2/views/action-alert.ftl"/>

	<#assign _columns_ = [{
			"name": "_number_",
			"type": "number",
			"nowrap": true,
			"fixed": true
		}, {
			"name": "id",
			"header": action.getText("d.id"),
			"filter": {
				"type": "number"
			},
			"sortable": true,
			"tooltip": action.getText("d.id-tip", "")
		}, {
			"name": "name",
			"header": action.getText("d.name"),
			"filter": {
				"type": "string"
			},
			"sortable": true,
			"tooltip": action.getText("d.name-tip", "")
		}, {
			"name": "status",
			"header": action.getText("d.status"),
			"format": {
				"codemap": "consts.dataStatusMap",
				"type": "code"
			},
			"filter": {
				"list": "consts.dataStatusMap",
				"type": "radio"
			},
			"hidden": false,
			"sortable": true,
			"tooltip": action.getText("d.status-tip", "")
		}
		] />

	<@p.listview id="sampletags_list_popup" action="sampletags_list_popup"
		list="ds" columns=_columns_ cssColumn="styleField"
		start="pg.s" limit="pg.l" total="pg.t" sort="so.c" dir="so.d" filters="qf" filterm="qm"
		headPager="true" singleSelect="true" toggleSelect="false" autosize="false"
		onrowclick="%{'$.popup().callback(nlv_getRowData(this));'}"
	/>
</div>

</body>
</html>
