<#macro navi ap ac ic tx>
	<#if a.canAccess(ac)>
		<li<#if path?starts_with(ap)> class="active"</#if>><@p.a action=ac><i class="${a.getText(ic)}"></i> <@p.text name=tx/></@p.a></li>
	</#if>
</#macro>

<div id="navi_pets" class="panel panel-info side-navi">
	<div class="panel-heading">
		<i class="fa fa-qq"></i> <@p.text name="navi-pets"/>
	</div>
	<div class="panel-body">
		<ul class="nav nav-stacked">
			<@navi ap="/pet/"         ac="/pet/list"          ic="icon-pets-pet"               tx="navi-pets-pet"/>
			<@navi ap="/petcategory/" ac="/petcategory/list"  ic="icon-pets-petcategory"       tx="navi-pets-petcategory"/>
			<@navi ap="/petimage/"    ac="/petimage/list"     ic="icon-pets-petimage"          tx="navi-pets-petimage"/>
			<@navi ap="/petsearch/"   ac="/petsearch/"        ic="icon-pets-petsearch"         tx="navi-pets-petsearch"/>
		</ul>
	</div>
</div>

<div id="navi_sample" class="panel panel-info side-navi">
	<div class="panel-heading">
		<i class="fa fa-bookmark"></i> <@p.text name="navi-sample"/>
	</div>
	<div class="panel-body">
		<ul class="nav nav-stacked">
			<@navi ap="/pdf"           ac="/pdf"               ic="icon-super-html2pdf"         tx="navi-super-html2pdf"/>
			<@navi ap="/mfupd"         ac="/mfupd"             ic="icon-sample-multifileupload" tx="navi-sample-multifileupload"/>
			<@navi ap="/alert"         ac="/alert"             ic="icon-sample-alert"           tx="navi-sample-alert"/>
			<@navi ap="/ftltags"       ac="/ftltags"           ic="icon-sample-ftltags"         tx="navi-sample-ftltags"/>
			<@navi ap="/jsptags"       ac="/jsptags"           ic="icon-sample-jsptags"         tx="navi-sample-jsptags"/>
			<@navi ap="/debug"         ac="/debug"             ic="icon-sample-debug"           tx="navi-sample-debug"/>
		</ul>
	</div>
</div>

<#if assist.loginUser??>
<div id="navi_user" class="panel panel-primary side-navi">
	<div class="panel-heading">
		<i class="fa fa-user"></i> <@p.text name="navi-user-account"/>
	</div>
	<div class="panel-body">
		<ul class="nav nav-stacked">
			<@navi ap="/user/profile/"         ac="/user/profile/input"    ic="icon-user-profile"         tx="navi-user-profile"/>
			<@navi ap="/user/password/change/" ac="/user/password/change/" ic="icon-user-password-change" tx="navi-user-password-change"/>
		</ul>
	</div>
</div><!-- end of navi_user -->
</#if>

<#if assist.superUser>
<div id="navi_super" class="panel panel-warning side-navi">
	<div class="panel-heading">
		<i class="fa fa-wrench"></i> <@p.text name="navi-super"/>
	</div>
	<div class="panel-body">
		<ul class="nav nav-stacked">
			<@navi ap="/super/user/"     ac="/super/user/list"     ic="icon-admin-user"      tx="navi-admin-user"/>
			<@navi ap="/task/reset"      ac="/task/reset"          ic="icon-reset"           tx="navi-task-reset"/>
			<@navi ap="/memtest"         ac="/memtest"             ic="icon-sample-memtest"   tx="navi-sample-memtest"/>
			<@navi ap="/super/el"        ac="/super/el"            ic="icon-super-eleval"     tx="navi-super-eleval"/>
		<#if !assist.gaeSupport>
			<@navi ap="/super/cmd"       ac="/super/cmd"           ic="icon-super-cmdexec"    tx="navi-super-cmdexec"/>
			<@navi ap="/super/sql"       ac="/super/sql"           ic="icon-super-sqlexec"    tx="navi-super-sqlexec"/>
		</#if>
			<@navi ap="/super/sendmail"  ac="/super/sendmail"      ic="icon-super-sendmail"   tx="navi-super-sendmail"/>
			<@navi ap="/super/dataexp"   ac="/super/dataexp"       ic="icon-super-dataexp"    tx="navi-super-dataexp"/>
			<@navi ap="/super/dataimp"   ac="/super/dataimp"       ic="icon-super-dataimp"    tx="navi-super-dataimp"/>

			<@navi ap="/super/crons"     ac="/super/crons"         ic="icon-super-crons"      tx="navi-super-crons"/>
			<@navi ap="/super/sysdump"   ac="/super/sysdump"       ic="icon-super-sysdump"    tx="navi-super-sysdump"/>
			<@navi ap="/super/loadtask"  ac="/super/loadtask"      ic="icon-super-loadtask"   tx="navi-super-loadtask"/>
			<@navi ap="/super/filepool/" ac="/super/filepool/list" ic="icon-super-filepool"   tx="navi-super-filepool"/>
		<#if assist.databaseResourceLoader>
			<@navi ap="/super/resource/" ac="/super/resource/list" ic="icon-super-resource"   tx="navi-super-resource"/>
		</#if>
		<#if assist.databaseTemplateLoader>
			<@navi ap="/super/template/" ac="/super/template/list" ic="icon-super-template"   tx="navi-super-template"/>
		</#if>
		</ul>
	</div>
</div>
</#if>

<div id="navi_donate">
	<#include "donate.ftl"/>
</div>
