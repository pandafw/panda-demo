<#-- This file was auto-generated by nuts.tools.codegen.FreemarkerGenerator  -->
<html>
<head>
	<title><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="p-header">
		<h3 class="p-title"><@p.text name="title-${actionResult}"><@s.param><@p.text name="title"/></@s.param></@p.text></h3>
	</div>
	<div class="n-sect-body">
		<#include "/panda/exts/struts2/views/action-alert.ftl"/>

		<@p.form cssClass="n-vform" id="sampleunique" theme="bs3">
			<@p.viewfield
				name="d.id"
				label="%{getText('print-id', '')}"
			/>
			
			<@p.viewfield
				name="d.name"
				label="%{getText('print-name', '')}"
			/>
			
			<@p.viewfield
				name="d.compositeUnique1"
				label="%{getText('print-compositeUnique1', '')}"
			/>
			
			<@p.viewfield
				name="d.compositeUnique2"
				label="%{getText('print-compositeUnique2', '')}"
			/>
		</@p.form>
	</div>
</div>

</body>
</html>
