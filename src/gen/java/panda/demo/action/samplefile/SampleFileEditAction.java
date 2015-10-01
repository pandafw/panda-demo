package panda.demo.action.samplefile;

import panda.demo.action.BaseEditAction;
import panda.demo.entity.SampleFile;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.param.Param;
import panda.mvc.annotation.view.Err;
import panda.mvc.annotation.view.Ok;
import panda.mvc.bean.Queryer;
import panda.mvc.validation.annotation.Validates;

@At("/samplefile")
public class SampleFileEditAction extends BaseEditAction<SampleFile> {

	/**
	 * Constructor
	 */
	public SampleFileEditAction() {
		setType(SampleFile.class);
	}


	/*----------------------------------------------------------------------*
	 * Actions
	 *----------------------------------------------------------------------*/
}

