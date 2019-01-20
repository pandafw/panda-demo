package panda.demo.action.pet;

import panda.demo.entity.Pet;
import panda.demo.entity.query.PetImageQuery;
import panda.mvc.annotation.At;

@At("/pet")
public class PetEditExAction extends PetEditAction {

	/**
	 * startDelete
	 * @param data data
	 */
	@Override
	protected void startDelete(Pet data) {
		super.startDelete(data);

		PetImageQuery piq = new PetImageQuery();
		piq.pid().equalTo(data.getId());
		getDao().deletes(piq);
	}
}
