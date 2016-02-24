<html>
<head>
	<title><@p.text name="title-print"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<ol class="breadcrumb">
			<li><@p.i icon="icon"/> <@p.text name="title"/></li>
			<li class="active"><@p.text name="step-print"/></li>
		</ol>
	</div>
<#if text.getText("well-print", "")?has_content>
	<div class="p-well"><@p.text name="well-print"/></div>
</#if>

	<#include "/action-alert.ftl"/>

<#if r??>
	<@p.form cssClass="p-vform" id="samplejoin" theme="bs3h">
	<#if a.displayField("id")>
			<@p.viewfield
				key="id"
				value="%{r.id}"
			/>
	</#if>
	<#if a.displayField("tagsId")>
			<@p.viewfield
				key="tagsId"
				value="%{r.tagsId}"
			/>
	</#if>
	<#if a.displayField("tagsName")>
			<@p.viewfield
				key="tagsName"
				value="%{r.tagsName}"
			/>
	</#if>
	<#if a.displayField("fileId")>
			<@p.viewfield
				key="fileId"
				value="%{r.fileId}"
			/>
	</#if>
	<#if a.displayField("fileName")>
			<@p.viewfield
				key="fileName"
				value="%{r.fileName}"
			/>
	</#if>
	</@p.form>
</#if>
</div>

</body>
</html>
