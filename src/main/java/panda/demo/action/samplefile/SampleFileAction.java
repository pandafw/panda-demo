package panda.demo.action.samplefile;

import java.util.List;

import panda.dao.criteria.Query;
import panda.demo.action.AbstractModelDrivenAction;
import panda.demo.entity.SampleFile;

public class SampleFileAction extends AbstractModelDrivenAction<SampleFile> {
	/**
	 * Constructor
	 */
	public SampleFileAction() {
	}

	/**
	 * @return the sampleFile
	 */
	public SampleFile getD() {
		return super.getData();
	}

	/**
	 * @param sampleFile the sampleFile to set
	 */
	public void setD(SampleFile sampleFile) {
		super.setData(sampleFile);
	}

	/**
	 * @return the sampleFile list
	 */
	public List<SampleFile> getDs() {
		return super.getDataList();
	}

	/**
	 * @param sampleFileList the sampleFileList to set
	 */
	public void setDs(List<SampleFile> sampleFileList) {
		super.setDataList(sampleFileList);
	}

	/**
	 * prepareDefaultData
	 * @param data data
	 * @return data
	 */
	protected SampleFile prepareDefaultData(SampleFile data) throws Exception {
		if (data == null) {
			data = new SampleFile();
		}
		return data;
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