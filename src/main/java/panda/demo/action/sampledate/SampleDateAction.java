package panda.demo.action.sampledate;

import java.util.List;

import panda.demo.action.AbstractEntityAction;
import panda.demo.entity.SampleDate;

public class SampleDateAction extends AbstractEntityAction<SampleDate> {
	/*----------------------------------------------------------------------*
	 * Properties
	 *----------------------------------------------------------------------*/
	protected Boolean resize;

	/**
	 * Constructor
	 */
	public SampleDateAction() {
	}

	/**
	 * @return the sampleDate
	 */
	public SampleDate getD() {
		return super.getData();
	}

	/**
	 * @param sampleDate the sampleDate to set
	 */
	public void setD(SampleDate sampleDate) {
		super.setData(sampleDate);
	}

	/**
	 * @return the sampleDate list
	 */
	public List<SampleDate> getDs() {
		return super.getDataList();
	}

	/**
	 * @param sampleDateList the sampleDateList to set
	 */
	public void setDs(List<SampleDate> sampleDateList) {
		super.setDataList(sampleDateList);
	}

	/**
	 * @return the resize
	 */
	public Boolean getResize() {
		return resize;
	}

	/**
	 * @param resize the resize to set
	 */
	public void setResize(Boolean resize) {
		this.resize = resize;
	}

	/**
	 * prepareDefaultData
	 * @param data data
	 * @return data
	 */
	protected SampleDate prepareDefaultData(SampleDate data) throws Exception {
		if (data == null) {
			data = new SampleDate();
		}
		return data;
	}
}