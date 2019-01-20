<html>
<head>
	<title><@p.text name="site-desc"/></title>
</head>

<body>
	<div class="p-well p-tcenter">
		<@p.text name="site-desc"/>
	</div>

<#macro mitem ac ic tx>
	<#if a.canAccess(ac)>
		<@p.a cssClass="p-menu-item" action=ac>
			<i class="fa-4x ${a.getText(ic)}"> </i>
			<div><@p.text name=tx/></div>
		</@p.a>
	</#if>
</#macro>
	<div class="p-menu">
		<@mitem ac="/pet/list"          ic="icon-pets-pet"          tx="navi-pets-pet"/>
		<@mitem ac="/petsearch"         ic="icon-pets-petsearch"    tx="navi-pets-petsearch"/>
		<@mitem ac="/petcategory/list"  ic="icon-pets-petcategory"  tx="navi-pets-petcategory"/>
		<@mitem ac="/petimage/list"     ic="icon-pets-petimage"     tx="navi-pets-petimage"/>
		<div class="clearfix"></div>


		<hr/>
		<@mitem ac="/mfupd"   ic="icon-sample-multifileupload" tx="navi-sample-multifileupload"/>
		<@mitem ac="/alert"   ic="icon-sample-alert"           tx="navi-sample-alert"/>
		<@mitem ac="/memtest" ic="icon-sample-memtest"         tx="navi-sample-memtest"/>
		<div class="clearfix"></div>

		<hr/>
		<@mitem ac="/super/cmd"           ic="icon-super-cmdexec"      tx="navi-super-cmdexec"/>
		<@mitem ac="/super/el"            ic="icon-super-eleval"       tx="navi-super-eleval"/>
	<#if !assist.gaeSupport>
		<@mitem ac="/super/sql"           ic="icon-super-sqlexec"      tx="navi-super-sqlexec"/>
	</#if>
		<@mitem ac="/super/html2pdf"      ic="icon-super-html2pdf"     tx="navi-super-html2pdf"/>
		<@mitem ac="/super/sendmail"      ic="icon-super-sendmail"     tx="navi-super-sendmail"/>
		<@mitem ac="/super/dataimp"       ic="icon-super-dataimp"      tx="navi-super-dataimp"/>

		<@mitem ac="/super/crons"         ic="icon-super-crons"        tx="navi-super-crons"/>
		<@mitem ac="/super/sysdump"       ic="icon-super-sysdump"      tx="navi-super-sysdump"/>
		<@mitem ac="/super/loadtask"      ic="icon-super-loadtask"     tx="navi-super-loadtask"/>
		<@mitem ac="/super/filepool/list" ic="icon-super-filepool"     tx="navi-super-filepool"/>
	<#if assist.databaseResourceLoader>
		<@mitem ac="/super/resource/list" ic="icon-super-resource"     tx="navi-super-resource"/>
	</#if>
	<#if assist.databaseTemplateLoader>
		<@mitem ac="/super/template/list" ic="icon-super-template"     tx="navi-super-template"/>
	</#if>
		<div class="clearfix"></div>
		
		<br/>
		<br/>

	</div>

</body>
</html>

