package panda.demo.action.sampleunique;

import panda.demo.action.BaseEditAction;
import panda.demo.entity.SampleUnique;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.param.Param;
import panda.mvc.annotation.view.Err;
import panda.mvc.annotation.view.Ok;
import panda.mvc.bean.Queryer;
import panda.mvc.validation.annotation.Validate;

@At("/sampleunique")
public class SampleUniqueEditAction extends BaseEditAction<SampleUnique> {

	/**
	 * Constructor
	 */
	public SampleUniqueEditAction() {
		setType(SampleUnique.class);
	}


	/*----------------------------------------------------------------------*
	 * Actions
	 *----------------------------------------------------------------------*/
}

