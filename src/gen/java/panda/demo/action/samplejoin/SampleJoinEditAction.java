package panda.demo.action.samplejoin;

import panda.demo.action.BaseEditAction;
import panda.demo.entity.SampleJoin;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.param.Param;
import panda.mvc.annotation.view.Err;
import panda.mvc.annotation.view.Ok;
import panda.mvc.bean.Queryer;
import panda.mvc.validation.annotation.Validate;

@At("/samplejoin")
public class SampleJoinEditAction extends BaseEditAction<SampleJoin> {

	/**
	 * Constructor
	 */
	public SampleJoinEditAction() {
		setType(SampleJoin.class);
	}


	/*----------------------------------------------------------------------*
	 * Actions
	 *----------------------------------------------------------------------*/
}

