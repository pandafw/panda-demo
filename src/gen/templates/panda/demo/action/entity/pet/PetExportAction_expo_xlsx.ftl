<html>
<head>
	<title><@p.text name="title-expo_xlsx"><@p.param name="title" value="#(title)"/></@p.text></title>
</head>
<body>

<div class="p-section">
	<div class="ui-headline">
		<h3><@p.i icon="icon"/> <@p.text name="title-expo_xlsx"><@p.param name="title" value="#(title)"/></@p.text></h3>
	</div>
<#assign _well = a.getText("well-expo_xlsx", "")/>
<#if _well?has_content>
	<div class="p-well">${_well}</div>
</#if>

	<div id="pet_alert"><#include "/action-alert.ftl"/></div>
</div>

</body>
</html>
