package panda.demo.action.entity.petcategory;

import java.util.Map;
import panda.demo.action.WebBulkAction;
import panda.demo.entity.PetCategory;
import panda.mvc.annotation.At;
import panda.mvc.annotation.To;
import panda.mvc.annotation.param.Param;
import panda.mvc.view.Views;

@At("/petcategory")
public class PetCategoryBulkDeleteAction extends WebBulkAction<PetCategory> {

	/**
	 * Constructor
	 */
	public PetCategoryBulkDeleteAction() {
		setType(PetCategory.class);
		addDisplayFields(PetCategory.ID, PetCategory.NAME, PetCategory.STATUS, PetCategory.UPDATED_AT, PetCategory.UPDATED_BY, PetCategory.UPDATED_BY_USER);
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
	@To(value=Views.SFTL, error=Views.SFTL)
	public Object bdelete(@Param Map<String, String[]> args) {
		return super.bdelete(args);
	}

	/**
	 * bdelete_execute
	 * @param args arguments
	 * @return result or view
	 */
	@At
	@To(value=Views.SFTL, error="sftl:~bdelete")
	public Object bdelete_execute(@Param Map<String, String[]> args) {
		return super.bdelete_execute(args);
	}
	
}
