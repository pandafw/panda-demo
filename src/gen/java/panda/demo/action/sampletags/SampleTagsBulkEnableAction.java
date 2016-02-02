package panda.demo.action.sampletags;

import java.util.Map;
import panda.demo.action.BaseBulkAction;
import panda.demo.entity.SampleTags;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.param.Param;
import panda.mvc.annotation.view.Err;
import panda.mvc.annotation.view.Ok;

public abstract class SampleTagsBulkEnableAction extends BaseBulkAction<SampleTags> {

	/**
	 * Constructor
	 */
	public SampleTagsBulkEnableAction() {
		setType(SampleTags.class);
		addDisplayColumns(SampleTags.ID, SampleTags.STYLE_FIELD, SampleTags.NAME, SampleTags.BOOL_FIELD, SampleTags.INT_FIELD, SampleTags.DEC_FIELD, SampleTags.RADIO_FIELD, SampleTags.SELECT_FIELD, SampleTags.CHECK_FIELD, SampleTags.DATETIME_FIELD, SampleTags.DATE_FIELD, SampleTags.TIME_FIELD, SampleTags.HTML_FIELD, SampleTags.BBCODE_FIELD, SampleTags.STATUS, SampleTags.CUSID, SampleTags.CTIME, SampleTags.UUSID, SampleTags.UTIME);
	}


	/*----------------------------------------------------------------------*
	 * Actions
	 *----------------------------------------------------------------------*/
	/**
	 * benable
	 */
	@At
	@Ok(View.SFTL)
	@Err(View.SFTL)
	public Object benable(@Param Map<String, String[]> args) {
		return super.bupdate(args);
	}

	/**
	 * benable_execute
	 */
	@At
	@Ok(View.SFTL)
	@Err("sftl:~benable")
	public Object benable_execute(@Param Map<String, String[]> args) {
		return super.bupdate_execute(args);
	}
	
}

