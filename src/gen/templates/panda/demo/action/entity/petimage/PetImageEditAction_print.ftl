<html>
<head>
	<title><@p.text name="title-print"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="ui-headline">
		<ol class="breadcrumb">
			<li><@p.i icon="icon"/> <@p.text name="title"/></li>
			<li class="active"><@p.text name="step-print"/></li>
		</ol>
	</div>
<#assign _well = a.getText("well-print", "")/>
<#if _well?has_content>
	<div class="p-well">${_well}</div>
</#if>

	<div id="petimage_alert"><#include "/action-alert.ftl"/></div>

<#if r??>
	<@p.form cssClass="p-vform" id="petimage">
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
				format="size"
			/>
	</#if>
	<#if a.displayField("imageFile")>
			<@p.uploader
				key="imageFile"
				value="%{r.imageFile}"
				readonly="true"
				accept="image/*"
				size="30"
				uploadUrl="%{b.files_path + '/upload'}"
				uploadName="file"
				dnloadUrl="%{b.files_path + '/download?file=$'}"
				defaultAction="/petimage/pimage"
				defaultParams="!{'id': '%{r.id}'}"
				defaultEnable="%{r.id != null && r.imageSize > 0}"
			/>
	</#if>
	<#if a.displayField("updatedAt")>
			<@p.viewfield
				key="updatedAt"
				value="%{r.updatedAt}"
				format="datetime"
			/>
	</#if>
	<#if a.displayField("updatedBy")>
			<@p.hidden
				name="updatedBy"
				value="%{r.updatedBy}"
			/>
	</#if>
	<#if a.displayField("updatedByName")>
			<@p.hidden
				name="updatedByName"
				value="%{r.updatedByName}"
			/>
	</#if>
	<#if a.displayField("updatedByUser")>
			<@p.viewfield
				key="updatedByUser"
				value="%{r.updatedByUser}"
			/>
	</#if>
	</@p.form>
</#if>
</div>

</body>
</html>
