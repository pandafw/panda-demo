<html>
<head>
	<title><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<h3><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></h3>
	</div>

	<ul class="p-toolbar">
		<li><@p.a icon="icon-refresh" href="javascript:location.reload(true)"><@p.text name='button-refresh'/></@p.a></li>
	</ul>

	<#include "/panda/exts/struts2/views/action-alert.ftl"/>

	<#assign _columns_ = [{
		"name": "_number_",
		"type": "number",
		"header": action.getText("list-column-_number_", ""),
		"nowrap": true,
		"fixed": true
	}] />

	<#assign _actions_ = [] />
	<#assign _ash_ = "" />
	<#if action.hasPermission("sampledate_insert")>
		<@p.url var="_u_" action="sampledate_insert"/>
		<@p.text var="_icon_" name="icon-insert"/>
		<#assign _ash_ = "<a class=\"n-lv-ia\" href=\"" + _u_
				+ "\" title=\"" + action.getText("tooltip-insert", "")?html + "\">"/>
		<#if _icon_?has_content>
			<#assign _ash_ = _ash_ + "<img class=\"n-lv-i n-icon " + _icon_ 
				+ "\" src=\"" + static + "/nuts/images/s.gif\"></img>"/>
		</#if>
		<#assign _ash_ = _ash_ + action.getText("label-insert", "") + "</a>"/>
	</#if>
	<#if action.hasPermission("sampledate_copy")>
		<#assign _actions_ = _actions_ + [{
			"action": "sampledate_copy",
			"icon": action.getText("icon-copy"),
			"label": action.getText("label-copy", ""),
			"tooltip": action.getText("tooltip-copy", "")
		}] />
	</#if>
	<#if action.hasPermission("sampledate_update")>
		<#assign _actions_ = _actions_ + [{
			"action": "sampledate_update",
			"icon": action.getText("icon-update"),
			"label": action.getText("label-update", ""),
			"tooltip": action.getText("tooltip-update", "")
		}] />
	</#if>
	<#if action.hasPermission("sampledate_delete")>
		<#assign _actions_ = _actions_ + [{
			"action": "sampledate_delete",
			"icon": action.getText("icon-delete"),
			"label": action.getText("label-delete", ""),
			"tooltip": action.getText("tooltip-delete", "")
		}] />
	</#if>
	<#if _actions_?has_content || _ash_?has_content>
		<#if !(_ash_?has_content)>
			<#assign _ash_ = action.getText("list-column-_actions_", "")/>
		</#if>
		<#assign _actionc_ = [{
			"name": "_actions_",
			"type": "actions",
			"header": _ash_,
			"actions": _actions_,
			"nowrap": true,
			"fixed": true
		}] />
	</#if>
	<#if action.getText("listview-actions-align", "left") == "left">
		<#assign _columns_ = _columns_ + _actionc_![]/>
	</#if>

	<#if action.hasPermission("sampledate_bdelete")>
		<#assign _columns_ = _columns_ + [{
			"name": "_check_",
			"type": "check",
			"nowrap": true,
			"fixed": true
		}] />
	</#if>

	<#assign _columns_ = _columns_ + [{
			"name" : "id",
			"pkey" : true,
			"header": action.getText("list-column-id"),
			"filter": {
				"type": "number"
			},
			"link": true,
			"sortable": true,
			"tooltip": action.getText("list-column-id-tip", "")
		}, {
			"name" : "popupDatetimeField",
			"header": action.getText("list-column-popupDatetimeField"),
			"format": {
				"type": "datetime"
			},
			"filter": {
				"type": "datetime"
			},
			"sortable": true,
			"tooltip": action.getText("list-column-popupDatetimeField-tip", "")
		}, {
			"name" : "popupDateField",
			"header": action.getText("list-column-popupDateField"),
			"format": {
				"type": "date"
			},
			"filter": {
				"type": "date"
			},
			"sortable": true,
			"tooltip": action.getText("list-column-popupDateField-tip", "")
		}, {
			"name" : "popupTimeField",
			"header": action.getText("list-column-popupTimeField"),
			"format": {
				"type": "time"
			},
			"filter": {
				"type": "time"
			},
			"sortable": true,
			"tooltip": action.getText("list-column-popupTimeField-tip", "")
		}, {
			"name" : "inlineDatetimeField",
			"header": action.getText("list-column-inlineDatetimeField"),
			"format": {
				"type": "datetime"
			},
			"filter": {
				"type": "datetime"
			},
			"sortable": true,
			"tooltip": action.getText("list-column-inlineDatetimeField-tip", "")
		}, {
			"name" : "inlineDateField",
			"header": action.getText("list-column-inlineDateField"),
			"format": {
				"type": "date"
			},
			"filter": {
				"type": "date"
			},
			"sortable": true,
			"tooltip": action.getText("list-column-inlineDateField-tip", "")
		}, {
			"name" : "inlineTimeField",
			"header": action.getText("list-column-inlineTimeField"),
			"format": {
				"type": "time"
			},
			"filter": {
				"type": "time"
			},
			"sortable": true,
			"tooltip": action.getText("list-column-inlineTimeField-tip", "")
		}
	] />

	<#if action.getText("listview-actions-align", "") == "right">
		<#assign _columns_ = _columns_ + _actionc_![]/>
	</#if>

	<@p.listview id="sampledate_list" action="sampledate_list" 
		list="ds" columns=_columns_ cssColumn="invalid"
		start="pg.s" limit="pg.l" total="pg.t" sort="so.c" dir="so.d" filters="qf" filterm="qm" pager="true"
		link={ "action": "sampledate_view", "params": { "d.id": "id" } }
	>
		<@s.param name="tools">
			<#if action.hasPermission("sampledate_bdelete")>
				<@p.submit icon="icon-bdelete" action="sampledate_bdelete" onclick="return sampledate_list_bdelete();" theme="simple"><@p.text name="button-bdelete"/></@p.submit>
			</#if>
			<#if action.hasPermission("sampledate_list_print")>
				<@p.submit icon="icon-print" onclick="return sampledate_list_print();" theme="simple"><@p.text name="button-print"/></@p.submit>
			</#if>
			<#if action.hasPermission("sampledate_list_csv")>
				<@p.submit icon="icon-csv" onclick="return sampledate_list_csv();" theme="simple"><@p.text name="button-csv"/></@p.submit>
			</#if>
			<#if action.hasPermission("/json/sampledate_list")>
				<@p.submit icon="icon-json" onclick="return sampledate_list_json();" theme="simple"><@p.text name="button-json"/></@p.submit>
			</#if>
			<#if action.hasPermission("/xml/sampledate_list")>
				<@p.submit icon="icon-xml" onclick="return sampledate_list_xml();" theme="simple"><@p.text name="button-xml"/></@p.submit>
			</#if>
			<#if action.hasPermission("sampledate_list_print")>
				<@p.submit icon="icon-pdf-list_print" onclick="return sampledate_list_pdf_list_print();" theme="simple"><@p.text name="button-pdf-list_print"/></@p.submit>
			</#if>
		</@s.param>
	</@p.listview>

	<script type="text/javascript"><!--
		function sampledate_list_bdelete() {
			return nlv_submitCheckedKeys('sampledate_list', '<@p.url action="sampledate_bdelete"/>');
		}
		function sampledate_list_print() {
			window.open("<@p.url action='sampledate_list_print' includeParams='all' escapeAmp='false'/>");
			return false;
		}
		function sampledate_list_csv() {
			window.open("<@p.url action='sampledate_list_csv' includeParams='all' escapeAmp='false'/>");
			return false;
		}
		function sampledate_list_json() {
			window.open("<@p.url action='sampledate_list' namespace='/json' includeParams='all' escapeAmp='false'/>");
			return false;
		}
		function sampledate_list_xml() {
			window.open("<@p.url action='sampledate_list' namespace='/xml' includeParams='all' escapeAmp='false'/>");
			return false;
		}
		function sampledate_list_pdf_list_print() {
			window.open("<@p.url action='pdf' namespace='/' escapeAmp='false'/>?url=" + encodeURIComponent("<@p.url action='sampledate_list_print' forceAddSchemeHostAndPort='true' escapeAmp='false'/>" + location.search));
			return false;
		}
	--></script>
</div>

</body>
</html>
