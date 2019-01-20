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
<#assign _well = a.getText("well-add", "")/>
<#if _well?has_content>
	<div class="p-well">${_well}</div>
</#if>


	<div class="p-toolbar-wrap"><ul class="p-toolbar">
<#if a.canAccess("~/list")><li><@p.a action="~/list" icon="icon-list" label="#(btn-list)"/>
</li></#if>	</ul><div class="clearfix"></div></div>

	<#include "/action-alert.ftl"/>

	<@p.form cssClass="p-eform" id="petimage" focusme="true" method="post" theme="bs3h">
	<#if a.displayField("id")>
			<@p.viewfield
				key="id"
				value="%{r.id}"
			/>
	</#if>
	<#if a.displayField("pid")>
			<@p.hidden
				name="pid"
				value="%{r.pid}"
			/>
	</#if>
	<#if a.displayField("pname")>
			<@p.triggerfield
				key="pname"
				value="%{r.pname}"
				required="true"
				readonly="true"
			/>
	</#if>
	<#if a.displayField("imageName")>
			<@p.textfield
				key="imageName"
				value="%{r.imageName}"
				maxlength="100"
			/>
	</#if>
	<#if a.displayField("imageSize")>
			<@p.viewfield
				key="imageSize"
				value="%{r.imageSize}"
			/>
	</#if>
	<#if a.displayField("imageItem")>
			<@p.uploader
				key="imageItem"
				value="%{r.imageItem}"
				required="true"
				accept="image/*"
				size="30"
				uploadAction="/tmp/upload"
				uploadName="file"
				dnloadAction="/tmp/download"
				dnloadName="id"
				defaultAction="/petimage/idownload"
				defaultParams="!{'id': '%{r.id}'}"
				defaultEnable="%{r.id != null && r.imageSize > 0}"
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
			"icon": "icon-add-confirm",
			"action": "~/add.confirm",
			"text": "btn-add-confirm"
		}]/>
	<#else>
		<#assign _buttons_ = _buttons_ + [{
			"icon": "icon-add-execute",
			"action": "~/add.execute",
			"text": "btn-add-execute"
		}]/>
	</#if>
			<#if a.canAccess('~/list')>
				<@p.url var="_u_" action="~/list"/>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-list",
					"text": "btn-list",
					"onclick": "location.href='${vars._u_?js_string}'; return false;"
				}]/>
			</#if>
			<#include "/panda/mvc/view/form-buttons.ftl"/>
			<@form_buttons buttons=_buttons_/>
	</@p.form>

		<script type="text/javascript"><!--
			function petimage_pname_onPopupCallback(sd) {
				$("#petimage_pid").val(sd.id);
				$("#petimage_pname").val(sd.name);
				$.popup().hide();
			}

		
			function onPageLoad() {
				$.popup({
					id: "popup_petimage_pname",
					url: "<@p.url action="../pet/list_popup" escapeAmp="false"></@p.url>"
				});

				$('#petimage_pname').next().popup({
					id: "popup_petimage_pname",
					target: "#petimage_pname",
					callback: petimage_pname_onPopupCallback
				});
			
			}
		--></script>
</div>

</body>
</html>
