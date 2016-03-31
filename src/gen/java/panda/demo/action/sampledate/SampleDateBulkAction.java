package panda.demo.action.sampledate;

import java.util.Map;
import panda.demo.action.WebBulkAction;
import panda.demo.entity.SampleDate;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.param.Param;
import panda.mvc.annotation.view.Err;
import panda.mvc.annotation.view.Ok;

@At("/sampledate")
public class SampleDateBulkAction extends WebBulkAction<SampleDate> {
	/*----------------------------------------------------------------------*
	 * Properties
	 *----------------------------------------------------------------------*/
	protected Boolean resize;

	/**
	 * Constructor
	 */
	public SampleDateBulkAction() {
		setType(SampleDate.class);
		addDisplayFields(SampleDate.ID, SampleDate.POPUP_DATETIME_FIELD, SampleDate.POPUP_DATE_FIELD, SampleDate.POPUP_TIME_FIELD, SampleDate.INLINE_DATETIME_FIELD, SampleDate.INLINE_DATE_FIELD, SampleDate.INLINE_TIME_FIELD, SampleDate.STATUS, SampleDate.CUSID, SampleDate.CTIME, SampleDate.UUSID, SampleDate.UTIME);
	}

	/**
	 * @return the resize
	 */
	public Boolean getResize() {
		return resize;
	}

	/**
	 * @param resize the resize to set
	 */
	public void setResize(Boolean resize) {
		this.resize = resize;
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

