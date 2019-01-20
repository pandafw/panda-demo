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
	<@p.form cssClass="p-vform" id="petimage" theme="bs3h">
	<#if a.displayField("id")>
			<@p.viewfield
				key="id"
				value="%{r.id}"
			/>
	</#if>
	<#if a.displayField("pid")>
			<@p.hidden
				name="pid"
				value="%{r.pid}"
			/>
	</#if>
	<#if a.displayField("pname")>
			<@p.viewfield
				key="pname"
				value="%{r.pname}"
			/>
	</#if>
	<#if a.displayField("imageName")>
			<@p.viewfield
				key="imageName"
				value="%{r.imageName}"
			/>
	</#if>
	<#if a.displayField("imageSize")>
			<@p.viewfield
				key="imageSize"
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
				defaultAction="/petimage/idownload"
				defaultParams="!{'id': '%{r.id}'}"
				defaultEnable="%{r.id != null && r.imageSize > 0}"
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
