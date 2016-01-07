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
	<@p.form cssClass="n-eform" id="samplejoin" initfocus="true" method="post" theme="bs3h">
			<@p.viewfield
				key="id"
				value="%{r.id}"
				required="true"
			/>
			<@p.triggerfield
				key="tagsId"
				value="%{r.tagsId}"
				required="true"
				maxlength="28"
				size="30"
			/>
			<@p.viewfield
				key="tagsName"
				value="%{r.tagsName}"
			/>
			<@p.triggerfield
				key="fileId"
				value="%{r.fileId}"
				required="true"
				maxlength="28"
				size="30"
			/>
			<@p.viewfield
				key="fileName"
				value="%{r.fileName}"
			/>
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
		
//TODO
			function samplejoin_tagsId_onPopupCallback(sd) {
				$("#samplejoin_d_tagsId").val(sd.id);
				$("#samplejoin_d_tagsName").val(sd.name);
				$.popup().hide();
			}
		
			function onPageLoad() {
				$.popup({
					id: "popup_samplejoin_d_tagsId",
					url: "<@p.url action="sampletags_list_popup" escapeAmp="false"></@p.url>"
				});

				$('#samplejoin_d_tagsId').next().popup({
					id: "popup_samplejoin_d_tagsId",
					target: "#samplejoin_d_tagsId",
					callback: samplejoin_tagsId_onPopupCallback
				});
			});
			

//TODO
			function samplejoin_fileId_onPopupCallback(sd) {
				$("#samplejoin_d_fileId").val(sd.id);
				$("#samplejoin_d_fileName").val(sd.name);
				$.popup().hide();
			}
		
			function onPageLoad() {
				$.popup({
					id: "popup_samplejoin_d_fileId",
					url: "<@p.url action="samplefile_list_popup" escapeAmp="false"></@p.url>"
				});

				$('#samplejoin_d_fileId').next().popup({
					id: "popup_samplejoin_d_fileId",
					target: "#samplejoin_d_fileId",
					callback: samplejoin_fileId_onPopupCallback
				});
			});
			
		--></script>
<#else>
	<div class="p-tcenter">
		<@p.a btype="default" icon="back" href="#" onclick="window.history.back();return false;"><@p.text name="button-back"/></@p.a>
	</div>
</#if>
</div>

</body>
</html>
