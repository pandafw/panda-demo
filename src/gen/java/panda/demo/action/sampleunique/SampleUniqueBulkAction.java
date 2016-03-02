package panda.demo.action.sampleunique;

import java.util.Map;
import panda.demo.action.BaseBulkAction;
import panda.demo.entity.SampleUnique;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.param.Param;
import panda.mvc.annotation.view.Err;
import panda.mvc.annotation.view.Ok;

@At("/sampleunique")
public class SampleUniqueBulkAction extends BaseBulkAction<SampleUnique> {

	/**
	 * Constructor
	 */
	public SampleUniqueBulkAction() {
		setType(SampleUnique.class);
		addDisplayFields(SampleUnique.ID, SampleUnique.NAME, SampleUnique.COMPOSITE_UNIQUE1, SampleUnique.COMPOSITE_UNIQUE2);
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

