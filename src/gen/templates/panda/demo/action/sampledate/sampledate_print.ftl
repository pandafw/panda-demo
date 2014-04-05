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

	<@p.form cssClass="p-vform" id="sampledate" theme="bs3h">
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
	</@p.form>

</div>

</body>
</html>
