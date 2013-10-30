<html>
<head>
<title><@p.text name="menu-tools-error"/></title>
</head>

<body>
<div class="p-section">
	<div class="p-header"><h3><@p.text name="menu-tools-error"/></h3></div>

	<#include "/panda/exts/struts2/views/action-alert.ftl"/>

	<@p.form action="error_raise" theme="bs3">
		<fieldset><legend>Application Scope</legend>
			<@p.textfield name="appError" label="Application Error" placeholder="input application error ..."/>
			<@p.textfield name="appWarn" label="Application Warnning" placeholder="input application warning ..."/>
			<@p.textfield name="appConf" label="Application Confirm" placeholder="input application confirm ..."/>
			<@p.textfield name="appInfo" label="Application Message" placeholder="input application message ..."/>
		</fieldset>
		<fieldset><legend>Session Scope</legend>
			<@p.textfield name="sesError" label="Session Error" placeholder="input session error ..."/>
			<@p.textfield name="sesWarn" label="Session Warnning" placeholder="input session warning ..."/>
			<@p.textfield name="sesConf" label="Session Confirm" placeholder="input session confirm ..."/>
			<@p.textfield name="sesInfo" label="Session Message" placeholder="input session message ..."/>
		</fieldset>
		<fieldset><legend>Action Scope</legend>
			<@p.textfield name="strField" label="Field Error" placeholder="input field error ..."/>
			<@p.textfield name="strError" label="Action Error" placeholder="input action error ..."/>
			<@p.textfield name="strWarn" label="Action Warnning" placeholder="input action warning ..."/>
			<@p.textfield name="strConf" label="Action Confirm" placeholder="input action confirm ..."/>
			<@p.textfield name="strInfo" label="Action Message" placeholder="input action message ..."/>
			<@p.textfield name="strExcep" label="Exception" placeholder="input exception ..."/>
		</fieldset>
		<@p.submit btype="danger" value="Submit"/>
	</@p.form>
	</div>
</body>
</html>

