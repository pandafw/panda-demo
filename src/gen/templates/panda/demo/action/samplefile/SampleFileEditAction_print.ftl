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
	<@p.form cssClass="p-vform" id="samplefile" theme="bs3h">
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
	<#if a.displayField("fileField")>
			<@p.uploader
				key="fileField"
				value="%{r.fileField}"
				readonly="true"
			>
				<#if r?? && r.fileField?? && r.fileField.exist>
					<@p.param name="uploadAction">{'action':'fu','namespace':'/images'}</@p.param>
					<@p.param name="dnloadAction">{'action':'fd','namespace':'/images'}</@p.param>
					<@p.param name="defaultLink">{'action':'sf','namespace':'/images','params':{'id':'.id'}}</@p.param>
				</#if>
			</@p.uploader>
	</#if>
	<#if a.displayField("imageField")>
			<@p.uploader
				key="imageField"
				value="%{r.imageField}"
				readonly="true"
			>
				<#if r?? && r.imageField?? && r.imageField.exist>
					<@p.param name="uploadAction">{'action':'iu','namespace':'/images'}</@p.param>
					<@p.param name="dnloadAction">{'action':'id','namespace':'/images'}</@p.param>
					<@p.param name="defaultLink">{'action':'si','namespace':'/images','params':{'id':'.id'}}</@p.param>
				</#if>
			</@p.uploader>
	</#if>
	<#if a.displayField("status")>
			<@p.viewfield
				key="status"
				value="%{r.status}"
				list="%{consts.dataStatusMap}"
			/>
	</#if>
	<#if a.displayField("cusid")>
			<@p.viewfield
				key="cusid"
				value="%{r.cusid}"
			/>
	</#if>
	<#if a.displayField("cusnm")>
			<@p.viewfield
				key="cusnm"
				value="%{r.cusnm}"
			/>
	</#if>
	<#if a.displayField("ctime")>
			<@p.viewfield
				key="ctime"
				value="%{r.ctime}"
				format="datetime"
			/>
	</#if>
	<#if a.displayField("uusid")>
			<@p.viewfield
				key="uusid"
				value="%{r.uusid}"
			/>
	</#if>
	<#if a.displayField("uusnm")>
			<@p.viewfield
				key="uusnm"
				value="%{r.uusnm}"
			/>
	</#if>
	<#if a.displayField("utime")>
			<@p.viewfield
				key="utime"
				value="%{r.utime}"
				format="datetime"
			/>
	</#if>
	</@p.form>
</#if>
</div>

</body>
</html>
