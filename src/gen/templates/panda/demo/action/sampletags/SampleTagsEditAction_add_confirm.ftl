<html>
<head>
	<title><@p.text name="title-add"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<ol class="breadcrumb">
			<li><@p.i icon="icon"/> <@p.text name="title"/></li>
			<li><@p.text name="step-add"/></li>
			<li class="active"><@p.text name="step-add-confirm"/></li>
		</ol>
	</div>
<#if text.getText("well-add", "")?has_content>
	<div class="p-well"><@p.text name="well-add"/></div>
</#if>


	<div class="p-toolbar-wrap"><ul class="p-toolbar">
<#if a.hasPermission("~/list")><li><@p.a icon="icon-list" action="~/list" label="#(button-list)"/>
</li></#if>	</ul><div class="clearfix"></div></div>

	<#include "/action-alert.ftl"/>

<#if r??>
	<@p.form cssClass="p-cform" id="sampletags" initfocus="true" method="post" theme="bs3h">
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
		<@p.div cssClass="p-buttons">
			<@p.submit icon="icon-add-execute" action="~/add_execute" label="#(button-add-execute)"/>
			<@p.submit icon="icon-back" action="~/add_input" label="#(button-back)"/>
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
