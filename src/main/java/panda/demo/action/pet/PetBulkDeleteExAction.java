package panda.demo.action.pet;

import java.util.ArrayList;
import java.util.List;

import panda.demo.entity.Pet;
import panda.demo.entity.query.PetImageQuery;
import panda.mvc.annotation.At;

@At("/pet")
public class PetBulkDeleteExAction extends PetBulkDeleteAction {
	/**
	 * Constructor
	 */
	public PetBulkDeleteExAction() {
	}

	/**
	 * startBulkDelete
	 * @param dataList dataList
	 */
	@Override
	protected void startBulkDelete(List<Pet> dataList) {
		super.startBulkDelete(dataList);
		
		List<Long> ids = new ArrayList<Long>(dataList.size());
		for (Pet f : dataList) {
			ids.add(f.getId());
		}

		PetImageQuery piq = new PetImageQuery();
		piq.pid().in(ids);
		getDao().deletes(piq);
	}
}
