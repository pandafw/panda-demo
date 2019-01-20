package panda.demo.action.pet;

import panda.demo.action.WebImportAction;
import panda.demo.entity.Pet;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.To;
import panda.mvc.annotation.param.Param;

public abstract class PetImportAction extends WebImportAction<Pet> {

	/**
	 * Constructor
	 */
	public PetImportAction() {
		setType(Pet.class);
		addDisplayFields(Pet.ID, Pet.NAME, Pet.CID, "-icon", Pet.CNAME, Pet.GENDER, Pet.BIRTHDAY, Pet.ORIGIN, Pet.TEMPER, Pet.HABITS, Pet.AMOUNT, Pet.PRICE, Pet.SHOP_NAME, Pet.STATUS, Pet.UUSID, Pet.UTIME);
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

