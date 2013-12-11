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
	<#if action.hasPermission("sampledate_list")>
		<li><@p.a icon="icon-list" action="sampledate_list"><@p.text name='button-list'/></@p.a></li>
	</#if>
	</ul>


	<#include "/panda/exts/struts2/views/action-alert.ftl"/>

	<@p.form cssClass="p-cform" id="sampledate" initfocus="true" method="post" theme="bs3h">
			<@p.viewfield
				key="d.id"
			/>
			<@p.viewfield
				key="d.popupDatetimeField"
				format="datetime"
			/>
			<@p.viewfield
				key="d.popupDateField"
				format="date"
			/>
			<@p.viewfield
				key="d.popupTimeField"
				format="time"
			/>
			<@p.viewfield
				key="d.inlineDatetimeField"
				format="datetime"
			/>
			<@p.viewfield
				key="d.inlineDateField"
				format="date"
			/>
			<@p.viewfield
				key="d.inlineTimeField"
				format="time"
			/>
		<@p.div>
			<@p.submit icon="icon-insert-execute" action="sampledate_insert_execute"><@p.text name="button-insert-execute"/></@p.submit>
			<@p.submit icon="icon-back" action="sampledate_insert_input"><@p.text name="button-back"/></@p.submit>
		</@p.div>
	</@p.form>
</div>

</body>
</html>
