<html>
<head>
	<title><@p.text name="title-edit"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<ol class="breadcrumb">
			<li><@p.i icon="icon"/> <@p.text name="title"/></li>
			<li><@p.text name="step-edit"/></li>
			<li class="active"><@p.text name="step-edit-confirm"/></li>
		</ol>
	</div>
<#if text.getText("well-edit", "")?has_content>
	<div class="p-well"><@p.text name="well-edit"/></div>
</#if>


	<div class="p-toolbar-wrap"><ul class="p-toolbar">
<#if a.hasPermission("~/list")><li><@p.a icon="icon-list" action="~/list" label="#(button-list)"/>
</li></#if>	</ul><div class="clearfix"></div></div>

	<#include "/action-alert.ftl"/>

<#if r??>
	<@p.form cssClass="p-cform" id="samplejoin" initfocus="true" method="post" theme="bs3h">
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
		<@p.div cssClass="p-buttons">
			<@p.submit icon="icon-edit-execute" action="~/edit_execute" label="#(button-edit-execute)"/>
			<@p.submit icon="icon-back" action="~/edit_input" label="#(button-back)"/>
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
