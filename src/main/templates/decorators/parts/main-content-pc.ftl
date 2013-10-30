<div class="container">
	<div class="row row-offcanvas row-offcanvas-right active">
		<div id="content" class="col-xs-12 col-sm-9">
			<#include "/panda/exts/struts2/views/application-alert.ftl" />
			<#include "/panda/exts/struts2/views/session-alert.ftl" />
			${body}
		</div>
		<div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar" role="navigation">
			<div class="well sidebar-nav">
				<#include "sidebar.ftl"/>
			</div>
		</div>
	</div>
</div>
