package panda.demo.action.petcategory;

import java.util.Map;
import panda.demo.action.WebBulkAction;
import panda.demo.entity.PetCategory;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.To;
import panda.mvc.annotation.param.Param;

@At("/petcategory")
public class PetCategoryBulkDeleteAction extends WebBulkAction<PetCategory> {

	/**
	 * Constructor
	 */
	public PetCategoryBulkDeleteAction() {
		setType(PetCategory.class);
		addDisplayFields(PetCategory.ID, PetCategory.NAME, PetCategory.STATUS, PetCategory.UUSID, PetCategory.UTIME);
	}


	/*----------------------------------------------------------------------*
	 * Actions
	 *----------------------------------------------------------------------*/
	/**
	 * bdelete
	 * @param args arguments
	 * @return result or view
	 */
	@At
	@To(value=View.SFTL, error=View.SFTL)
	public Object bdelete(@Param Map<String, String[]> args) {
		return super.bdelete(args);
	}

	/**
	 * bdelete_execute
	 * @param args arguments
	 * @return result or view
	 */
	@At
	@To(value=View.SFTL, error="sftl:~bdelete")
	public Object bdelete_execute(@Param Map<String, String[]> args) {
		return super.bdelete_execute(args);
	}
	
}

