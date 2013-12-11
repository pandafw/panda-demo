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

	<@p.form cssClass="p-vform" id="samplejoin" theme="bs3h">
			<@p.viewfield
				key="d.id"
			/>
			<@p.viewfield
				key="d.tagsId"
			/>
			<@p.viewfield
				key="d.tagsName"
			/>
			<@p.viewfield
				key="d.fileId"
			/>
			<@p.viewfield
				key="d.fileName"
			/>
	</@p.form>

</div>

</body>
</html>
