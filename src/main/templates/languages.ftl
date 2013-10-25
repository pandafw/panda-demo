<html>
<head>
	<title><@p.text name="title-page"/></title>
</head>

<body>

<div class="s-languages">
<#assign _ml_ = consts.localeLanguageMap />
<#list _ml_?keys as _l><#if _l_index gt 0>
	<a class="lang-thumb" href="#" onclick="$.popup().callback('${_l}');return false;">
		<img src="${base}/images/flag-${_l}.png"/><br/>
		<span>${_ml_[_l]?html}</span>
	</a>
</#if></#list>
</div>

</body>
</html>
