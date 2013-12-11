<html>
<head>
	<title><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<h3><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></h3>
	</div>

	<ul class="p-toolbar">
	<#if action.hasPermission("samplejoin_list")>
		<li><@p.a icon="icon-list" action="samplejoin_list"><@p.text name='button-list'/></@p.a></li>
	</#if>
	</ul>


	<#include "/panda/exts/struts2/views/action-alert.ftl"/>

	<@p.form cssClass="p-cform" id="samplejoin" initfocus="true" method="post" theme="bs3h">
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
		<@p.div>
			<@p.submit icon="icon-copy-execute" action="samplejoin_copy_execute"><@p.text name="button-copy-execute"/></@p.submit>
			<@p.submit icon="icon-back" action="samplejoin_copy_input"><@p.text name="button-back"/></@p.submit>
		</@p.div>
	</@p.form>
</div>

</body>
</html>
