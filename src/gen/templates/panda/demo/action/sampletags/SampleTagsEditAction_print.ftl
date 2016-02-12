<html>
<head>
	<title><@p.text name="title-print"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<h3><@p.i icon="icon"/> <@p.text name="title-print"><@p.param name="title" value="#(title)"/></@p.text></h3>
	</div>
<#if text.getText("well-print", "")?has_content>
	<div class="p-well"><@p.text name="well-print"/></div>
</#if>

	<#include "/action-alert.ftl"/>

<#if r??>
	<@p.form cssClass="p-vform" id="sampletags" theme="bs3h">
	<#if a.displayField("id")>
			<@p.viewfield
				key="id"
				value="%{r.id}"
			/>
	</#if>
	<#if a.displayField("styleField")>
			<@p.viewfield
				key="styleField"
				value="%{r.styleField}"
				list="%{consts.styleMap}"
			/>
	</#if>
	<#if a.displayField("name")>
			<@p.viewfield
				key="name"
				value="%{r.name}"
			/>
	</#if>
	<#if a.displayField("boolField")>
			<@p.viewfield
				key="boolField"
				value="%{r.boolField}"
				format="check"
				fieldValue="true"
			/>
	</#if>
	<#if a.displayField("intField")>
			<@p.viewfield
				key="intField"
				value="%{r.intField}"
			/>
	</#if>
	<#if a.displayField("decField")>
			<@p.viewfield
				key="decField"
				value="%{r.decField}"
			/>
	</#if>
	<#if a.displayField("radioField")>
			<@p.viewfield
				key="radioField"
				value="%{r.radioField}"
				list="%{consts.radioMap}"
			/>
	</#if>
	<#if a.displayField("selectField")>
			<@p.viewfield
				key="selectField"
				value="%{r.selectField}"
				list="%{consts.selectMap}"
			/>
	</#if>
	<#if a.displayField("checkField")>
			<@p.viewfield
				key="checkField"
				value="%{r.checkField}"
				list="%{consts.checkMap}"
			/>
	</#if>
	<#if a.displayField("datetimeField")>
			<@p.viewfield
				key="datetimeField"
				value="%{r.datetimeField}"
				format="datetime"
			/>
	</#if>
	<#if a.displayField("dateField")>
			<@p.viewfield
				key="dateField"
				value="%{r.dateField}"
				format="date"
			/>
	</#if>
	<#if a.displayField("timeField")>
			<@p.viewfield
				key="timeField"
				value="%{r.timeField}"
				format="time"
			/>
	</#if>
	<#if a.displayField("htmlField")>
			<@p.viewfield
				key="htmlField"
				value="%{r.htmlField}"
			/>
	</#if>
	<#if a.displayField("bbcodeField")>
			<@p.viewfield
				key="bbcodeField"
				value="%{r.bbcodeField}"
			/>
	</#if>
	<#if a.displayField("status")>
			<@p.viewfield
				key="status"
				value="%{r.status}"
				list="%{consts.dataStatusMap}"
			/>
	</#if>
	<#if a.displayField("cusid")>
			<@p.viewfield
				key="cusid"
				value="%{r.cusid}"
			/>
	</#if>
	<#if a.displayField("cusnm")>
			<@p.viewfield
				key="cusnm"
				value="%{r.cusnm}"
			/>
	</#if>
	<#if a.displayField("ctime")>
			<@p.viewfield
				key="ctime"
				value="%{r.ctime}"
				format="datetime"
			/>
	</#if>
	<#if a.displayField("uusid")>
			<@p.viewfield
				key="uusid"
				value="%{r.uusid}"
			/>
	</#if>
	<#if a.displayField("uusnm")>
			<@p.viewfield
				key="uusnm"
				value="%{r.uusnm}"
			/>
	</#if>
	<#if a.displayField("utime")>
			<@p.viewfield
				key="utime"
				value="%{r.utime}"
				format="datetime"
			/>
	</#if>
	</@p.form>
</#if>
</div>

</body>
</html>
