<html>
<head>
	<title><@p.text name="menu-tools-error"/></title>
</head>

<body>

<div class="n-sect">
	<div class="n-sect-head">
		<h3 class="n-sect-title"><@p.text name="menu-tools-error"/></h3>
	</div>
	<div class="n-sect-body">
		<@p.b icon="icon-error" onclick="return onErrorRaise();"><@p.text name="menu-tools-error"/></@p.b>
		<script type="text/javascript">
			function onErrorRaise() {
				location.href = '<@p.url action="error_raise"/>';
				return false;
			}
		</script>
	</div>
</div>

</body>
</html>

