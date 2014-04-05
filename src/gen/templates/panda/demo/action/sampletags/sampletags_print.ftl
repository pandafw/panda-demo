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

	<@p.form cssClass="p-vform" id="sampletags" theme="bs3h">
			<@p.viewfield
				key="d.id"
			/>
			<@p.viewfield
				key="d.name"
			/>
			<@p.viewfield
				key="d.boolField"
				format="check"
			/>
			<@p.viewfield
				key="d.intField"
			/>
			<@p.viewfield
				key="d.decField"
			/>
			<@p.viewfield
				key="d.radioField"
				list="consts.radioMap"
			/>
			<@p.viewfield
				key="d.selectField"
				list="consts.selectMap"
			/>
			<@p.viewfield
				key="d.checkField"
				list="consts.checkMap"
			/>
			<@p.viewfield
				key="d.datetimeField"
				format="datetime"
			/>
			<@p.viewfield
				key="d.dateField"
				format="date"
			/>
			<@p.viewfield
				key="d.timeField"
				format="time"
			/>
			<@p.viewfield
				key="d.htmlField"
			/>
			<@p.viewfield
				key="d.bbcodeField"
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
