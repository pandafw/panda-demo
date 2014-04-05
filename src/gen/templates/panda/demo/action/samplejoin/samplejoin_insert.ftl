<html>
<head>
	<title><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<h3><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></h3>
	</div>

	<ul class="p-toolbar">
	<#if action.hasPermission("samplejoin_list")>
		<li><@p.a icon="icon-list" action="samplejoin_list"><@p.text name='button-list'/></@p.a></li>
	</#if>
	</ul>


	<#include "/panda/exts/struts2/views/action-alert.ftl"/>

	<@p.form cssClass="p-eform" id="samplejoin" initfocus="true" method="post" theme="bs3h">
			<@p.viewfield
				key="d.id"
			/>
			<@p.triggerfield
				key="d.tagsId"
				required="true"
				maxlength="28"
				size="30"
			/>
			<@p.viewfield
				key="d.tagsName"
			/>
			<@p.triggerfield
				key="d.fileId"
				required="true"
				maxlength="28"
				size="30"
			/>
			<@p.viewfield
				key="d.fileName"
			/>
			<@p.radio
				key="d.status"
				emptyOption="true"
				list="consts.dataStatusMap"
			/>
			<@p.viewfield
				key="d.cusid"
			/>
			<@p.viewfield
				key="d.cusnm"
			/>
			<@p.viewfield
				key="d.ctime"
				format="datetime"
			/>
			<@p.viewfield
				key="d.uusid"
			/>
			<@p.viewfield
				key="d.uusnm"
			/>
			<@p.viewfield
				key="d.utime"
				format="datetime"
			/>
		<#assign _buttons_ = [] />
	<#if action.getTextAsBoolean('ui-input-confirm', false)>
		<#assign _buttons_ = _buttons_ + [{
			"icon": "icon-insert-confirm",
			"action": "samplejoin_insert_confirm",
			"text": "button-insert-confirm"
		}]/>
	<#else>
		<#assign _buttons_ = _buttons_ + [{
			"icon": "icon-insert-execute",
			"action": "samplejoin_insert_execute",
			"text": "button-insert-execute"
		}]/>
	</#if>
			<#if action.hasPermission('samplejoin_list')>
				<@p.url var="_u_" action="samplejoin_list"/>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-list",
					"onclick": "location.href='${_u_?js_string}'; return false;",
					"text": "button-list"
				}]/>
			</#if>
			<#include "/panda/exts/struts2/views/form-buttons.ftl"/>
			<@form_buttons buttons=_buttons_/>
	</@p.form>

		<script type="text/javascript"><!--
					function samplejoin_tagsId_onPopupCallback(sd) {
				$("#samplejoin_d_tagsId").val(sd.id);
				$("#samplejoin_d_tagsName").val(sd.name);
				$.popup().hide();
			}
		
			$(function() {
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
			
			function samplejoin_fileId_onPopupCallback(sd) {
				$("#samplejoin_d_fileId").val(sd.id);
				$("#samplejoin_d_fileName").val(sd.name);
				$.popup().hide();
			}
		
			$(function() {
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
</div>

</body>
</html>
