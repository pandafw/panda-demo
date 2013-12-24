<html>
<head>
	<title><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<h3><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></h3>
	</div>

	<#include "/panda/exts/struts2/views/action-alert.ftl"/>

	<@p.form cssClass="p-vform" id="samplefile" theme="bs3h">
			<@p.viewfield
				key="d.id"
			/>
			<@p.viewfield
				key="d.name"
			/>
			<@p.uploader
				key="d.fileField"
				disabled="${successMethodResult?string}"
				readonly="true"
			>
				<#if d?? && d.fileField?? && d.fileField.exist>
					<@s.param name="uploadAction"><@p.url action='fu' namespace='/images' escapeAmp='false'></@p.url></@s.param>
					<@s.param name="uploadParam">file</@s.param>
					<@s.param name="dnloadAction"><@p.url action='fd' namespace='/images' escapeAmp='false'></@p.url></@s.param>
					<@s.param name="dnloadParam">fn</@s.param>
					<@s.param name="defaultLink"><@p.url action='sf' namespace='/images' escapeAmp='false'><@s.param name="id" value="d.id"/></@p.url></@s.param>
					<@s.param name="defaultText"><@p.text name="label-attachment"/></@s.param>
				</#if>
			</@p.uploader>
			<@p.uploader
				key="d.imageField"
				disabled="${successMethodResult?string}"
				readonly="true"
			>
				<#if d?? && d.imageField?? && d.imageField.exist>
					<@s.param name="uploadAction"><@p.url action='iu' namespace='/images' escapeAmp='false'></@p.url></@s.param>
					<@s.param name="uploadParam">image</@s.param>
					<@s.param name="dnloadAction"><@p.url action='id' namespace='/images' escapeAmp='false'></@p.url></@s.param>
					<@s.param name="dnloadParam">fn</@s.param>
					<@s.param name="defaultLink"><@p.url action='si' namespace='/images' escapeAmp='false'><@s.param name="id" value="d.id"/></@p.url></@s.param>
					<@s.param name="defaultText"><@p.text name="label-attachment"/></@s.param>
				</#if>
			</@p.uploader>
	</@p.form>

</div>

</body>
</html>
