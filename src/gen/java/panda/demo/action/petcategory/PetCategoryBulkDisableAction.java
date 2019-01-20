package panda.demo.action.petcategory;

import java.util.Map;
import panda.demo.action.WebBulkAction;
import panda.demo.entity.PetCategory;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.To;
import panda.mvc.annotation.param.Param;

public abstract class PetCategoryBulkDisableAction extends WebBulkAction<PetCategory> {

	/**
	 * Constructor
	 */
	public PetCategoryBulkDisableAction() {
		setType(PetCategory.class);
		addDisplayFields(PetCategory.ID, PetCategory.NAME, PetCategory.STATUS, PetCategory.UUSID, PetCategory.UTIME);
	}


	/*----------------------------------------------------------------------*
	 * Actions
	 *----------------------------------------------------------------------*/
	/**
	 * bdisable
	 * @param args arguments
	 * @return result or view
	 */
	@At
	@To(value=View.SFTL, error=View.SFTL)
	public Object bdisable(@Param Map<String, String[]> args) {
		return super.bupdate(args);
	}

	/**
	 * bdisable_execute
	 * @param args arguments
	 * @return result or view
	 */
	@At
	@To(value=View.SFTL, error="sftl:~bdisable")
	public Object bdisable_execute(@Param Map<String, String[]> args) {
		return super.bupdate_execute(args);
	}
	
}

