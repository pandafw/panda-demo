		<div id="side_left" class="s-side">
			<#include "side-menu.ftl"/>
		</div>
<#--
		<div id="side_right" class="s-side">
			<#include "side-menu.ftl"/>
		</div>
-->
		<div id="content" class="has-left-side">
			<#include "/panda/exts/struts2/views/application-prompt.ftl" />
			<#include "/panda/exts/struts2/views/session-prompt.ftl" />
			${body}
		</div>
