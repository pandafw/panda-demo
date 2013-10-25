<div id="footer_navi">
	<div class="footer-line">
		<@p.a href="${base}/sample.ftl"><@p.text name="menu-sample"/></@p.a>
		 | 
		<@p.a action="sampletags_list"><@p.text name="menu-sample-tags"/></@p.a>
		 | 
		<@p.a action="sampledate_list"><@p.text name="menu-sample-date"/></@p.a>
		 | 
		<@p.a action="samplefile_list"><@p.text name="menu-sample-file"/></@p.a>
		 | 
		<@p.a action="samplefile_join"><@p.text name="menu-sample-join"/></@p.a>
		 | 
		<@p.a action="samplefile_unique"><@p.text name="menu-sample-unique"/></@p.a>
	</div>	

	<div class="footer-line">
		<@p.a action="cronjobs"><@p.text name="menu-tools-cronjobs"/></@p.a>
		 | 
		<@p.a action="dataimp"><@p.text name="menu-tools-dataimp"/></@p.a>
		 | 
		<@p.a action="ognleval"><@p.text name="menu-tools-ognleval"/></@p.a>
		 | 
	<#if assist.gaeSupport>
		<@p.a action="ndfsfile_list"><@p.text name="menu-tools-ndfsfile"/></@p.a>
	<#else>
		<@p.a action="pdf"><@p.text name="menu-tools-html2pdf"/></@p.a>
		 | 
		<@p.a action="sqlexec"><@p.text name="menu-tools-sqlexec"/></@p.a>
	</#if>
	</div>
</div>
