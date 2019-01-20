package panda.demo.action.petcategory;

import panda.demo.action.WebListAction;
import panda.demo.entity.PetCategory;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.To;
import panda.mvc.annotation.Validates;
import panda.mvc.annotation.param.Param;
import panda.mvc.bean.Queryer;

@At("/petcategory")
public class PetCategoryPopupAction extends WebListAction<PetCategory> {

	/**
	 * Constructor
	 */
	public PetCategoryPopupAction() {
		setType(PetCategory.class);
		addDisplayFields(PetCategory.ID, PetCategory.NAME, PetCategory.STATUS);
	}


	/*----------------------------------------------------------------------*
	 * Actions
	 *----------------------------------------------------------------------*/
	/**
	 * list_popup
	 * @param qr queryer
	 * @return result or view
	 */
	@At
	@To(value=View.SFTL, error=View.SFTL)
	public Object list_popup(@Param @Validates Queryer qr) {
		return super.list_popup(qr);
	}
	
}

