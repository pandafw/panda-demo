package panda.demo.action.samplefile;

import java.util.List;

import panda.dao.criteria.Query;
import panda.demo.entity.SampleFile;

public class SampleFileExAction extends SampleFileAction {
	/**
	 * Constructor
	 */
	public SampleFileExAction() {
	}

	@Override
	protected SampleFile daoFetch(SampleFile key) {
		Query q = new Query();
		q.equalTo("id", key.getId()).exclude("fileField").exclude("imageField");
		return getEntityDao().fetch(q);
	}

	@Override
	protected List<SampleFile> daoSelect(Query q) {
		q.exclude("fileField").exclude("imageField");
		return super.daoSelect(q);
	}
}

