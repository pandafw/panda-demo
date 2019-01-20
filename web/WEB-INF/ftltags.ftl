<html>
<head>
<title>Panda Freemarker TagLib</title>
</head>

<body>
<div class="p-section">
	<div class="p-header">
		<h3><i class="fa fa-code"></i> Panda Freemarker TagLib</h3>
	</div>

	<#include "/action-alert.ftl"/>

	<@p.form cssClass="p-eform" id="tags" focusme="true" method="get" theme="bs3h">
		<@p.hidden name="hidden"/>
		<@p.viewfield key="viewfield"/>
		<@p.textfield key="textfield"/>
		<@p.triggerfield key="triggerfield"/>
		<@p.datepicker key="datepicker"/>
		<@p.datetimepicker key="datetimepicker"/>
		<@p.timepicker key="timepicker"/>
		<@p.select key="select" emptyOption="true" list="!{'a': 'aaa', 'b': 'bbb'}"/>
		<@p.radio key="radio" list="!{'a': 'aaa', 'b': 'bbb'}"/>
		<@p.checkboxlist key="checkboxlist" list="!{'a': 'aaa', 'b': 'bbb'}"/>
		<@p.checkbox key="checkbox" fieldValue="true" fieldLabel="label"/>
		<@p.textarea key="textarea" maxlength="100" rows="5"/>
		<@p.div>
			<@p.submit btype="primary" icon="submit" label="Submit"/>
			<@p.reset btype="info" icon="reset" label="Reset"/>
		</@p.div>
	</@p.form>

</div>
</body>
</html>
