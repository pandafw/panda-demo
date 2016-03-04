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
			<li class="active"><@p.text name="step-bdelete-confirm"/></li>
		</ol>
	</div>
<#if text.getText("well-bdelete", "")?has_content>
	<div class="p-well"><@p.text name="well-bdelete"/></div>
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
<#if a.displayField("popupDatetimeField")>
	<#assign _columns_ = _columns_ + [{
			"name": "popupDatetimeField",
			"header": text.getText("a.t.popupDatetimeField"),
			"format": {
				"type": "datetime"
				},
			"sortable": false,
			"tooltip": text.getText("a.t.popupDatetimeField-tip", "")
		}] />
</#if>
<#if a.displayField("popupDateField")>
	<#assign _columns_ = _columns_ + [{
			"name": "popupDateField",
			"header": text.getText("a.t.popupDateField"),
			"format": {
				"type": "date"
				},
			"sortable": false,
			"tooltip": text.getText("a.t.popupDateField-tip", "")
		}] />
</#if>
<#if a.displayField("popupTimeField")>
	<#assign _columns_ = _columns_ + [{
			"name": "popupTimeField",
			"header": text.getText("a.t.popupTimeField"),
			"format": {
				"type": "time"
				},
			"sortable": false,
			"tooltip": text.getText("a.t.popupTimeField-tip", "")
		}] />
</#if>
<#if a.displayField("inlineDatetimeField")>
	<#assign _columns_ = _columns_ + [{
			"name": "inlineDatetimeField",
			"header": text.getText("a.t.inlineDatetimeField"),
			"format": {
				"type": "datetime"
				},
			"sortable": false,
			"tooltip": text.getText("a.t.inlineDatetimeField-tip", "")
		}] />
</#if>
<#if a.displayField("inlineDateField")>
	<#assign _columns_ = _columns_ + [{
			"name": "inlineDateField",
			"header": text.getText("a.t.inlineDateField"),
			"format": {
				"type": "date"
				},
			"sortable": false,
			"tooltip": text.getText("a.t.inlineDateField-tip", "")
		}] />
</#if>
<#if a.displayField("inlineTimeField")>
	<#assign _columns_ = _columns_ + [{
			"name": "inlineTimeField",
			"header": text.getText("a.t.inlineTimeField"),
			"format": {
				"type": "time"
				},
			"sortable": false,
			"tooltip": text.getText("a.t.inlineTimeField-tip", "")
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

	<@p.listview id="sampledate_bdelete"
		action="~/bdelete_execute" method="post"
		list=result columns=_columns_ cssColumn="status"
		cssTable="table-hover table-striped"
	/>
	
	<br/>
	<div class="p-tcenter">
		<@p.submit icon="icon-bdelete-execute" onclick="return sampledate_bdelete_submit();" label="#(button-bdelete-execute)"/>
		
	<#if a.hasPermission("~/list")>
		<@p.a btn="default" icon="icon-list" action="~/list" label="#(button-list)"/>
	</#if>

		<script type="text/javascript"><!--
			function sampledate_bdelete_submit() {
				return plv_submitCheckedKeys('sampledate_bdelete');
			}
			
			function onPageLoad() {
				plv_checkAll('sampledate_bdelete');
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
