package panda.demo.action.sampletags;

import java.util.List;

import panda.dao.query.GenericQuery;
import panda.demo.entity.SampleTags;
import panda.demo.entity.query.SampleTagsQuery;
import panda.mvc.annotation.At;
import panda.wing.constant.VC;

@At("/sampletags")
public class SampleTagsBulkDisableExAction extends SampleTagsBulkDisableAction {

	@Override
	protected SampleTags getBulkUpdateSample(List<SampleTags> dataList, GenericQuery<SampleTags> gq) {
		SampleTags d = new SampleTags();
		d.setStatus(VC.STATUS_DISABLED);

		SampleTagsQuery q = new SampleTagsQuery(gq);
		q.excludeAll().include(SampleTags.STATUS);

		return d;
	}

}
