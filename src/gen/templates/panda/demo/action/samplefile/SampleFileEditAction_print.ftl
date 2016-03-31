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
<#assign _well = a.getText("well-print", "")/>
<#if _well?has_content>
	<div class="p-well">${_well}</div>
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
	<#if a.displayField("fileSize")>
			<@p.hidden
				name="fileSize"
				value="%{r.fileSize}"
			/>
	</#if>
	<#if a.displayField("fileItem")>
			<@p.uploader
				key="fileItem"
				value="%{r.fileItem}"
				readonly="true"
				size="30"
				uploadAction="/tmp/upload"
				uploadName="file"
				dnloadAction="/tmp/download"
				dnloadName="id"
				defaultAction="/samplefile/fdownload"
				defaultParams="!{'id': '%{r.id}'}"
				defaultEnable="%{r.id != null && r.fileSize > 0}"
			/>
	</#if>
	<#if a.displayField("imageSize")>
			<@p.hidden
				name="imageSize"
				value="%{r.imageSize}"
			/>
	</#if>
	<#if a.displayField("imageItem")>
			<@p.uploader
				key="imageItem"
				value="%{r.imageItem}"
				readonly="true"
				accept="image/*"
				size="30"
				uploadAction="/tmp/upload"
				uploadName="file"
				dnloadAction="/tmp/download"
				dnloadName="id"
				defaultAction="/samplefile/idownload"
				defaultParams="!{'id': '%{r.id}'}"
				defaultEnable="%{r.id != null && r.imageSize > 0}"
			/>
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
