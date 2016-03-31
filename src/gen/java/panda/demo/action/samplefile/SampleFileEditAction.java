package panda.demo.action.samplefile;

import panda.demo.action.WebEditAction;
import panda.demo.entity.SampleFile;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.param.Param;
import panda.mvc.annotation.view.Err;
import panda.mvc.annotation.view.Ok;
import panda.mvc.validation.Validators;
import panda.mvc.validation.annotation.Validate;
import panda.mvc.validation.annotation.Validates;

public abstract class SampleFileEditAction extends WebEditAction<SampleFile> {

	/**
	 * Constructor
	 */
	public SampleFileEditAction() {
		setType(SampleFile.class);
		addDisplayFields(SampleFile.ID, SampleFile.NAME, SampleFile.FILE_SIZE, SampleFile.FILE_ITEM, SampleFile.IMAGE_SIZE, SampleFile.IMAGE_ITEM, SampleFile.STATUS, SampleFile.CUSID, SampleFile.CUSNM, SampleFile.CTIME, SampleFile.UUSID, SampleFile.UUSNM, SampleFile.UTIME);
	}


	/*----------------------------------------------------------------------*
	 * Actions
	 *----------------------------------------------------------------------*/
	/**
	 * view
	 */
	@At
	@Ok(View.SFTL)
	@Err(View.SFTL)
	public Object view(@Param SampleFile key) {
		return super.view(key);
	}

	/**
	 * view_input
	 */
	@At
	@Ok("sftl:~view")
	@Err("sftl:~view")
	public Object view_input(@Param SampleFile data) {
		return super.view_input(data);
	}

	/**
	 * print
	 */
	@At
	@Ok(View.SFTL)
	@Err(View.SFTL)
	public Object print(@Param SampleFile key) {
		return super.print(key);
	}

	/**
	 * print_input
	 */
	@At
	@Ok("sftl:~print")
	@Err("sftl:~print")
	public Object print_input(@Param SampleFile data) {
		return super.print_input(data);
	}

	/**
	 * copy
	 */
	@At
	@Ok(View.SFTL)
	@Err(View.SFTL)
	public Object copy(@Param SampleFile key) {
		return super.copy(key);
	}

	/**
	 * copy_input
	 */
	@At
	@Ok("sftl:~copy")
	@Err("sftl:~copy")
	public Object copy_input(@Param SampleFile data) {
		return super.copy_input(data);
	}

	/**
	 * copy_confirm
	 */
	@At
	@Ok(View.SFTL)
	@Err("sftl:~copy")
	public Object copy_confirm(@Param @Validates({
			@Validate(value=Validators.REQUIRED, params="fields: [ 'name' ]", msgId=Validators.MSGID_REQUIRED),
			@Validate(value=Validators.VISIT)
			}) SampleFile data) {
		return super.copy_confirm(data);
	}

	/**
	 * copy_execute
	 */
	@At
	@Ok(View.SFTL)
	@Err("sftl:~copy")
	public Object copy_execute(@Param @Validates({
			@Validate(value=Validators.REQUIRED, params="fields: [ 'name' ]", msgId=Validators.MSGID_REQUIRED),
			@Validate(value=Validators.VISIT)
			}) SampleFile data) {
		return super.copy_execute(data);
	}

	/**
	 * add
	 */
	@At
	@Ok(View.SFTL)
	@Err(View.SFTL)
	public Object add() {
		return super.add();
	}

	/**
	 * add_input
	 */
	@At
	@Ok("sftl:~add")
	@Err("sftl:~add")
	public Object add_input(@Param SampleFile data) {
		return super.add_input(data);
	}

	/**
	 * add_confirm
	 */
	@At
	@Ok(View.SFTL)
	@Err("sftl:~add")
	public Object add_confirm(@Param @Validates({
			@Validate(value=Validators.REQUIRED, params="fields: [ 'name' ]", msgId=Validators.MSGID_REQUIRED),
			@Validate(value=Validators.VISIT)
			}) SampleFile data) {
		return super.add_confirm(data);
	}

	/**
	 * add_execute
	 */
	@At
	@Ok(View.SFTL)
	@Err("sftl:~add")
	public Object add_execute(@Param @Validates({
			@Validate(value=Validators.REQUIRED, params="fields: [ 'name' ]", msgId=Validators.MSGID_REQUIRED),
			@Validate(value=Validators.VISIT)
			}) SampleFile data) {
		return super.add_execute(data);
	}

	/**
	 * edit
	 */
	@At
	@Ok(View.SFTL)
	@Err(View.SFTL)
	public Object edit(@Param SampleFile key) {
		return super.edit(key);
	}

	/**
	 * edit_input
	 */
	@At
	@Ok("sftl:~edit")
	@Err("sftl:~edit")
	public Object edit_input(@Param SampleFile data) {
		return super.edit_input(data);
	}

	/**
	 * edit_confirm
	 */
	@At
	@Ok(View.SFTL)
	@Err("sftl:~edit")
	public Object edit_confirm(@Param @Validates({
			@Validate(value=Validators.REQUIRED, params="fields: [ 'name' ]", msgId=Validators.MSGID_REQUIRED),
			@Validate(value=Validators.VISIT)
			}) SampleFile data) {
		return super.edit_confirm(data);
	}

	/**
	 * edit_execute
	 */
	@At
	@Ok(View.SFTL)
	@Err("sftl:~edit")
	public Object edit_execute(@Param @Validates({
			@Validate(value=Validators.REQUIRED, params="fields: [ 'name' ]", msgId=Validators.MSGID_REQUIRED),
			@Validate(value=Validators.VISIT)
			}) SampleFile data) {
		return super.edit_execute(data);
	}

	/**
	 * delete
	 */
	@At
	@Ok(View.SFTL)
	@Err(View.SFTL)
	public Object delete(@Param SampleFile key) {
		return super.delete(key);
	}

	/**
	 * delete_execute
	 */
	@At
	@Ok(View.SFTL)
	@Err("sftl:delete")
	public Object delete_execute(@Param SampleFile key) {
		return super.delete_execute(key);
	}

}

