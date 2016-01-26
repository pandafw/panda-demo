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

	<div class="p-toolbar-wrap"><ul class="p-toolbar">
<#if action.hasPermission("~/list")><li><@p.a icon="icon-list" action="~/list" label="#(button-list)"/>
</li></#if>	</ul><div class="clearfix"></div></div>

	<#include "/action-alert.ftl"/>

	<@p.form cssClass="p-eform" id="samplejoin" initfocus="true" method="post" theme="bs3h">
			<@p.viewfield
				key="id"
				value="%{r.id}"
			/>
			<@p.triggerfield
				key="tagsId"
				value="%{r.tagsId}"
				required="true"
				maxlength="28"
				size="30"
				readonly="true"
				licon="icon-clear"
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
				licon="icon-clear"
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
	<#if action.getTextAsBoolean('ui-input-confirm', false)>
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
			function samplejoin_tagsId_onPopupCallback(sd) {
				$("#samplejoin_tagsId").val(sd.id);
				panda.viewfield("#samplejoin_tagsName").val(sd.name);
				$.popup().hide();
			}

			function samplejoin_tagsId_onClearClick() {
				$("#samplejoin_tagsId").val('');
				panda.viewfield("#samplejoin_tagsName").val('');
			}

			function samplejoin_fileId_onPopupCallback(sd) {
				$("#samplejoin_fileId").val(sd.id);
				panda.viewfield("#samplejoin_fileName").val(sd.name);
				$.popup().hide();
			}

			function samplejoin_fileId_onClearClick() {
				$("#samplejoin_fileId").val('');
				panda.viewfield("#samplejoin_fileName").val('');
			}

		
			function onPageLoad() {
				$.popup({
					id: "popup_samplejoin_tagsId",
					url: "<@p.url action="../sampletags/list_popup" escapeAmp="false"></@p.url>"
				});

				$('#samplejoin_tagsId').next().popup({
					id: "popup_samplejoin_tagsId",
					target: "#samplejoin_tagsId",
					callback: samplejoin_tagsId_onPopupCallback
				});
			
				$('#samplejoin_tagsId').prev().click(samplejoin_tagsId_onClearClick);
			
				$.popup({
					id: "popup_samplejoin_fileId",
					url: "<@p.url action="../samplefile/list_popup" escapeAmp="false"></@p.url>"
				});

				$('#samplejoin_fileId').next().popup({
					id: "popup_samplejoin_fileId",
					target: "#samplejoin_fileId",
					callback: samplejoin_fileId_onPopupCallback
				});
			
				$('#samplejoin_fileId').prev().click(samplejoin_fileId_onClearClick);
			
			}
		--></script>
</div>

</body>
</html>
