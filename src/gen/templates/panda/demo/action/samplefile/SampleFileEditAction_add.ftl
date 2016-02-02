<html>
<head>
	<title><@p.text name="title-add"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<ol class="breadcrumb">
			<li><@p.i icon="icon"/> <@p.text name="title"/></li>
			<li class="active"><@p.text name="step-add"/></li>
		</ol>
	</div>

	<div class="p-toolbar-wrap"><ul class="p-toolbar">
<#if action.hasPermission("~/list")><li><@p.a icon="icon-list" action="~/list" label="#(button-list)"/>
</li></#if>	</ul><div class="clearfix"></div></div>

	<#include "/action-alert.ftl"/>

	<@p.form cssClass="p-eform" id="samplefile" initfocus="true" method="post" theme="bs3h">
			<@p.viewfield
				key="id"
				value="%{r.id}"
			/>
			<@p.textfield
				key="name"
				value="%{r.name}"
				required="true"
				maxlength="100"
				size="60"
			/>
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
			<@p.radio
				key="status"
				value="%{r.status}"
				emptyOption="true"
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
		<#assign _buttons_ = [] />
	<#if action.getTextAsBoolean('ui-input-confirm', false)>
		<#assign _buttons_ = _buttons_ + [{
			"icon": "icon-add-confirm",
			"action": "~/add_confirm",
			"text": "button-add-confirm"
		}]/>
	<#else>
		<#assign _buttons_ = _buttons_ + [{
			"icon": "icon-add-execute",
			"action": "~/add_execute",
			"text": "button-add-execute"
		}]/>
	</#if>
			<#if action.hasPermission('~/list')>
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
