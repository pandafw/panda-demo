<html>
<head>
	<title><@p.text name="title-update"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<ol class="breadcrumb">
			<li><@p.i icon="icon"/> <@p.text name="title"/></li>
			<li><@p.text name="step-update"/></li>
			<li class="active"><@p.text name="step-update-confirm"/></li>
		</ol>
	</div>

	<div class="p-toolbar-wrap"><ul class="p-toolbar">
<#if action.hasPermission("~/list")><li><@p.a icon="icon-list" action="~/list"><@p.text name='button-list'/></@p.a>
</li></#if>	</ul><div class="clearfix"></div></div>

	<#include "/action-alert.ftl"/>

<#if r??>
	<@p.form cssClass="p-cform" id="samplefile" initfocus="true" method="post" theme="bs3h">
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
		<@p.div cssClass="p-buttons">
			<@p.submit icon="icon-update-execute" action="~/update_execute"><@p.text name="button-update-execute"/></@p.submit>
			<@p.submit icon="icon-back" action="~/update_input"><@p.text name="button-back"/></@p.submit>
		</@p.div>
	</@p.form>
<#else>
	<div class="p-tcenter">
		<@p.a btype="default" icon="back" href="#" onclick="window.history.back();return false;"><@p.text name="button-back"/></@p.a>
	</div>
</#if>
</div>

</body>
</html>
