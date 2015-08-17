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
		}, {
			"name": "cusid",
			"header": action.getText("d.cusid"),
			"filter": {
				"type": "number"
			},
			"hidden": false,
			"sortable": true,
			"tooltip": action.getText("d.cusid-tip", "")
		}, {
			"name": "ctime",
			"header": action.getText("d.ctime"),
			"format": {
				"type": "datetime"
			},
			"filter": {
				"type": "datetime"
			},
			"hidden": false,
			"sortable": true,
			"tooltip": action.getText("d.ctime-tip", "")
		}, {
			"name": "uusid",
			"header": action.getText("d.uusid"),
			"filter": {
				"type": "number"
			},
			"hidden": false,
			"sortable": true,
			"tooltip": action.getText("d.uusid-tip", "")
		}, {
			"name": "utime",
			"header": action.getText("d.utime"),
			"format": {
				"type": "datetime"
			},
			"filter": {
				"type": "datetime"
			},
			"hidden": false,
			"sortable": true,
			"tooltip": action.getText("d.utime-tip", "")
		}
		] />

	<@p.listview id="samplefile_list_popup" action="samplefile_list_popup"
		list="ds" columns=_columns_ cssColumn="status"
		start="pg.s" limit="pg.l" total="pg.t" sort="so.c" dir="so.d" filters="qf" filterm="qm"
		headPager="true" singleSelect="true" toggleSelect="false" autosize="false"
		onrowclick="%{'$.popup().callback(nlv_getRowData(this));'}"
	/>
</div>

</body>
</html>
