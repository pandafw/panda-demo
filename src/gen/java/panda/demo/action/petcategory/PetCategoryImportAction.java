package panda.demo.action.petcategory;

import panda.demo.action.WebImportAction;
import panda.demo.entity.PetCategory;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.To;
import panda.mvc.annotation.param.Param;

@At("/petcategory")
public class PetCategoryImportAction extends WebImportAction<PetCategory> {

	/**
	 * Constructor
	 */
	public PetCategoryImportAction() {
		setType(PetCategory.class);
		addDisplayFields(PetCategory.ID, PetCategory.NAME, PetCategory.STATUS, PetCategory.UUSID, PetCategory.UTIME);
	}


	/*----------------------------------------------------------------------*
	 * Actions
	 *----------------------------------------------------------------------*/
	/**
	 * importx
	 * @param arg argument
	 * @return result or view
	 */
	@At("import")
	@To(value=View.SFTL, error=View.SFTL)
	public Object importx(@Param Arg arg) {
		return super.importx(arg);
	}
	
}

