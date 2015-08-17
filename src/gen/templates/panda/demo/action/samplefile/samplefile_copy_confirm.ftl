<html>
<head>
	<title><@p.text name="title-copy"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<h3><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></h3>
	</div>

	<ul class="p-toolbar">
	<#if action.hasPermission("samplefile_list")>
		<li><@p.a icon="icon-list" action="samplefile_list"><@p.text name='button-list'/></@p.a></li>
	</#if>
	</ul>


	<#include "/panda/exts/struts2/views/action-alert.ftl"/>

	<@p.form cssClass="p-cform" id="samplefile" initfocus="true" method="post" theme="bs3h">
			<@p.viewfield
				key="d.id"
			/>
			<@p.viewfield
				key="d.name"
			/>
			<@p.uploader
				key="d.fileField"
				readonly="true"
			>
				<@s.param name="uploadAction"><@p.url action='fu' namespace='/images' escapeAmp='false'></@p.url></@s.param>
				<@s.param name="uploadParam">file</@s.param>
				<@s.param name="dnloadAction"><@p.url action='fd' namespace='/images' escapeAmp='false'></@p.url></@s.param>
				<@s.param name="dnloadParam">fn</@s.param>
			</@p.uploader>
			<@p.uploader
				key="d.imageField"
				readonly="true"
			>
				<@s.param name="uploadAction"><@p.url action='iu' namespace='/images' escapeAmp='false'></@p.url></@s.param>
				<@s.param name="uploadParam">image</@s.param>
				<@s.param name="dnloadAction"><@p.url action='id' namespace='/images' escapeAmp='false'></@p.url></@s.param>
				<@s.param name="dnloadParam">fn</@s.param>
			</@p.uploader>
			<@p.viewfield
				key="d.status"
				list="consts.dataStatusMap"
			/>
			<@p.viewfield
				key="d.cusid"
			/>
			<@p.viewfield
				key="d.cusnm"
			/>
			<@p.viewfield
				key="d.ctime"
				format="datetime"
			/>
			<@p.viewfield
				key="d.uusid"
			/>
			<@p.viewfield
				key="d.uusnm"
			/>
			<@p.viewfield
				key="d.utime"
				format="datetime"
			/>
		<@p.div cssClass="p-buttons">
			<@p.submit icon="icon-copy-execute" action="samplefile_copy_execute"><@p.text name="button-copy-execute"/></@p.submit>
			<@p.submit icon="icon-back" action="samplefile_copy_input"><@p.text name="button-back"/></@p.submit>
		</@p.div>
	</@p.form>
</div>

</body>
</html>
