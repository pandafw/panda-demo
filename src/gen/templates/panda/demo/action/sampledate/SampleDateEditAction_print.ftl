<html>
<head>
	<title><@p.text name="title-print"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<ol class="breadcrumb">
			<li><@p.i icon="icon"/> <@p.text name="title"/></li>
			<li class="active"><@p.text name="step-print"/></li>
		</ol>
	</div>
<#assign _well = a.getText("well-print", "")/>
<#if _well?has_content>
	<div class="p-well">${_well}</div>
</#if>

	<#include "/action-alert.ftl"/>

<#if r??>
	<@p.form cssClass="p-vform" id="sampledate" theme="bs3h">
	<#if a.displayField("id")>
			<@p.viewfield
				key="id"
				value="%{r.id}"
			/>
	</#if>
	<#if a.displayField("popupDatetimeField")>
			<@p.viewfield
				key="popupDatetimeField"
				value="%{r.popupDatetimeField}"
				format="datetime"
			/>
	</#if>
	<#if a.displayField("popupDateField")>
			<@p.viewfield
				key="popupDateField"
				value="%{r.popupDateField}"
				format="date"
			/>
	</#if>
	<#if a.displayField("popupTimeField")>
			<@p.viewfield
				key="popupTimeField"
				value="%{r.popupTimeField}"
				format="time"
			/>
	</#if>
	<#if a.displayField("inlineDatetimeField")>
			<@p.viewfield
				key="inlineDatetimeField"
				value="%{r.inlineDatetimeField}"
				format="datetime"
			/>
	</#if>
	<#if a.displayField("inlineDateField")>
			<@p.viewfield
				key="inlineDateField"
				value="%{r.inlineDateField}"
				format="date"
			/>
	</#if>
	<#if a.displayField("inlineTimeField")>
			<@p.viewfield
				key="inlineTimeField"
				value="%{r.inlineTimeField}"
				format="time"
			/>
	</#if>
	<#if a.displayField("status")>
			<@p.hidden
				name="status"
				value="%{r.status}"
			/>
	</#if>
	<#if a.displayField("cusid")>
			<@p.hidden
				name="cusid"
				value="%{r.cusid}"
			/>
	</#if>
	<#if a.displayField("cusnm")>
			<@p.hidden
				name="cusnm"
				value="%{r.cusnm}"
			/>
	</#if>
	<#if a.displayField("ctime")>
			<@p.hidden
				name="ctime"
				value="%{r.ctime}"
			/>
	</#if>
	<#if a.displayField("uusid")>
			<@p.hidden
				name="uusid"
				value="%{r.uusid}"
			/>
	</#if>
	<#if a.displayField("uusnm")>
			<@p.hidden
				name="uusnm"
				value="%{r.uusnm}"
			/>
	</#if>
	<#if a.displayField("utime")>
			<@p.hidden
				name="utime"
				value="%{r.utime}"
			/>
	</#if>
	</@p.form>
</#if>
</div>

</body>
</html>
