<#--
/*
 * This file is part of Nuts Framework.
 * Copyright(C) 2009-2012 Nuts Develop Team.
 *
 * Nuts Framework is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License any later version.
 *
 * Nuts Framework is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Nuts Framework. If not, see <http://www.gnu.org/licenses/>.
 */
-->
<div id="footer_navi">
	<div class="footer-line">
		<@n.a href="${base}/sample.ftl"><@n.text name="menu-sample"/></@n.a>
		 | 
		<@n.a action="sampletags_list"><@n.text name="menu-sample-tags"/></@n.a>
		 | 
		<@n.a action="sampledate_list"><@n.text name="menu-sample-date"/></@n.a>
		 | 
		<@n.a action="samplefile_list"><@n.text name="menu-sample-file"/></@n.a>
		 | 
		<@n.a action="samplefile_join"><@n.text name="menu-sample-join"/></@n.a>
		 | 
		<@n.a action="samplefile_unique"><@n.text name="menu-sample-unique"/></@n.a>
	</div>	

	<div class="footer-line">
		<@n.a action="cronjobs"><@n.text name="menu-tools-cronjobs"/></@n.a>
		 | 
		<@n.a action="dataimp"><@n.text name="menu-tools-dataimp"/></@n.a>
		 | 
		<@n.a action="ognleval"><@n.text name="menu-tools-ognleval"/></@n.a>
		 | 
	<#if utils.gaeSupport>
		<@n.a action="ndfsfile_list"><@n.text name="menu-tools-ndfsfile"/></@n.a>
	<#else>
		<@n.a action="pdf"><@n.text name="menu-tools-html2pdf"/></@n.a>
		 | 
		<@n.a action="sqlexec"><@n.text name="menu-tools-sqlexec"/></@n.a>
	</#if>
	</div>
</div>
