<#macro navi ap ac ic tx>
	<#if a.canAccess(ac)>
		<li class="nav-item<#if path?starts_with(ap)> active</#if>"><@p.a action=ac cssClass="nav-link"><i class="${a.getText(ic)}"></i> <span><@p.text name=tx/></span></@p.a></li>
	</#if>
</#macro>

<div id="navi_pets" class="panel panel-info card">
	<div class="panel-heading card-header bg-info text-white">
		<i class="fa fa-qq"></i> <span><@p.text name="navi-pets"/></span>
	</div>
	<div class="panel-body card-body">
		<ul class="nav nav-stacked flex-column">
			<@navi ap="/pet/"         ac="/pet/list"          ic="icon-pets-pet"               tx="navi-pets-pet"/>
			<@navi ap="/petcategory/" ac="/petcategory/list"  ic="icon-pets-petcategory"       tx="navi-pets-petcategory"/>
			<@navi ap="/petimage/"    ac="/petimage/list"     ic="icon-pets-petimage"          tx="navi-pets-petimage"/>
			<@navi ap="/petsearch/"   ac="/petsearch/"        ic="icon-pets-petsearch"         tx="navi-pets-petsearch"/>
		</ul>
	</div>
</div>

<div id="navi_sample" class="panel panel-info card">
	<div class="panel-heading card-header bg-info text-white">
		<i class="fa fa-bookmark"></i> <span><@p.text name="navi-sample"/></span>
	</div>
	<div class="panel-body card-body">
		<ul class="nav nav-stacked flex-column">
			<@navi ap="/pages"         ac="/pages"             ic="icon-pages"                  tx="navi-pages"/>
			<@navi ap="/media"         ac="/media"             ic="icon-media"                  tx="navi-media"/>
			<@navi ap="/tags"          ac="/tags"              ic="icon-tags"                   tx="navi-tags"/>
			<@navi ap="/pdf"           ac="/pdf"               ic="icon-super-html2pdf"         tx="navi-super-html2pdf"/>
			<@navi ap="/mfupd"         ac="/mfupd"             ic="icon-sample-multifileupload" tx="navi-sample-multifileupload"/>
			<@navi ap="/alert"         ac="/alert"             ic="icon-sample-alert"           tx="navi-sample-alert"/>
			<@navi ap="/ftltags"       ac="/ftltags"           ic="icon-sample-ftltags"         tx="navi-sample-ftltags"/>
			<@navi ap="/jsptags"       ac="/jsptags"           ic="icon-sample-jsptags"         tx="navi-sample-jsptags"/>
			<@navi ap="/memtest"       ac="/memtest"           ic="icon-sample-memtest"         tx="navi-sample-memtest"/>
			<@navi ap="/task/reindex"  ac="/task/reindex"      ic="icon-reset"                  tx="navi-task-reindex"/>
			<@navi ap="/task/reset"    ac="/task/reset"        ic="icon-reset"                  tx="navi-task-reset"/>
		</ul>
	</div>
</div>

<#if assist.loginUser??>
<div id="navi_user" class="panel panel-info card">
	<div class="panel-heading card-header bg-primary text-white">
		<i class="fa fa-user"></i> <span><@p.text name="navi-user-account"/></span>
	</div>
	<div class="panel-body card-body">
		<ul class="nav nav-stacked flex-column">
			<@navi ap="/user/profile/"         ac="/user/profile/input"    ic="icon-user-profile"         tx="navi-user-profile"/>
			<@navi ap="/user/password/change/" ac="/user/password/change/" ic="icon-user-password-change" tx="navi-user-password-change"/>
		</ul>
	</div>
</div><!-- end of navi_user -->
</#if>

<#if assist.hasAdminRole()>
	<#include "/panda/gems/admin/admin-sidenavi.ftl">
</#if>

<#if assist.hasSuperRole()>
	<#include "/panda/gems/admin/super-sidenavi.ftl">
</#if>
