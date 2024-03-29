<html>
<head>
	<title><@p.text name="title-edit"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="ui-headline">
		<ol class="breadcrumb">
			<li><@p.i icon="icon"/> <@p.text name="title"/></li>
			<li class="active"><@p.text name="step-edit"/></li>
		</ol>
	</div>
<#assign _well = a.getText("well-edit", "")/>
<#if _well?has_content>
	<div class="p-well">${_well}</div>
</#if>


	<div class="ui-toolbar text-right"><ul>
<#if a.canAccess("./list")><li><@p.a action="./list" icon="icon-list" label="#(btn-list)"/>
</li></#if>	</ul></div>

	<div id="petimage_alert"><#include "/action-alert.ftl"/></div>

	<@p.form cssClass="p-eform" id="petimage" method="post">
	<#if a.displayField("id")>
			<@p.viewfield
				key="id"
				value="%{r.id}"
				required="true"
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
				maxlength="255"
			/>
	</#if>
	<#if a.displayField("imageSize")>
			<@p.viewfield
				key="imageSize"
				value="%{r.imageSize}"
				format="size"
			/>
	</#if>
	<#if a.displayField("imageFile")>
			<@p.uploader
				key="imageFile"
				value="%{r.imageFile}"
				accept="image/*"
				size="30"
				uploadUrl="%{b.files_path + '/upload'}"
				uploadName="file"
				dnloadUrl="%{b.files_path + '/download?file=$'}"
				defaultAction="/petimage/pimage"
				defaultParams="!{'id': '%{r.id}'}"
				defaultEnable="%{r.id != null && r.imageSize > 0}"
			/>
	</#if>
	<#if a.displayField("updatedAt")>
			<@p.viewfield
				key="updatedAt"
				value="%{r.updatedAt}"
				format="datetime"
			/>
	</#if>
	<#if a.displayField("updatedBy")>
			<@p.hidden
				name="updatedBy"
				value="%{r.updatedBy}"
			/>
	</#if>
	<#if a.displayField("updatedByName")>
			<@p.hidden
				name="updatedByName"
				value="%{r.updatedByName}"
			/>
	</#if>
	<#if a.displayField("updatedByUser")>
			<@p.viewfield
				key="updatedByUser"
				value="%{r.updatedByUser}"
			/>
	</#if>
		<#assign _buttons_ = [] />
	<#if a.inputConfirm>
		<#assign _buttons_ = _buttons_ + [{
			"icon": "icon-edit-confirm",
			"action": "./edit.confirm",
			"text": "btn-edit-confirm"
		}]/>
	<#else>
		<#assign _buttons_ = _buttons_ + [{
			"icon": "icon-edit-execute",
			"action": "./edit.execute",
			"text": "btn-edit-execute"
		}]/>
	</#if>
			<#if a.canAccess('./list')>
				<@p.url var="_u_" action="./list"/>
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
				$("#petimage_pid").changeValue(sd.id);
				$("#petimage_pname").changeValue(sd.name);
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
