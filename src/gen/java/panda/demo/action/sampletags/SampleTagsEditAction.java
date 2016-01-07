package panda.demo.action.sampletags;

import panda.demo.action.BaseEditAction;
import panda.demo.entity.SampleTags;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.param.Param;
import panda.mvc.annotation.view.Err;
import panda.mvc.annotation.view.Ok;
import panda.mvc.validation.Validators;
import panda.mvc.validation.annotation.Validate;
import panda.mvc.validation.annotation.Validates;

@At("/sampletags")
public class SampleTagsEditAction extends BaseEditAction<SampleTags> {

	/**
	 * Constructor
	 */
	public SampleTagsEditAction() {
		setType(SampleTags.class);
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
	public Object view(@Param SampleTags key) {
		return super.view(key);
	}

	/**
	 * view_input
	 */
	@At
	@Ok("sftl:~view")
	@Err("sftl:~view")
	public Object view_input(@Param SampleTags data) {
		return super.view_input(data);
	}

	/**
	 * print
	 */
	@At
	@Ok(View.SFTL)
	@Err(View.SFTL)
	public Object print(@Param SampleTags key) {
		return super.print(key);
	}

	/**
	 * print_input
	 */
	@At
	@Ok("sftl:~print")
	@Err("sftl:~print")
	public Object print_input(@Param SampleTags data) {
		return super.print_input(data);
	}

	/**
	 * copy
	 */
	@At
	@Ok(View.SFTL)
	@Err(View.SFTL)
	public Object copy(@Param SampleTags key) {
		return super.copy(key);
	}

	/**
	 * copy_input
	 */
	@At
	@Ok("sftl:~copy")
	@Err("sftl:~copy")
	public Object copy_input(@Param SampleTags data) {
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
			}) SampleTags data) {
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
			}) SampleTags data) {
		return super.copy_execute(data);
	}

	/**
	 * insert
	 */
	@At
	@Ok(View.SFTL)
	@Err(View.SFTL)
	public Object insert() {
		return super.insert();
	}

	/**
	 * insert_input
	 */
	@At
	@Ok("sftl:~insert")
	@Err("sftl:~insert")
	public Object insert_input(@Param SampleTags data) {
		return super.insert_input(data);
	}

	/**
	 * insert_confirm
	 */
	@At
	@Ok(View.SFTL)
	@Err("sftl:~insert")
	public Object insert_confirm(@Param @Validates({
			@Validate(value=Validators.REQUIRED, params="fields: [ 'name' ]", msgId=Validators.MSGID_REQUIRED),
			@Validate(value=Validators.VISIT)
			}) SampleTags data) {
		return super.insert_confirm(data);
	}

	/**
	 * insert_execute
	 */
	@At
	@Ok(View.SFTL)
	@Err("sftl:~insert")
	public Object insert_execute(@Param @Validates({
			@Validate(value=Validators.REQUIRED, params="fields: [ 'name' ]", msgId=Validators.MSGID_REQUIRED),
			@Validate(value=Validators.VISIT)
			}) SampleTags data) {
		return super.insert_execute(data);
	}

	/**
	 * update
	 */
	@At
	@Ok(View.SFTL)
	@Err(View.SFTL)
	public Object update(@Param SampleTags key) {
		return super.update(key);
	}

	/**
	 * update_input
	 */
	@At
	@Ok("sftl:~update")
	@Err("sftl:~update")
	public Object update_input(@Param SampleTags data) {
		return super.update_input(data);
	}

	/**
	 * update_confirm
	 */
	@At
	@Ok(View.SFTL)
	@Err("sftl:~update")
	public Object update_confirm(@Param @Validates({
			@Validate(value=Validators.REQUIRED, params="fields: [ 'name' ]", msgId=Validators.MSGID_REQUIRED),
			@Validate(value=Validators.VISIT)
			}) SampleTags data) {
		return super.update_confirm(data);
	}

	/**
	 * update_execute
	 */
	@At
	@Ok(View.SFTL)
	@Err("sftl:~update")
	public Object update_execute(@Param @Validates({
			@Validate(value=Validators.REQUIRED, params="fields: [ 'name' ]", msgId=Validators.MSGID_REQUIRED),
			@Validate(value=Validators.VISIT)
			}) SampleTags data) {
		return super.update_execute(data);
	}

	/**
	 * delete
	 */
	@At
	@Ok(View.SFTL)
	@Err(View.SFTL)
	public Object delete(@Param SampleTags key) {
		return super.delete(key);
	}

	/**
	 * delete_execute
	 */
	@At
	@Ok(View.SFTL)
	@Err("sftl:delete")
	public Object delete_execute(@Param SampleTags key) {
		return super.delete_execute(key);
	}

}

