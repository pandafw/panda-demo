package panda.demo.action.sampletags;

import panda.demo.action.BaseEditAction;
import panda.demo.entity.SampleTags;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.param.Param;
import panda.mvc.annotation.view.Err;
import panda.mvc.annotation.view.Ok;
import panda.mvc.bean.Queryer;
import panda.mvc.validation.annotation.Validate;

@At("/sampletags")
public class SampleTagsEditAction extends BaseEditAction<SampleTags> {

	/**
	 * Constructor
	 */
	public SampleTagsEditAction() {
		setType(SampleTags.class);
	}


	/*----------------------------------------------------------------------*
	 * Actions
	 *----------------------------------------------------------------------*/
}

