<html>
<head>
<title><@p.text name="navi-sample-alert"/></title>
</head>

<body>
<div class="p-section">
	<div class="p-header">
		<h3><i class="fa fa-warning"></i> <@p.text name="navi-sample-alert"/></h3>
	</div>

	<#include "/action-alert.ftl"/>

	<@p.form theme="bs3h" id="a_alert">
		<fieldset><legend>Action & Params Alert</legend>
			<@p.textfield name="strField" label="Field Error" placeholder="input field error ..."/>
			<@p.textfield name="strError" label="Action Error" placeholder="input action error ..."/>
			<@p.textfield name="strWarn" label="Action Warnning" placeholder="input action warning ..."/>
			<@p.textfield name="strConf" label="Action Confirm" placeholder="input action confirm ..."/>
			<@p.textfield name="strInfo" label="Action Message" placeholder="input action message ..."/>
			<@p.textfield name="strCheck" label="ValidateException" placeholder="input validate exception message ..."/>
			<@p.textfield name="strExcep" label="Exception" placeholder="input exception message ..."/>
		</fieldset>
		<@p.div>
			<@p.submit btype="danger" value="Submit"/>
		</@p.div>
	</@p.form>
	</div>
	
	<script>
		function onPageLoad() {
			$('#a_alert input[type=text]').change(function() {
				if ($(this).val()) {
					$.toast({
						text: $(this).val(), 
						icon: getAlertType($(this).attr('name'))
					});
				}
			});
		}
		
		function getAlertType(n) {
			n = n.toLowerCase();
			if (n.contains('field')) {
				return 'error';
			}
			if (n.contains('error')) {
				return 'error';
			}
			if (n.contains('warn')) {
				return 'warning';
			}
			if (n.contains('conf')) {
				return 'warning';
			}
			if (n.contains('excp')) {
				return 'success';
			}
			return 'info';
		}
	</script>
</body>
</html>

