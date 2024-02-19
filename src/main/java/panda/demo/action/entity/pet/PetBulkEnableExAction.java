package panda.demo.action.entity.pet;

import java.util.List;

import panda.app.constant.VAL;
import panda.dao.query.DataQuery;
import panda.demo.entity.Pet;
import panda.demo.entity.query.PetQuery;
import panda.mvc.annotation.At;

@At("/pet")
public class PetBulkEnableExAction extends PetBulkEnableAction {
	@Override
	protected Pet getBulkUpdateSample(List<Pet> dataList, DataQuery<Pet> gq) {
		Pet d = new Pet();
		d.setStatus(VAL.STATUS_ACTIVE);

		PetQuery q = new PetQuery(gq);
		q.excludeAll().include(Pet.STATUS);

		return d;
	}

}
