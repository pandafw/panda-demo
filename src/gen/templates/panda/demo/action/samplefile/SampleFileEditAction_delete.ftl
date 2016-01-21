<html>
<head>
	<title><@p.text name="title-delete"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<ol class="breadcrumb">
			<li><@p.i icon="icon"/> <@p.text name="title"/></li>
			<li><@p.text name="step-delete"/></li>
			<li class="active"><@p.text name="step-delete-confirm"/></li>
		</ol>
	</div>

	<#include "/action-alert.ftl"/>

<#if r??>
	<@p.form cssClass="p-cform" id="samplefile" initfocus="true" method="post" theme="bs3h">
			<@p.viewfield
				key="id"
				value="%{r.id}"
			/>
			<@p.viewfield
				key="name"
				value="%{r.name}"
			/>
			<@p.uploader
				key="fileField"
				value="%{r.fileField}"
				readonly="true"
			>
				<@p.param name="uploadAction"><@p.url action='fu' escapeAmp='false'></@p.url></@p.param>
				<@p.param name="uploadParam">file</@p.param>
				<@p.param name="dnloadAction"><@p.url action='fd' escapeAmp='false'></@p.url></@p.param>
				<@p.param name="dnloadParam">fn</@p.param>
				<@p.param name="defaultLink"><@p.url action='sf' escapeAmp='false'><@p.param name="id" value="%{r.id}"/></@p.url></@p.param>
				<@p.param name="defaultText"><@p.text name="label-attachment"/></@p.param>
			</@p.uploader>
			<@p.uploader
				key="imageField"
				value="%{r.imageField}"
				readonly="true"
			>
				<@p.param name="uploadAction"><@p.url action='iu' escapeAmp='false'></@p.url></@p.param>
				<@p.param name="uploadParam">image</@p.param>
				<@p.param name="dnloadAction"><@p.url action='id' escapeAmp='false'></@p.url></@p.param>
				<@p.param name="dnloadParam">fn</@p.param>
				<@p.param name="defaultLink"><@p.url action='si' escapeAmp='false'><@p.param name="id" value="%{r.id}"/></@p.url></@p.param>
				<@p.param name="defaultText"><@p.text name="label-attachment"/></@p.param>
			</@p.uploader>
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
		<#assign _buttons_ = [{
			"icon": "icon-delete-execute",
			"action": "~/delete_execute",
			"text": "button-delete-execute"
		}]/>
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
<#else>
	<div class="p-tcenter">
		<@p.a btn="default" icon="back" href="#" onclick="window.history.back();return false;" label="#(button-back)"/>
	</div>
</#if>
</div>

</body>
</html>
