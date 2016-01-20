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
	<@p.form cssClass="p-vform" id="samplefile" theme="bs3h">
			<@p.viewfield
				key="id"
				value="%{r.id}"
			/>
			<@p.viewfield
				key="name"
				value="%{r.name}"
			/>
			<@p.uploader
				key="fileField"
				value="%{r.fileField}"
				readonly="true"
			>
				<#if r?? && r.fileField?? && r.fileField.exist>
					<@p.param name="uploadAction"><@p.url action='fu' escapeAmp='false'></@p.url></@p.param>
					<@p.param name="uploadParam">file</@p.param>
					<@p.param name="dnloadAction"><@p.url action='fd' escapeAmp='false'></@p.url></@p.param>
					<@p.param name="dnloadParam">fn</@p.param>
					<@p.param name="defaultLink"><@p.url action='sf' escapeAmp='false'><@p.param name="id" value="d.id"/></@p.url></@p.param>
					<@p.param name="defaultText"><@p.text name="label-attachment"/></@p.param>
				</#if>
			</@p.uploader>
			<@p.uploader
				key="imageField"
				value="%{r.imageField}"
				readonly="true"
			>
				<#if r?? && r.imageField?? && r.imageField.exist>
					<@p.param name="uploadAction"><@p.url action='iu' escapeAmp='false'></@p.url></@p.param>
					<@p.param name="uploadParam">image</@p.param>
					<@p.param name="dnloadAction"><@p.url action='id' escapeAmp='false'></@p.url></@p.param>
					<@p.param name="dnloadParam">fn</@p.param>
					<@p.param name="defaultLink"><@p.url action='si' escapeAmp='false'><@p.param name="id" value="d.id"/></@p.url></@p.param>
					<@p.param name="defaultText"><@p.text name="label-attachment"/></@p.param>
				</#if>
			</@p.uploader>
			<@p.viewfield
				key="status"
				value="%{r.status}"
				list="%{consts.dataStatusMap}"
			/>
			<@p.viewfield
				key="cusid"
				value="%{r.cusid}"
			/>
			<@p.viewfield
				key="cusnm"
				value="%{r.cusnm}"
			/>
			<@p.viewfield
				key="ctime"
				value="%{r.ctime}"
				format="datetime"
			/>
			<@p.viewfield
				key="uusid"
				value="%{r.uusid}"
			/>
			<@p.viewfield
				key="uusnm"
				value="%{r.uusnm}"
			/>
			<@p.viewfield
				key="utime"
				value="%{r.utime}"
				format="datetime"
			/>
	</@p.form>
</#if>
</div>

</body>
</html>
