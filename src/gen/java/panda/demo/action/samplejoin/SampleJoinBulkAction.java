package panda.demo.action.samplejoin;

import java.util.Map;
import panda.demo.action.BaseBulkAction;
import panda.demo.entity.SampleJoin;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.param.Param;
import panda.mvc.annotation.view.Err;
import panda.mvc.annotation.view.Ok;

@At("/samplejoin")
public class SampleJoinBulkAction extends BaseBulkAction<SampleJoin> {

	/**
	 * Constructor
	 */
	public SampleJoinBulkAction() {
		setType(SampleJoin.class);
		addDisplayFields(SampleJoin.ID, SampleJoin.TAGS_ID, SampleJoin.TAGS_NAME, SampleJoin.FILE_ID, SampleJoin.FILE_NAME);
	}


	/*----------------------------------------------------------------------*
	 * Actions
	 *----------------------------------------------------------------------*/
	/**
	 * bdelete
	 */
	@At
	@Ok(View.SFTL)
	@Err(View.SFTL)
	public Object bdelete(@Param Map<String, String[]> args) {
		return super.bdelete(args);
	}

	/**
	 * bdelete_execute
	 */
	@At
	@Ok(View.SFTL)
	@Err("sftl:~bdelete")
	public Object bdelete_execute(@Param Map<String, String[]> args) {
		return super.bdelete_execute(args);
	}
	
}

