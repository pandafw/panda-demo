package panda.demo.action.pet;

import java.util.Map;
import panda.dao.query.DataQuery;
import panda.demo.action.WebBulkAction;
import panda.demo.entity.Pet;
import panda.demo.entity.query.PetQuery;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.To;
import panda.mvc.annotation.param.Param;

public abstract class PetBulkEnableAction extends WebBulkAction<Pet> {

	/**
	 * Constructor
	 */
	public PetBulkEnableAction() {
		setType(Pet.class);
		addDisplayFields(Pet.ID, Pet.NAME, Pet.CID, "-icon", Pet.CNAME, Pet.GENDER, Pet.BIRTHDAY, Pet.ORIGIN, Pet.TEMPER, Pet.HABITS, Pet.AMOUNT, Pet.PRICE, Pet.SHOP_NAME, Pet.STATUS, Pet.UUSID, Pet.UTIME);
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
	 * benable
	 * @param args arguments
	 * @return result or view
	 */
	@At
	@To(value=View.SFTL, error=View.SFTL)
	public Object benable(@Param Map<String, String[]> args) {
		return super.bupdate(args);
	}

	/**
	 * benable_execute
	 * @param args arguments
	 * @return result or view
	 */
	@At
	@To(value=View.SFTL, error="sftl:~benable")
	public Object benable_execute(@Param Map<String, String[]> args) {
		return super.bupdate_execute(args);
	}
	
}

