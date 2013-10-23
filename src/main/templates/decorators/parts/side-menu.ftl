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
<#assign _an_ = utils.actionName!/>
<#assign _au_ = utils.requestURI!/>
<#macro menu ap ac tx>
			<li<#if _an_?starts_with(ap)> class="active"</#if>><#rt/>
<@n.a action=ac namespace="/"><@n.text name=tx/></@n.a>
</#macro>
<#macro menuh ah tx tg>
			<li<#if _au_ = ah> class="active"</#if>><#rt/>
<@n.a href=ah target=tg><@n.text name=tx/></@n.a>
</#macro>

<div id="side_menu" class="n-sect">
	<div class="n-sect-head">
		<h3 class="n-sect-title">Nuts</h3>
	</div>
	<div class="n-sect-body">
		<ul class="menu">
			<@menuh ah="${base}/" tx="menu-index" tg=""/></li>
			<li<#if _au_ = "${base}/codegen.ftl"> class="active"</#if>><@n.a id="menu_codegen" href="${base}/codegen.ftl"><@n.text name="navi-codegen"/></@n.a></li>
			<@menuh ah="${base}/screenshot.ftl" tx="navi-screenshot" tg=""/></li>
			<@menuh ah="http://code.google.com/p/nutsfw/downloads" tx="navi-download" tg="_blank"/></li>
			<@menuh ah="http://code.google.com/p/nutsfw/source/browse" tx="navi-source" tg="_blank"/></li>
			<@menuh ah="http://code.google.com/p/nutsfw/w" tx="navi-wiki" tg="_blank"/></li>
			<@menuh ah="http://groups.google.com/group/nutsfw" tx="navi-forum" tg="_blank"/></li>
		</ul>
		
		<div class="hr"></div>
		<ul class="menu">
			<li<#if _au_ = "${base}/sample.ftl"> class="active"</#if>><@n.a id="menu_sample" href="${base}/sample.ftl"><@n.text name="menu-sample"/></@n.a>
				<ul class="menu">
					<@menu ap="sampletags_" ac="sampletags_list" tx="menu-sample-tags"/></li>
					<@menu ap="sampledate_" ac="sampledate_list" tx="menu-sample-date"/></li>
					<@menu ap="samplefile_" ac="samplefile_list" tx="menu-sample-file"/></li>
					<@menu ap="samplejoin_" ac="samplejoin_list" tx="menu-sample-join"/></li>
					<@menu ap="sampleunique_" ac="sampleunique_list" tx="menu-sample-unique"/></li>
				</ul>
			</li>
		</ul>
		
		<div class="hr"></div>
	
		<ul class="menu">
			<li><@n.text name="menu-tools"/>
				<ul class="menu">
					<@menu ap="cronjobs" ac="cronjobs" tx="menu-tools-cronjobs"/></li>
					<@menu ap="dataimp" ac="dataimp" tx="menu-tools-dataimp"/></li>
					<@menu ap="ognleval" ac="ognleval" tx="menu-tools-ognleval"/></li>
				<#if utils.gaeSupport>
					<@menu ap="ndfsfile_" ac="ndfsfile_list" tx="menu-tools-ndfsfile"/></li>
				<#else>
					<@menu ap="pdf" ac="pdf" tx="menu-tools-html2pdf"/></li>
					<@menu ap="sqlexec" ac="sqlexec" tx="menu-tools-sqlexec"/></li>
				</#if>
					<@menu ap="error_" ac="error_input" tx="menu-tools-error"/></li>
				</ul>
			</li>
		</ul>
	</div>
</div>
