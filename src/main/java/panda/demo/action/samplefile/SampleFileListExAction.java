package panda.demo.action.samplefile;

import java.util.List;

import panda.dao.query.GenericQuery;
import panda.demo.entity.SampleFile;
import panda.demo.entity.query.SampleFileQuery;
import panda.mvc.annotation.At;

@At("/samplefile")
public class SampleFileListExAction extends SampleFileListAction {
	/**
	 * Constructor
	 */
	public SampleFileListExAction() {
	}

//	@Override
//	protected SampleFile daoFetch(SampleFile key) {
//		SampleFileQuery sfq = new SampleFileQuery();
//		sfq.id().equalTo(key.getId()).fileField().exclude().imageField().exclude();
//		return getEntityDao().fetch(sfq);
//	}

	@Override
	protected List<SampleFile> daoSelect(GenericQuery<SampleFile> q) {
		SampleFileQuery sfq = new SampleFileQuery(q);
		sfq.fileField().exclude().imageField().exclude();
		return getDao().select(sfq);
	}
}

