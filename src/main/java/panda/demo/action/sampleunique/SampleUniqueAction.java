package panda.demo.action.sampleunique;

import java.util.List;

import panda.demo.action.AbstractEntityAction;
import panda.demo.entity.SampleUnique;

public class SampleUniqueAction extends AbstractEntityAction<SampleUnique> {
	/**
	 * Constructor
	 */
	public SampleUniqueAction() {
	}

	/**
	 * @return the sampleUnique
	 */
	public SampleUnique getD() {
		return super.getData();
	}

	/**
	 * @param sampleUnique the sampleUnique to set
	 */
	public void setD(SampleUnique sampleUnique) {
		super.setData(sampleUnique);
	}

	/**
	 * @return the sampleUnique list
	 */
	public List<SampleUnique> getDs() {
		return super.getDataList();
	}

	/**
	 * @param sampleUniqueList the sampleUniqueList to set
	 */
	public void setDs(List<SampleUnique> sampleUniqueList) {
		super.setDataList(sampleUniqueList);
	}

	/**
	 * prepareDefaultData
	 * @param data data
	 * @return data
	 */
	protected SampleUnique prepareDefaultData(SampleUnique data) throws Exception {
		if (data == null) {
			data = new SampleUnique();
		}
		return data;
	}
}