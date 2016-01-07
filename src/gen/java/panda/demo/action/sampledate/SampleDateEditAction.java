package panda.demo.action.sampledate;

import panda.demo.action.BaseEditAction;
import panda.demo.entity.SampleDate;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.param.Param;
import panda.mvc.annotation.view.Err;
import panda.mvc.annotation.view.Ok;
import panda.mvc.validation.annotation.Validates;

@At("/sampledate")
public class SampleDateEditAction extends BaseEditAction<SampleDate> {
	/*----------------------------------------------------------------------*
	 * Properties
	 *----------------------------------------------------------------------*/
	protected Boolean resize;

	/**
	 * Constructor
	 */
	public SampleDateEditAction() {
		setType(SampleDate.class);
	}

	/**
	 * @return the resize
	 */
	public Boolean getResize() {
		return resize;
	}

	/**
	 * @param resize the resize to set
	 */
	public void setResize(Boolean resize) {
		this.resize = resize;
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
	public Object view(@Param SampleDate key) {
		return super.view(key);
	}

	/**
	 * view_input
	 */
	@At
	@Ok("sftl:~view")
	@Err("sftl:~view")
	public Object view_input(@Param SampleDate data) {
		return super.view_input(data);
	}

	/**
	 * print
	 */
	@At
	@Ok(View.SFTL)
	@Err(View.SFTL)
	public Object print(@Param SampleDate key) {
		return super.print(key);
	}

	/**
	 * print_input
	 */
	@At
	@Ok("sftl:~print")
	@Err("sftl:~print")
	public Object print_input(@Param SampleDate data) {
		return super.print_input(data);
	}

	/**
	 * copy
	 */
	@At
	@Ok(View.SFTL)
	@Err(View.SFTL)
	public Object copy(@Param SampleDate key) {
		return super.copy(key);
	}

	/**
	 * copy_input
	 */
	@At
	@Ok("sftl:~copy")
	@Err("sftl:~copy")
	public Object copy_input(@Param SampleDate data) {
		return super.copy_input(data);
	}

	/**
	 * copy_confirm
	 */
	@At
	@Ok(View.SFTL)
	@Err("sftl:~copy")
	public Object copy_confirm(@Param @Validates SampleDate data) {
		return super.copy_confirm(data);
	}

	/**
	 * copy_execute
	 */
	@At
	@Ok(View.SFTL)
	@Err("sftl:~copy")
	public Object copy_execute(@Param @Validates SampleDate data) {
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
	public Object insert_input(@Param SampleDate data) {
		return super.insert_input(data);
	}

	/**
	 * insert_confirm
	 */
	@At
	@Ok(View.SFTL)
	@Err("sftl:~insert")
	public Object insert_confirm(@Param @Validates SampleDate data) {
		return super.insert_confirm(data);
	}

	/**
	 * insert_execute
	 */
	@At
	@Ok(View.SFTL)
	@Err("sftl:~insert")
	public Object insert_execute(@Param @Validates SampleDate data) {
		return super.insert_execute(data);
	}

	/**
	 * update
	 */
	@At
	@Ok(View.SFTL)
	@Err(View.SFTL)
	public Object update(@Param SampleDate key) {
		return super.update(key);
	}

	/**
	 * update_input
	 */
	@At
	@Ok("sftl:~update")
	@Err("sftl:~update")
	public Object update_input(@Param SampleDate data) {
		return super.update_input(data);
	}

	/**
	 * update_confirm
	 */
	@At
	@Ok(View.SFTL)
	@Err("sftl:~update")
	public Object update_confirm(@Param @Validates SampleDate data) {
		return super.update_confirm(data);
	}

	/**
	 * update_execute
	 */
	@At
	@Ok(View.SFTL)
	@Err("sftl:~update")
	public Object update_execute(@Param @Validates SampleDate data) {
		return super.update_execute(data);
	}

	/**
	 * delete
	 */
	@At
	@Ok(View.SFTL)
	@Err(View.SFTL)
	public Object delete(@Param SampleDate key) {
		return super.delete(key);
	}

	/**
	 * delete_execute
	 */
	@At
	@Ok(View.SFTL)
	@Err("sftl:delete")
	public Object delete_execute(@Param SampleDate key) {
		return super.delete_execute(key);
	}

}

