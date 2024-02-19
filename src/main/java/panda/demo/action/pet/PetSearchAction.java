package panda.demo.action.pet;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import panda.app.action.BaseAction;
import panda.app.bean.IndexArg;
import panda.dao.Dao;
import panda.demo.entity.Pet;
import panda.demo.entity.query.PetQuery;
import panda.lang.Strings;
import panda.lang.time.DateTimes;
import panda.mvc.annotation.At;
import panda.mvc.annotation.To;
import panda.mvc.annotation.param.Param;
import panda.mvc.annotation.param.PathArg;
import panda.mvc.view.Views;
import panda.net.URLBuilder;
import panda.net.URLHelper;


@At
@To(Views.SFTL)
public class PetSearchAction extends BaseAction {
	public static class Arg extends IndexArg {
		public Date ds;
		public Date de;
	}
	
	@At("/petquery")
	@To(Views.REDIRECT)
	public String query(@Param Arg arg) throws Exception {
		URLBuilder ub = new URLBuilder();
		
		String url = "/petsearch/";
		if (Strings.isNotEmpty(arg.getKey())) {
			url += URLHelper.encodeURL(arg.getKey());
		}
		ub.setPath(url);

		Map<String, String> ps = new HashMap<String, String>();
		if (arg.ds != null) {
			ps.put("ds", DateTimes.isoDateFormat().format(arg.ds));
		}
		if (arg.de != null) {
			ps.put("de", DateTimes.isoDateFormat().format(arg.de));
		}
		ub.setParams(ps);
		
		return ub.build();
	}

	@At("/petsearch/(.*)$")
	public Object search(@PathArg String key, @Param Arg arg) throws Exception {
		key = Strings.stripToEmpty(key);
		if (Strings.isEmpty(key)) {
			return null;
		}

		arg.setKey(key);
		assist().loadLimitParams(arg.getPager());

		final Dao dao = getDaoClient().getDao();
		
		PetQuery pq = new PetQuery();
		
		pq.name().contains(key).start(arg.getPager().getStart()).limit(arg.getPager().getLimit());

		if (arg.ds != null) {
			pq.birthday().gt(arg.ds);
		}
		if (arg.de != null) {
			Date de = DateTimes.addDays(arg.de, 1);
			pq.birthday().lt(de);
		}
		pq.orderByAsc(Pet.BIRTHDAY);

		long total = dao.count(pq);

		List<Pet> pets = null;

		arg.getPager().setTotal(total);
		arg.getPager().normalize();
		if (arg.getPager().getTotal() > 0) {
			pets = dao.select(pq);
		}
		
		assist().saveLimitParams(arg.getPager());

		return pets;
	}
}
