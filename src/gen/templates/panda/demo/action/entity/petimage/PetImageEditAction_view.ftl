<html>
<head>
	<title><@p.text name="title-view"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="ui-headline">
		<ol class="breadcrumb">
			<li><@p.i icon="icon"/> <@p.text name="title"/></li>
			<li class="active"><@p.text name="step-view"/></li>
		</ol>
	</div>
<#assign _well = a.getText("well-view", "")/>
<#if _well?has_content>
	<div class="p-well">${_well}</div>
</#if>


	<div class="ui-toolbar text-right"><ul>
<#if a.canAccess("./add")><li><@p.a action="./add" icon="icon-new" label="#(btn-new)"/>
</li></#if><#if a.canAccess("./list")><li><@p.a action="./list" icon="icon-list" label="#(btn-list)"/>
</li></#if><#if r?? && a.canAccessData("./print", r)><li><@p.a action="./print" icon="icon-print" label="#(btn-print)" target="_blank"><@p.param name="id" value="%{r.id}"/></@p.a>
</li></#if><#if r?? && a.canAccessData("./print", r)><li><@p.a action="./print?__redir=/pdf&__query=url" icon="icon-pdf" label="#(btn-pdf)" target="_blank"><@p.param name="id" value="%{r.id}"/></@p.a>
</li></#if>	</ul></div>

	<div id="petimage_alert"><#include "/action-alert.ftl"/></div>

<#if r??>
	<@p.form cssClass="p-vform" id="petimage" method="post">
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
			<@p.viewfield
				key="pname"
				value="%{r.pname}"
			/>
	</#if>
	<#if a.displayField("imageName")>
			<@p.viewfield
				key="imageName"
				value="%{r.imageName}"
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
				readonly="true"
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
			<#if r?? && a.canAccessData('./edit', r)>
				<@p.url var="_u_" action="./edit" escapeAmp="false">
					<@p.param name="id" value="%{r.id}"/>
				</@p.url>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-edit",
					"text": "btn-edit",
					"onclick": "location.href='${vars._u_?js_string}'; return false;"
				}]/>
			</#if>
			<#if r?? && a.canAccessData('./copy', r)>
				<@p.url var="_u_" action="./copy" escapeAmp="false">
					<@p.param name="id" value="%{r.id}"/>
				</@p.url>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-copy",
					"text": "btn-copy",
					"onclick": "location.href='${vars._u_?js_string}'; return false;"
				}]/>
			</#if>
			<#if r?? && a.canAccessData('./delete', r)>
				<@p.url var="_u_" action="./delete" escapeAmp="false">
					<@p.param name="id" value="%{r.id}"/>
				</@p.url>
				<#assign _buttons_ = _buttons_ + [{
					"icon": "icon-delete",
					"text": "btn-delete",
					"onclick": "location.href='${vars._u_?js_string}'; return false;"
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
<#else>
	<div class="p-tcenter">
		<@p.a href="#" onclick="window.history.back();return false;" btn="default" icon="back" label="#(btn-back)"/>
	</div>
</#if>
</div>

</body>
</html>
