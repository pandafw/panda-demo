package panda.demo.action.sampledate;

import panda.demo.action.BaseListAction;
import panda.demo.entity.SampleDate;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.param.Param;
import panda.mvc.annotation.view.Err;
import panda.mvc.annotation.view.Ok;
import panda.mvc.bean.Queryer;
import panda.mvc.validation.annotation.Validates;

@At("/sampledate")
public class SampleDateListAction extends BaseListAction<SampleDate> {
	/*----------------------------------------------------------------------*
	 * Properties
	 *----------------------------------------------------------------------*/
	protected Boolean resize;

	/**
	 * Constructor
	 */
	public SampleDateListAction() {
		setType(SampleDate.class);
		addDisplayColumns(SampleDate.ID, SampleDate.POPUP_DATETIME_FIELD, SampleDate.POPUP_DATE_FIELD, SampleDate.POPUP_TIME_FIELD, SampleDate.INLINE_DATETIME_FIELD, SampleDate.INLINE_DATE_FIELD, SampleDate.INLINE_TIME_FIELD, SampleDate.STATUS, SampleDate.CUSID, SampleDate.CTIME, SampleDate.UUSID, SampleDate.UTIME);
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
	 * list
	 */
	@At
	@Ok(View.SFTL)
	@Err(View.SFTL)
	public Object list(@Param @Validates Queryer qr) {
		return super.list(qr);
	}
	
	/**
	 * list_csv
	 */
	@At
	@Ok(View.FTL)
	@Err(View.FTL)
	public Object list_csv(@Param @Validates Queryer qr) {
		return super.list_csv(qr);
	}
	
	/**
	 * list_print
	 */
	@At
	@Ok(View.SFTL)
	@Err(View.SFTL)
	public Object list_print(@Param @Validates Queryer qr) {
		return super.list_print(qr);
	}
	
	/**
	 * list_json
	 */
	@At
	@Ok(View.JSON)
	public Object list_json(@Param @Validates Queryer qr) {
		return super.list_json(qr);
	}
	
	/**
	 * list_xml
	 */
	@At
	@Ok(View.XML)
	public Object list_xml(@Param @Validates Queryer qr) {
		return super.list_xml(qr);
	}
	
}

