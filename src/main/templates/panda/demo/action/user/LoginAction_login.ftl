<html>
<head>
	<title><@p.text name="title"/></title>
</head>

<body>

<div class="p-section">
	<div class="p-header">
		<h3><i class="fa fa-sign-in"></i> <@p.text name="title"/></h3>
	</div>

	<#include "/action-alert.ftl"/>
	<br/>

	<br/>
	<div class="p-tcenter">
	<#if result?has_content>
		<#assign _t = text.getTextAsInt("redirect-timeout", 0) />
		<@p.a id="redirect" icon="n-icon-arrow_switch" href=result><@p.text name="link-redirect"/> ... [<code id="time">${_t}</code>]</@p.a>
		<script type="text/javascript">
		<#if _t < 1>
			location.href = document.getElementById("redirect").href;
		<#else>
			var seconds = ${_t}; 
		
			var timer = setInterval(function() {
				seconds--;
		
				document.getElementById("time").innerHTML = seconds;
				
				if (seconds < 1) {
					clearInterval(timer);
					location.href = document.getElementById("redirect").href;
				}
			}, 1000);
		</#if>
		</script>
	</#if>
		<@p.a icon="user" action="/user" label="#(navi-user)"/>
	</div>
</div>

</body>
</html>
