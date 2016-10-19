<html>
<head>
	<title><@p.text name="title-add"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<ol class="breadcrumb">
			<li><@p.i icon="icon"/> <@p.text name="title"/></li>
			<li><@p.text name="step-add"/></li>
			<li class="active"><@p.text name="step-add-confirm"/></li>
		</ol>
	</div>
<#assign _well = a.getText("well-add-confirm", "")/>
<#if _well?has_content>
	<div class="p-well">${_well}</div>
</#if>


	<div class="p-toolbar-wrap"><ul class="p-toolbar">
<#if a.canAccess("~/list")><li><@p.a icon="icon-list" action="~/list" label="#(button-list)"/>
</li></#if>	</ul><div class="clearfix"></div></div>

	<#include "/action-alert.ftl"/>

<#if r??>
	<@p.form cssClass="p-cform" id="sampleunique" focusme="true" method="post" theme="bs3h">
	<#if a.displayField("id")>
			<@p.viewfield
				key="id"
				value="%{r.id}"
			/>
	</#if>
	<#if a.displayField("name")>
			<@p.viewfield
				key="name"
				value="%{r.name}"
			/>
	</#if>
	<#if a.displayField("compositeUnique1")>
			<@p.viewfield
				key="compositeUnique1"
				value="%{r.compositeUnique1}"
			/>
	</#if>
	<#if a.displayField("compositeUnique2")>
			<@p.viewfield
				key="compositeUnique2"
				value="%{r.compositeUnique2}"
			/>
	</#if>
		<@p.div cssClass="p-buttons">
			<@p.submit icon="icon-add-execute" action="~/add_execute" label="#(button-add-execute)"/>
			<@p.submit icon="icon-back" action="~/add_input" label="#(button-back)"/>
		</@p.div>
	</@p.form>
<#else>
	<div class="p-tcenter">
		<@p.a btn="default" icon="back" href="#" onclick="window.history.back();return false;" label="#(button-back)"/>
	</div>
</#if>
</div>

</body>
</html>
