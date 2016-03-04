<html>
<head>
	<title><@p.text name="title-copy"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<ol class="breadcrumb">
			<li><@p.i icon="icon"/> <@p.text name="title"/></li>
			<li><@p.text name="step-copy"/></li>
			<li class="active"><@p.text name="step-copy-confirm"/></li>
		</ol>
	</div>
<#if text.getText("well-copy", "")?has_content>
	<div class="p-well"><@p.text name="well-copy"/></div>
</#if>


	<div class="p-toolbar-wrap"><ul class="p-toolbar">
<#if a.hasPermission("~/list")><li><@p.a icon="icon-list" action="~/list" label="#(button-list)"/>
</li></#if>	</ul><div class="clearfix"></div></div>

	<#include "/action-alert.ftl"/>

<#if r??>
	<@p.form cssClass="p-cform" id="sampleunique" initfocus="true" method="post" theme="bs3h">
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
			<@p.submit icon="icon-copy-execute" action="~/copy_execute" label="#(button-copy-execute)"/>
			<@p.submit icon="icon-back" action="~/copy_input" label="#(button-back)"/>
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
