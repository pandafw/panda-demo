<html>
<head>
	<title><@p.text name="title"/></title>
</head>

<body>

<#assign _theme_list_ = [
	"blitzer",
	"cupertino",
	"flick",
	"hot-sneaks",
	"humanity",
	"le-frog",
	"mint-choc",
	"redmond",
	"smoothness",
	"start",
	"sunny",
	"ui-lightness"
] />
<div class="s-themes">
<#list _theme_list_ as t>
	<a class="theme-thumb" href="#" onclick="$.popup().callback('${t}');return false;">
		<img class="tt-icon tt-icon-${t}" src="${static}/panda/images/s.gif"/><br/>
		<span>${t?html}</span>
	</a>
</#list>
</div>

</body>
</html>
