package panda.demo.action.sampledate;

import panda.demo.action.BaseEditAction;
import panda.demo.entity.SampleDate;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.param.Param;
import panda.mvc.annotation.view.Err;
import panda.mvc.annotation.view.Ok;
import panda.mvc.bean.Queryer;
import panda.mvc.validation.annotation.Validate;

@At("/sampledate")
public class SampleDateEditAction extends BaseEditAction<SampleDate> {
	/*----------------------------------------------------------------------*
	 * Properties
	 *----------------------------------------------------------------------*/
	protected Boolean resize;

	/**
	 * Constructor
	 */
	public SampleDateEditAction() {
		setType(SampleDate.class);
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


	/*----------------------------------------------------------------------*
	 * Actions
	 *----------------------------------------------------------------------*/
}

