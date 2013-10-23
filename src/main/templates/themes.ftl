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
		<img class="tt-icon tt-icon-${t}" src="${static}/nuts/images/s.gif"/><br/>
		<span>${t?html}</span>
	</a>
</#list>
</div>

</body>
</html>
