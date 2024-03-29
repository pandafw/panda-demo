<html>
<head>
<title>Panda Freemarker TagLib</title>
</head>

<body>
<div class="p-section">
	<div class="ui-headline">
		<h3><i class="fa fa-code"></i> Panda Freemarker TagLib</h3>
	</div>

	<#include "/action-alert.ftl"/>

	<@p.form cssClass="p-eform" id="tags" focusme="true" method="post" theme="bs3h">
		<@p.hidden name="hidden"/>
		<@p.viewfield key="viewfield"/>
		<@p.textfield key="textfield" textclear="true"/>
		<@p.triggerfield key="triggerfield"/>
		<@p.datepicker key="datepicker"/>
		<@p.datetimepicker key="datetimepicker"/>
		<@p.timepicker key="timepicker"/>
		<@p.select key="select" emptyOption="true" list="!{'a': 'aaa', 'b': 'bbb'}"/>
		<@p.select key="combobox" editable="true" emptyOption="true" list="!{'a': 'aaa', 'b': 'bbb'}"/>
		<@p.radio key="radio" list="!{'a': 'aaa', 'b': 'bbb'}"/>
		<@p.checkboxlist key="checkboxlist" list="!{'a': 'aaa', 'b': 'bbb'}"/>
		<@p.checkbox key="checkbox" fieldValue="true" fieldLabel="label"/>
		<@p.file key="file"/>
		<@p.uploader
			key="files"
			accept="image/*,video/*,audio/*"
			size="30"
			multiple="true"
			uploadUrl="%{b.files_path + '/uploads'}"
			dnloadUrl="%{b.files_path + '/download?file=$'}"
		/>
		<@p.textarea key="textarea" maxlength="100" autosize="true"/>
		<@p.viewfield key="htmlviewer" format="html"/>
		<@p.htmleditor key="summernote" height="200" mediaAction="%{b.media_path + '/browse.popup'}"/>
		<@p.htmleditor key="cleditor" editor="cleditor" rows="25"/>
		<@p.div>
			<@p.submit btype="primary" icon="submit" label="Submit"/>
			<@p.reset btype="info" icon="reset" label="Reset"/>
		</@p.div>
	</@p.form>

</div>
</body>
</html>
