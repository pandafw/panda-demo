<html>
<head>
	<title><@p.text name="title-edit"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<ol class="breadcrumb">
			<li><@p.i icon="icon"/> <@p.text name="title"/></li>
			<li class="active"><@p.text name="step-edit"/></li>
		</ol>
	</div>
<#assign _well = a.getText("well-edit", "")/>
<#if _well?has_content>
	<div class="p-well">${_well}</div>
</#if>


	<div class="p-toolbar-wrap"><ul class="p-toolbar">
<#if a.canAccess("~/list")><li><@p.a icon="icon-list" action="~/list" label="#(button-list)"/>
</li></#if>	</ul><div class="clearfix"></div></div>

	<#include "/action-alert.ftl"/>

	<@p.form cssClass="p-eform" id="samplejoin" initfocus="true" method="post" showDescrip="true" theme="bs3h">
	<#if a.displayField("id")>
			<@p.viewfield
				key="id"
				value="%{r.id}"
				required="true"
			/>
	</#if>
	<#if a.displayField("tagsId")>
			<@p.triggerfield
				key="tagsId"
				value="%{r.tagsId}"
				required="true"
				maxlength="28"
				size="30"
				readonly="true"
			/>
	</#if>
	<#if a.displayField("tagsName")>
			<@p.viewfield
				key="tagsName"
				value="%{r.tagsName}"
			/>
	</#if>
	<#if a.displayField("uniqId")>
			<@p.triggerfield
				key="uniqId"
				value="%{r.uniqId}"
				required="true"
				maxlength="28"
				size="30"
			/>
	</#if>
	<#if a.displayField("uniqName")>
			<@p.viewfield
				key="uniqName"
				value="%{r.uniqName}"
			/>
	</#if>
		<#assign _buttons_ = [] />
	<#if a.inputConfirm>
		<#assign _buttons_ = _buttons_ + [{
			"icon": "icon-edit-confirm",
			"action": "~/edit_confirm",
			"text": "button-edit-confirm"
		}]/>
	<#else>
		<#assign _buttons_ = _buttons_ + [{
			"icon": "icon-edit-execute",
			"action": "~/edit_execute",
			"text": "button-edit-execute"
		}]/>
	</#if>
			<#if a.canAccess('~/list')>
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

			function samplejoin_uniqId_onPopupCallback(sd) {
				$("#samplejoin_uniqId").val(sd.id);
				panda.viewfield("#samplejoin_uniqName").val(sd.name);
				$.popup().hide();
			}

			function samplejoin_uniqId_onClearClick() {
				$("#samplejoin_uniqId").val('');
				panda.viewfield("#samplejoin_uniqName").val('');
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
			
				$('#samplejoin_tagsId').ptrigger({ 'onclick': samplejoin_tagsId_onClearClick});
			
				$.popup({
					id: "popup_samplejoin_uniqId",
					url: "<@p.url action="../samplefile/list_popup" escapeAmp="false"></@p.url>"
				});

				$('#samplejoin_uniqId').next().popup({
					id: "popup_samplejoin_uniqId",
					target: "#samplejoin_uniqId",
					callback: samplejoin_uniqId_onPopupCallback
				});
			
				$('#samplejoin_uniqId').ptrigger({ 'onclick': samplejoin_uniqId_onClearClick});
			
			}
		--></script>
</div>

</body>
</html>
