<html>
<head>
	<title><@p.text name="title-copy"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<ol class="breadcrumb">
			<li><@p.i icon="icon"/> <@p.text name="title"/></li>
			<li><@p.text name="step-copy"/></li>
			<li class="active"><@p.text name="step-copy-confirm"/></li>
		</ol>
	</div>
<#assign _well = a.getText("well-copy-confirm", "")/>
<#if _well?has_content>
	<div class="p-well">${_well}</div>
</#if>


	<div class="p-toolbar-wrap"><ul class="p-toolbar">
<#if a.canAccess("~/list")><li><@p.a icon="icon-list" action="~/list" label="#(button-list)"/>
</li></#if>	</ul><div class="clearfix"></div></div>

	<#include "/action-alert.ftl"/>

<#if r??>
	<@p.form cssClass="p-cform" id="sampledate" focusme="true" method="post" theme="bs3h">
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
		<@p.div cssClass="p-buttons">
			<@p.submit icon="icon-copy-execute" action="~/copy_execute" label="#(button-copy-execute)"/>
			<@p.submit icon="icon-back" action="~/copy_input" label="#(button-back)"/>
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
