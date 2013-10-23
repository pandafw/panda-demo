<#-- This file was auto-generated by nuts.tools.codegen.FreemarkerGenerator  -->
<html>
<head>
	<title><@n.text name="title-${actionResult}"><@s.param><@n.text name="title"/></@s.param></@n.text></title>
</head>
<body>

<div class="n-sect">
	<div class="n-sect-head">
		<ul class="n-toolbar">
		<#if action.hasPermission("sampletags_list")>
			<li><@n.a icon="icon-list" action="sampletags_list"><@n.text name='button-list'/></@n.a></li>
		</#if>
		</ul>
		<h3 class="n-sect-title"><@n.text name="title-${actionResult}"><@s.param><@n.text name="title"/></@s.param></@n.text></h3>
	</div>
	<div class="n-sect-body">

		<#include "/nuts/exts/struts2/views/action-prompt.ftl"/>

		<@n.form cssClass="n-cform" id="sampletags" method="post" theme="nxhtml">
			<@n.viewfield
				name="d.id"
				label="%{getText('update-id', '')}"
			/>
			
			<@n.viewfield
				name="d.name"
				label="%{getText('update-name', '')}"
			/>
			
			<@n.viewfield
				name="d.boolField"
				format="check"
				label="%{getText('update-boolField', '')}"
			/>
			
			<@n.viewfield
				name="d.intField"
				label="%{getText('update-intField', '')}"
			/>
			
			<@n.viewfield
				name="d.decField"
				label="%{getText('update-decField', '')}"
			/>
			
			<@n.viewfield
				name="d.radioField"
				list="consts.radioMap"
				label="%{getText('update-radioField', '')}"
			/>
			
			<@n.viewfield
				name="d.selectField"
				list="consts.selectMap"
				label="%{getText('update-selectField', '')}"
			/>
			
			<@n.viewfield
				name="d.checkField"
				list="consts.checkMap"
				label="%{getText('update-checkField', '')}"
			/>
			
			<@n.viewfield
				name="d.datetimeField"
				format="datetime"
				label="%{getText('update-datetimeField', '')}"
			/>
			
			<@n.viewfield
				name="d.dateField"
				format="date"
				label="%{getText('update-dateField', '')}"
			/>
			
			<@n.viewfield
				name="d.timeField"
				format="time"
				label="%{getText('update-timeField', '')}"
			/>
			
			<@n.viewfield
				name="d.htmlField"
				label="%{getText('update-htmlField', '')}"
			/>
			
			<@n.viewfield
				name="d.bbcodeField"
				label="%{getText('update-bbcodeField', '')}"
			/>
			<@n.submit icon="icon-update-execute" action="sampletags_update_execute" group="start"><@n.text name="button-update-execute"/></@n.submit>
			<@n.submit icon="icon-back" action="sampletags_update_input" group="end"><@n.text name="button-back"/></@n.submit>
		</@n.form>
	</div>
</div>

</body>
</html>
