package panda.demo.action.pet;

import panda.dao.query.DataQuery;
import panda.demo.action.WebEditAction;
import panda.demo.entity.Pet;
import panda.demo.entity.query.PetQuery;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.To;
import panda.mvc.annotation.Validate;
import panda.mvc.annotation.Validates;
import panda.mvc.annotation.param.Param;
import panda.mvc.validator.Validators;

public abstract class PetEditAction extends WebEditAction<Pet> {

	/**
	 * Constructor
	 */
	public PetEditAction() {
		setType(Pet.class);
		addDisplayFields(Pet.ID, Pet.NAME, Pet.CID, Pet.CNAME, Pet.BIRTHDAY, Pet.ORIGIN, Pet.TEMPER, Pet.HABITS, Pet.AMOUNT, Pet.PRICE, Pet.SHOP_NAME, Pet.SHOP_ADDRESS, Pet.SHOP_TELEPHONE, Pet.SHOP_CLOSE_TIME, Pet.SHOP_LINK, Pet.DESCRIPTION, Pet.STATUS, Pet.UUSID, Pet.UUSNM, Pet.UTIME);
	}


	/*----------------------------------------------------------------------*
	 * Joins
	 *----------------------------------------------------------------------*/
	/**
	 * add query joins
	 * @param dq data query
	 */
	@Override
	protected void addQueryJoins(DataQuery<Pet> dq) {
		super.addQueryJoins(dq);

		PetQuery eq = new PetQuery(dq);
		eq.autoLeftJoinCN();
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
	public Object view(@Param Pet key) {
		return super.view(key);
	}

	/**
	 * view_input
	 * @param data the input data
	 * @return result or view
	 */
	@At
	@To(value="sftl:~view", error="sftl:~view")
	public Object view_input(@Param Pet data) {
		return super.view_input(data);
	}

	/**
	 * print
	 * @param key the input key
	 * @return result or view
	 */
	@At
	@To(value=View.SFTL, error=View.SFTL)
	public Object print(@Param Pet key) {
		return super.print(key);
	}

	/**
	 * print_input
	 * @param data the input data
	 * @return result or view
	 */
	@At
	@To(value="sftl:~print", error="sftl:~print")
	public Object print_input(@Param Pet data) {
		return super.print_input(data);
	}

	/**
	 * copy
	 * @param key the input key
	 * @return result or view
	 */
	@At
	@To(value=View.SFTL, error=View.SFTL)
	public Object copy(@Param Pet key) {
		return super.copy(key);
	}

	/**
	 * copy_input
	 * @param data the input data
	 * @return result or view
	 */
	@At
	@To(value="sftl:~copy", error="sftl:~copy")
	public Object copy_input(@Param Pet data) {
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
			@Validate(value=Validators.REQUIRED, params="{ refers: { 'name': '', 'cid': 'cname', 'amount': '' } }", msgId=Validators.MSGID_REQUIRED),
			@Validate(value=Validators.VISIT)
			}) Pet data) {
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
			@Validate(value=Validators.REQUIRED, params="{ refers: { 'name': '', 'cid': 'cname', 'amount': '' } }", msgId=Validators.MSGID_REQUIRED),
			@Validate(value=Validators.VISIT)
			}) Pet data) {
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
	public Object add_input(@Param Pet data) {
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
			@Validate(value=Validators.REQUIRED, params="{ refers: { 'name': '', 'cid': 'cname', 'amount': '' } }", msgId=Validators.MSGID_REQUIRED),
			@Validate(value=Validators.VISIT)
			}) Pet data) {
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
			@Validate(value=Validators.REQUIRED, params="{ refers: { 'name': '', 'cid': 'cname', 'amount': '' } }", msgId=Validators.MSGID_REQUIRED),
			@Validate(value=Validators.VISIT)
			}) Pet data) {
		return super.add_execute(data);
	}

	/**
	 * edit
	 * @param key the input key
	 * @return result or view
	 */
	@At
	@To(value=View.SFTL, error=View.SFTL)
	public Object edit(@Param Pet key) {
		return super.edit(key);
	}

	/**
	 * edit_input
	 * @param data the input data
	 * @return result or view
	 */
	@At
	@To(value="sftl:~edit", error="sftl:~edit")
	public Object edit_input(@Param Pet data) {
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
			@Validate(value=Validators.REQUIRED, params="{ refers: { 'name': '', 'cid': 'cname', 'amount': '' } }", msgId=Validators.MSGID_REQUIRED),
			@Validate(value=Validators.VISIT)
			}) Pet data) {
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
			@Validate(value=Validators.REQUIRED, params="{ refers: { 'name': '', 'cid': 'cname', 'amount': '' } }", msgId=Validators.MSGID_REQUIRED),
			@Validate(value=Validators.VISIT)
			}) Pet data) {
		return super.edit_execute(data);
	}

	/**
	 * delete
	 * @param key the input key
	 * @return result or view
	 */
	@At
	@To(value=View.SFTL, error=View.SFTL)
	public Object delete(@Param Pet key) {
		return super.delete(key);
	}

	/**
	 * delete_execute
	 * @param key the input key
	 * @return result or view
	 */
	@At
	@To(value=View.SFTL, error="sftl:~delete")
	public Object delete_execute(@Param Pet key) {
		return super.delete_execute(key);
	}

}

