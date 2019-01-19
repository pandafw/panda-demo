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
<#if a.displayField("name")>
	<#assign _columns_ = _columns_ + [{
			"name": "name",
			"header": text.getText("a.t.name"),
			"sortable": false,
			"tooltip": text.getText("a.t.name-tip", "")
		}] />
</#if>
<#if a.displayField("compositeUnique1")>
	<#assign _columns_ = _columns_ + [{
			"name": "compositeUnique1",
			"header": text.getText("a.t.compositeUnique1"),
			"sortable": false,
			"tooltip": text.getText("a.t.compositeUnique1-tip", "")
		}] />
</#if>
<#if a.displayField("compositeUnique2")>
	<#assign _columns_ = _columns_ + [{
			"name": "compositeUnique2",
			"header": text.getText("a.t.compositeUnique2"),
			"sortable": false,
			"tooltip": text.getText("a.t.compositeUnique2-tip", "")
		}] />
</#if>

	<@p.listview id="sampleunique_bdelete"
		action="~/bdelete_execute" method="post"
		list=result columns=_columns_ cssColumn="status"
		cssTable="table-hover table-striped"
	/>
	
	<br/>
	<div class="p-tcenter">
		<@p.submit icon="icon-bdelete-execute" onclick="return sampleunique_bdelete_submit();" label="#(button-bdelete-execute)"/>
		
	<#if a.hasPermission("~/list")>
		<@p.a btn="default" icon="icon-list" action="~/list" label="#(button-list)"/>
	</#if>

		<script type="text/javascript"><!--
			function sampleunique_bdelete_submit() {
				return plv_submitCheckedKeys('sampleunique_bdelete');
			}
			
			function onPageLoad() {
				plv_checkAll('sampleunique_bdelete');
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
