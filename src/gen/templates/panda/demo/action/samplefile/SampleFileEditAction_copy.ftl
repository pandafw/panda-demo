<html>
<head>
	<title><@p.text name="title-copy"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<ol class="breadcrumb">
			<li><@p.i icon="icon"/> <@p.text name="title"/></li>
			<li class="active"><@p.text name="step-copy"/></li>
		</ol>
	</div>
<#if text.getText("well-copy", "")?has_content>
	<div class="p-well"><@p.text name="well-copy"/></div>
</#if>


	<div class="p-toolbar-wrap"><ul class="p-toolbar">
<#if a.hasPermission("~/list")><li><@p.a icon="icon-list" action="~/list" label="#(button-list)"/>
</li></#if>	</ul><div class="clearfix"></div></div>

	<#include "/action-alert.ftl"/>

	<@p.form cssClass="p-eform" id="samplefile" initfocus="true" method="post" theme="bs3h">
	<#if a.displayField("id")>
			<@p.viewfield
				key="id"
				value="%{r.id}"
			/>
	</#if>
	<#if a.displayField("name")>
			<@p.textfield
				key="name"
				value="%{r.name}"
				required="true"
				maxlength="100"
				size="60"
			/>
	</#if>
	<#if a.displayField("fileField")>
			<@p.uploader
				key="fileField"
				value="%{r.fileField}"
				size="30"
			>
				<@p.param name="uploadAction"><@p.url action='fu' escapeAmp='false'></@p.url></@p.param>
				<@p.param name="uploadParam">file</@p.param>
				<@p.param name="dnloadAction"><@p.url action='fd' escapeAmp='false'></@p.url></@p.param>
				<@p.param name="dnloadParam">fn</@p.param>
			</@p.uploader>
	</#if>
	<#if a.displayField("imageField")>
			<@p.uploader
				key="imageField"
				value="%{r.imageField}"
				size="30"
			>
				<@p.param name="uploadAction"><@p.url action='iu' escapeAmp='false'></@p.url></@p.param>
				<@p.param name="uploadParam">image</@p.param>
				<@p.param name="dnloadAction"><@p.url action='id' escapeAmp='false'></@p.url></@p.param>
				<@p.param name="dnloadParam">fn</@p.param>
			</@p.uploader>
	</#if>
	<#if a.displayField("status")>
			<@p.radio
				key="status"
				value="%{r.status}"
				emptyOption="true"
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
		<#assign _buttons_ = [] />
	<#if a.inputConfirm>
		<#assign _buttons_ = _buttons_ + [{
			"icon": "icon-copy-confirm",
			"action": "~/copy_confirm",
			"text": "button-copy-confirm"
		}]/>
	<#else>
		<#assign _buttons_ = _buttons_ + [{
			"icon": "icon-copy-execute",
			"action": "~/copy_execute",
			"text": "button-copy-execute"
		}]/>
	</#if>
			<#if a.hasPermission('~/list')>
				<@p.url var="_u_" action="~/list"/>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-list",
					"onclick": "location.href='${vars._u_?js_string}'; return false;",
					"text": "button-list"
				}]/>
			</#if>
			<#include "/panda/mvc/view/form-buttons.ftl"/>
			<@form_buttons buttons=_buttons_/>
	</@p.form>

		<script type="text/javascript"><!--
		
			function onPageLoad() {
			}
		--></script>
</div>

</body>
</html>
