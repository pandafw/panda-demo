package panda.demo.action.samplejoin;

import java.util.List;

import panda.demo.action.AbstractBeanDaoAction;
import panda.demo.entity.SampleJoin;

public class SampleJoinAction extends AbstractBeanDaoAction<SampleJoin> {
	/**
	 * Constructor
	 */
	public SampleJoinAction() {
		setType(SampleJoin.class);
	}

	/**
	 * @return the sampleJoin
	 */
	public SampleJoin getD() {
		return super.getData();
	}

	/**
	 * @param sampleJoin the sampleJoin to set
	 */
	public void setD(SampleJoin sampleJoin) {
		super.setData(sampleJoin);
	}

	/**
	 * @return the sampleJoin list
	 */
	public List<SampleJoin> getDs() {
		return super.getDataList();
	}

	/**
	 * @param sampleJoinList the sampleJoinList to set
	 */
	public void setDs(List<SampleJoin> sampleJoinList) {
		super.setDataList(sampleJoinList);
	}

	/**
	 * prepareDefaultData
	 * @param data data
	 * @return data
	 */
	protected SampleJoin prepareDefaultData(SampleJoin data) throws Exception {
		if (data == null) {
			data = new SampleJoin();
		}
		return data;
	}
}