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
	<@p.form cssClass="p-vform" id="sampledate" theme="bs3h">
			<@p.viewfield
				key="id"
				value="%{r.id}"
			/>
			<@p.viewfield
				key="popupDatetimeField"
				value="%{r.popupDatetimeField}"
				format="datetime"
			/>
			<@p.viewfield
				key="popupDateField"
				value="%{r.popupDateField}"
				format="date"
			/>
			<@p.viewfield
				key="popupTimeField"
				value="%{r.popupTimeField}"
				format="time"
			/>
			<@p.viewfield
				key="inlineDatetimeField"
				value="%{r.inlineDatetimeField}"
				format="datetime"
			/>
			<@p.viewfield
				key="inlineDateField"
				value="%{r.inlineDateField}"
				format="date"
			/>
			<@p.viewfield
				key="inlineTimeField"
				value="%{r.inlineTimeField}"
				format="time"
			/>
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
