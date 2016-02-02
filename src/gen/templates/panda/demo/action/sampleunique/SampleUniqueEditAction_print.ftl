<html>
<head>
	<title><@p.text name="title-print"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<h3><@p.i icon="icon"/> <@p.text name="title-print"><@p.param name="title" value="#(title)"/></@p.text></h3>
	</div>

	<#include "/action-alert.ftl"/>

<#if r??>
	<@p.form cssClass="p-vform" id="sampleunique" theme="bs3h">
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
	</@p.form>
</#if>
</div>

</body>
</html>
