<html>
<head>
	<title><@p.text name="title-update"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<ol class="breadcrumb">
			<li><@p.i icon="icon"/> <@p.text name="title"/></li>
			<li class="active"><@p.text name="step-update"/></li>
		</ol>
	</div>

	<div class="p-toolbar-wrap"><ul class="p-toolbar">
<#if action.hasPermission("~/list")><li><@p.a icon="icon-list" action="~/list"><@p.text name='button-list'/></@p.a>
</li></#if>	</ul><div class="clearfix"></div></div>

	<#include "/action-alert.ftl"/>

<#if r??>
	<@p.form cssClass="n-eform" id="samplefile" initfocus="true" method="post" theme="bs3h">
			<@p.viewfield
				key="id"
				value="%{r.id}"
				required="true"
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
				<#if r?? && r.fileField?? && r.fileField.exist>
					<@p.param name="defaultLink"><@p.url action='sf' escapeAmp='false'><@p.param name="id" value="d.id"/></@p.url></@p.param>
				</#if>
				<@p.param name="defaultText"><@p.text name="label-attachment"/></@p.param>
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
				<#if r?? && r.imageField?? && r.imageField.exist>
					<@p.param name="defaultLink"><@p.url action='si' escapeAmp='false'><@p.param name="id" value="d.id"/></@p.url></@p.param>
				</#if>
				<@p.param name="defaultText"><@p.text name="label-attachment"/></@p.param>
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
	<#if action.inputConfirm>
		<#assign _buttons_ = _buttons_ + [{
			"icon": "icon-update-confirm",
			"action": "~/update_confirm",
			"text": "button-update-confirm"
		}]/>
	<#else>
		<#assign _buttons_ = _buttons_ + [{
			"icon": "icon-update-execute",
			"action": "~/update_execute",
			"text": "button-update-execute"
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
<#else>
	<div class="p-tcenter">
		<@p.a btype="default" icon="back" href="#" onclick="window.history.back();return false;"><@p.text name="button-back"/></@p.a>
	</div>
</#if>
</div>

</body>
</html>
