package panda.demo.action.sampletags;

import java.util.Map;
import panda.demo.action.BaseBulkAction;
import panda.demo.entity.SampleTags;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.param.Param;
import panda.mvc.annotation.view.Err;
import panda.mvc.annotation.view.Ok;

public abstract class SampleTagsBulkDisableAction extends BaseBulkAction<SampleTags> {

	/**
	 * Constructor
	 */
	public SampleTagsBulkDisableAction() {
		setType(SampleTags.class);
	}


	/*----------------------------------------------------------------------*
	 * Actions
	 *----------------------------------------------------------------------*/
	/**
	 * bdisable
	 */
	@At
	@Ok(View.SFTL)
	@Err(View.SFTL)
	public Object bdisable(@Param Map<String, String[]> args) {
		return super.bupdate(args);
	}

	/**
	 * bdisable_execute
	 */
	@At
	@Ok(View.SFTL)
	@Err("sftl:~bdisable")
	public Object bdisable_execute(@Param Map<String, String[]> args) {
		return super.bupdate_execute(args);
	}
	
}

