package panda.demo.action.sampletags;

import java.util.List;

import panda.demo.action.AbstractModelDrivenAction;
import panda.demo.entity.SampleTags;

public class SampleTagsAction extends AbstractModelDrivenAction<SampleTags> {
	/**
	 * Constructor
	 */
	public SampleTagsAction() {
	}

	/**
	 * @return the sampleTags
	 */
	public SampleTags getD() {
		return super.getData();
	}

	/**
	 * @param sampleTags the sampleTags to set
	 */
	public void setD(SampleTags sampleTags) {
		super.setData(sampleTags);
	}

	/**
	 * @return the sampleTags list
	 */
	public List<SampleTags> getDs() {
		return super.getDataList();
	}

	/**
	 * @param sampleTagsList the sampleTagsList to set
	 */
	public void setDs(List<SampleTags> sampleTagsList) {
		super.setDataList(sampleTagsList);
	}

	/**
	 * prepareDefaultData
	 * @param data data
	 * @return data
	 */
	protected SampleTags prepareDefaultData(SampleTags data) throws Exception {
		if (data == null) {
			data = new SampleTags();
		}
		return data;
	}
}
