package panda.demo.action.entity.pet;

import java.util.ArrayList;
import java.util.List;

import panda.demo.entity.Pet;
import panda.demo.entity.query.PetImageQuery;
import panda.lang.mutable.MutableInt;
import panda.mvc.annotation.At;

@At("/pet")
public class PetBulkDeleteExAction extends PetBulkDeleteAction {
	/**
	 * Constructor
	 */
	public PetBulkDeleteExAction() {
	}

	@Override
	protected void deleteDataList(List<Pet> dataList, MutableInt count) {
		List<Long> ids = new ArrayList<Long>(dataList.size());
		for (Pet f : dataList) {
			ids.add(f.getId());
		}

		PetImageQuery piq = new PetImageQuery();
		piq.pid().in(ids);
		getDao().deletes(piq);

		super.deleteDataList(dataList, count);
	}
}