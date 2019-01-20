package panda.demo.action.petimage;

import panda.dao.query.DataQuery;
import panda.demo.action.WebEditAction;
import panda.demo.entity.PetImage;
import panda.demo.entity.query.PetImageQuery;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.To;
import panda.mvc.annotation.Validate;
import panda.mvc.annotation.Validates;
import panda.mvc.annotation.param.Param;
import panda.mvc.validator.Validators;
import panda.vfs.FileItem;

public abstract class PetImageEditAction extends WebEditAction<PetImage> {
	/*----------------------------------------------------------------------*
	 * Properties
	 *----------------------------------------------------------------------*/
	protected FileItem file;

	/**
	 * Constructor
	 */
	public PetImageEditAction() {
		setType(PetImage.class);
		addDisplayFields(PetImage.ID, PetImage.PID, PetImage.PNAME, PetImage.IMAGE_NAME, PetImage.IMAGE_SIZE, PetImage.IMAGE_ITEM, PetImage.UUSID, PetImage.UUSNM, PetImage.UTIME);
	}

	/**
	 * @return the file
	 */
	public FileItem getFile() {
		return file;
	}

	/**
	 * @param file the file to set
	 */
	public void setFile(FileItem file) {
		this.file = file;
	}


	/*----------------------------------------------------------------------*
	 * Joins
	 *----------------------------------------------------------------------*/
	/**
	 * add query joins
	 * @param dq data query
	 */
	@Override
	protected void addQueryJoins(DataQuery<PetImage> dq) {
		super.addQueryJoins(dq);

		PetImageQuery eq = new PetImageQuery(dq);
		eq.autoLeftJoinPN();
	}

	/*----------------------------------------------------------------------*
	 * Actions
	 *----------------------------------------------------------------------*/
	/**
	 * view
	 * @param key the input key
	 * @return result or view
	 */
	@At
	@To(value=View.SFTL, error=View.SFTL)
	public Object view(@Param PetImage key) {
		return super.view(key);
	}

	/**
	 * view_input
	 * @param data the input data
	 * @return result or view
	 */
	@At
	@To(value="sftl:~view", error="sftl:~view")
	public Object view_input(@Param PetImage data) {
		return super.view_input(data);
	}

	/**
	 * print
	 * @param key the input key
	 * @return result or view
	 */
	@At
	@To(value=View.SFTL, error=View.SFTL)
	public Object print(@Param PetImage key) {
		return super.print(key);
	}

	/**
	 * print_input
	 * @param data the input data
	 * @return result or view
	 */
	@At
	@To(value="sftl:~print", error="sftl:~print")
	public Object print_input(@Param PetImage data) {
		return super.print_input(data);
	}

	/**
	 * copy
	 * @param key the input key
	 * @return result or view
	 */
	@At
	@To(value=View.SFTL, error=View.SFTL)
	public Object copy(@Param PetImage key) {
		return super.copy(key);
	}

	/**
	 * copy_input
	 * @param data the input data
	 * @return result or view
	 */
	@At
	@To(value="sftl:~copy", error="sftl:~copy")
	public Object copy_input(@Param PetImage data) {
		return super.copy_input(data);
	}

	/**
	 * copy_confirm
	 * @param data the input data
	 * @return result or view
	 */
	@At
	@To(value=View.SFTL, error="sftl:~copy")
	public Object copy_confirm(@Param @Validates({
			@Validate(value=Validators.REQUIRED, params="{ refers: { 'pid': 'pname', 'imageItem': '' } }", msgId=Validators.MSGID_REQUIRED),
			@Validate(value=Validators.VISIT)
			}) PetImage data) {
		return super.copy_confirm(data);
	}

	/**
	 * copy_execute
	 * @param data the input data
	 * @return result or view
	 */
	@At
	@To(value=View.SFTL, error="sftl:~copy")
	public Object copy_execute(@Param @Validates({
			@Validate(value=Validators.REQUIRED, params="{ refers: { 'pid': 'pname', 'imageItem': '' } }", msgId=Validators.MSGID_REQUIRED),
			@Validate(value=Validators.VISIT)
			}) PetImage data) {
		return super.copy_execute(data);
	}

	/**
	 * add
	 * @return result or view
	 */
	@At
	@To(value=View.SFTL, error=View.SFTL)
	public Object add() {
		return super.add();
	}

	/**
	 * add_input
	 * @param data the input data
	 * @return result or view
	 */
	@At
	@To(value="sftl:~add", error="sftl:~add")
	public Object add_input(@Param PetImage data) {
		return super.add_input(data);
	}

	/**
	 * add_confirm
	 * @param data the input data
	 * @return result or view
	 */
	@At
	@To(value=View.SFTL, error="sftl:~add")
	public Object add_confirm(@Param @Validates({
			@Validate(value=Validators.REQUIRED, params="{ refers: { 'pid': 'pname', 'imageItem': '' } }", msgId=Validators.MSGID_REQUIRED),
			@Validate(value=Validators.VISIT)
			}) PetImage data) {
		return super.add_confirm(data);
	}

	/**
	 * add_execute
	 * @param data the input data
	 * @return result or view
	 */
	@At
	@To(value=View.SFTL, error="sftl:~add")
	public Object add_execute(@Param @Validates({
			@Validate(value=Validators.REQUIRED, params="{ refers: { 'pid': 'pname', 'imageItem': '' } }", msgId=Validators.MSGID_REQUIRED),
			@Validate(value=Validators.VISIT)
			}) PetImage data) {
		return super.add_execute(data);
	}

	/**
	 * edit
	 * @param key the input key
	 * @return result or view
	 */
	@At
	@To(value=View.SFTL, error=View.SFTL)
	public Object edit(@Param PetImage key) {
		return super.edit(key);
	}

	/**
	 * edit_input
	 * @param data the input data
	 * @return result or view
	 */
	@At
	@To(value="sftl:~edit", error="sftl:~edit")
	public Object edit_input(@Param PetImage data) {
		return super.edit_input(data);
	}

	/**
	 * edit_confirm
	 * @param data the input data
	 * @return result or view
	 */
	@At
	@To(value=View.SFTL, error="sftl:~edit")
	public Object edit_confirm(@Param @Validates({
			@Validate(value=Validators.REQUIRED, params="{ refers: { 'pid': 'pname' } }", msgId=Validators.MSGID_REQUIRED),
			@Validate(value=Validators.VISIT)
			}) PetImage data) {
		return super.edit_confirm(data);
	}

	/**
	 * edit_execute
	 * @param data the input data
	 * @return result or view
	 */
	@At
	@To(value=View.SFTL, error="sftl:~edit")
	public Object edit_execute(@Param @Validates({
			@Validate(value=Validators.REQUIRED, params="{ refers: { 'pid': 'pname' } }", msgId=Validators.MSGID_REQUIRED),
			@Validate(value=Validators.VISIT)
			}) PetImage data) {
		return super.edit_execute(data);
	}

	/**
	 * delete
	 * @param key the input key
	 * @return result or view
	 */
	@At
	@To(value=View.SFTL, error=View.SFTL)
	public Object delete(@Param PetImage key) {
		return super.delete(key);
	}

	/**
	 * delete_execute
	 * @param key the input key
	 * @return result or view
	 */
	@At
	@To(value=View.SFTL, error="sftl:~delete")
	public Object delete_execute(@Param PetImage key) {
		return super.delete_execute(key);
	}

}

