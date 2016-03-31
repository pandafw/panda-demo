package panda.demo.action.samplefile;

import java.util.Map;
import panda.demo.action.WebBulkAction;
import panda.demo.entity.SampleFile;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.param.Param;
import panda.mvc.annotation.view.Err;
import panda.mvc.annotation.view.Ok;

@At("/samplefile")
public class SampleFileBulkAction extends WebBulkAction<SampleFile> {

	/**
	 * Constructor
	 */
	public SampleFileBulkAction() {
		setType(SampleFile.class);
		addDisplayFields(SampleFile.ID, SampleFile.NAME, SampleFile.FILE_SIZE, SampleFile.IMAGE_SIZE, SampleFile.STATUS, SampleFile.CUSID, SampleFile.CTIME, SampleFile.UUSID, SampleFile.UTIME);
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

