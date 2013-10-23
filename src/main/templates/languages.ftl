<#--
/*
 * This file is part of Bunny.
 * Copyright (C) 2009 Bunny Develop Team.
 *
 * Bunny is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License any later version.
 * 
 * Bunny is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Bunny. If not, see <http://www.gnu.org/licenses/>.
 */
-->
<html>
<head>
	<title><@n.text name="title-page"/></title>
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
