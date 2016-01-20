<html>
<head>
	<title><@p.text name="title-insert"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<ol class="breadcrumb">
			<li><@p.i icon="icon"/> <@p.text name="title"/></li>
			<li><@p.text name="step-insert"/></li>
			<li class="active"><@p.text name="step-insert-confirm"/></li>
		</ol>
	</div>

	<div class="p-toolbar-wrap"><ul class="p-toolbar">
<#if action.hasPermission("~/list")><li><@p.a icon="icon-list" action="~/list" label="#(button-list)"/>
</li></#if>	</ul><div class="clearfix"></div></div>

	<#include "/action-alert.ftl"/>

<#if r??>
	<@p.form cssClass="p-cform" id="sampletags" initfocus="true" method="post" theme="bs3h">
			<@p.viewfield
				key="id"
				value="%{r.id}"
			/>
			<@p.viewfield
				key="name"
				value="%{r.name}"
			/>
			<@p.viewfield
				key="boolField"
				value="%{r.boolField}"
				format="check"
			/>
			<@p.viewfield
				key="intField"
				value="%{r.intField}"
			/>
			<@p.viewfield
				key="decField"
				value="%{r.decField}"
			/>
			<@p.viewfield
				key="radioField"
				value="%{r.radioField}"
				list="%{consts.radioMap}"
			/>
			<@p.viewfield
				key="selectField"
				value="%{r.selectField}"
				list="%{consts.selectMap}"
			/>
			<@p.viewfield
				key="checkField"
				value="%{r.checkField}"
				list="%{consts.checkMap}"
			/>
			<@p.viewfield
				key="datetimeField"
				value="%{r.datetimeField}"
				format="datetime"
			/>
			<@p.viewfield
				key="dateField"
				value="%{r.dateField}"
				format="date"
			/>
			<@p.viewfield
				key="timeField"
				value="%{r.timeField}"
				format="time"
			/>
			<@p.viewfield
				key="htmlField"
				value="%{r.htmlField}"
			/>
			<@p.viewfield
				key="bbcodeField"
				value="%{r.bbcodeField}"
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
		<@p.div cssClass="p-buttons">
			<@p.submit icon="icon-insert-execute" action="~/insert_execute"><@p.text name="button-insert-execute"/></@p.submit>
			<@p.submit icon="icon-back" action="~/insert_input"><@p.text name="button-back"/></@p.submit>
		</@p.div>
	</@p.form>
<#else>
	<div class="p-tcenter">
		<@p.a btn="default" icon="back" href="#" onclick="window.history.back();return false;" label="#(button-back)"/>
	</div>
</#if>
</div>

</body>
</html>
