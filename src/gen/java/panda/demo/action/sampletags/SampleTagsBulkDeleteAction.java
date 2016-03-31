package panda.demo.action.sampletags;

import java.util.Map;
import panda.demo.action.WebBulkAction;
import panda.demo.entity.SampleTags;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.param.Param;
import panda.mvc.annotation.view.Err;
import panda.mvc.annotation.view.Ok;

@At("/sampletags")
public class SampleTagsBulkDeleteAction extends WebBulkAction<SampleTags> {

	/**
	 * Constructor
	 */
	public SampleTagsBulkDeleteAction() {
		setType(SampleTags.class);
		addDisplayFields(SampleTags.ID, SampleTags.STYLE_FIELD, SampleTags.NAME, SampleTags.BOOL_FIELD, SampleTags.INT_FIELD, SampleTags.DEC_FIELD, SampleTags.RADIO_FIELD, SampleTags.SELECT_FIELD, SampleTags.CHECK_FIELD, SampleTags.DATETIME_FIELD, SampleTags.DATE_FIELD, SampleTags.TIME_FIELD, SampleTags.HTML_FIELD, SampleTags.BBCODE_FIELD, SampleTags.STATUS, SampleTags.CUSID, SampleTags.CTIME, SampleTags.UUSID, SampleTags.UTIME);
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

