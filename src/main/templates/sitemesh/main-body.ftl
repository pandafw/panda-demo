<div class="container">
	<div class="row">
		<div id="content" class="col-md-9">
			<#include "/panda/mvc/view/application-alert.ftl" />
			<#include "/panda/mvc/view/session-alert.ftl" />
			${body}
		</div>
		<div class="col-md-3" id="sidebar">
			<div class="sidebar-nav">
				<#include "sidebar.ftl"/>
			</div>
		</div>
	</div>
</div>