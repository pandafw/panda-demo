package panda.demo.action.sampledate;

import java.util.ArrayList;
import java.util.List;
import panda.demo.action.WebListAction;
import panda.demo.entity.SampleDate;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.param.Param;
import panda.mvc.annotation.view.Err;
import panda.mvc.annotation.view.Ok;
import panda.mvc.bean.Queryer;
import panda.mvc.bean.QueryerOx;
import panda.mvc.validation.annotation.Validates;
import panda.mvc.view.tag.ListColumn;

@At("/sampledate")
public class SampleDateListAction extends WebListAction<SampleDate> {
	/*----------------------------------------------------------------------*
	 * Properties
	 *----------------------------------------------------------------------*/
	protected Boolean resize;

	/**
	 * Constructor
	 */
	public SampleDateListAction() {
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
	public Object list_csv(@Param @Validates QueryerOx qr) {
		List<ListColumn> columns = new ArrayList<ListColumn>();
		if (displayField("id")) {
			ListColumn lc = new ListColumn();
			lc.name = "id";
			lc.header = getFieldLabel("id");
			lc.hidden = false;
			columns.add(lc);
		}
		if (displayField("popupDatetimeField")) {
			ListColumn lc = new ListColumn();
			lc.name = "popupDatetimeField";
			lc.header = getFieldLabel("popupDatetimeField");
			lc.hidden = false;
			ListColumn.Format lcf = new ListColumn.Format();
			lcf.type = "datetime";
			lc.format = lcf;
			columns.add(lc);
		}
		if (displayField("popupDateField")) {
			ListColumn lc = new ListColumn();
			lc.name = "popupDateField";
			lc.header = getFieldLabel("popupDateField");
			lc.hidden = false;
			ListColumn.Format lcf = new ListColumn.Format();
			lcf.type = "date";
			lc.format = lcf;
			columns.add(lc);
		}
		if (displayField("popupTimeField")) {
			ListColumn lc = new ListColumn();
			lc.name = "popupTimeField";
			lc.header = getFieldLabel("popupTimeField");
			lc.hidden = false;
			ListColumn.Format lcf = new ListColumn.Format();
			lcf.type = "time";
			lc.format = lcf;
			columns.add(lc);
		}
		if (displayField("inlineDatetimeField")) {
			ListColumn lc = new ListColumn();
			lc.name = "inlineDatetimeField";
			lc.header = getFieldLabel("inlineDatetimeField");
			lc.hidden = false;
			ListColumn.Format lcf = new ListColumn.Format();
			lcf.type = "datetime";
			lc.format = lcf;
			columns.add(lc);
		}
		if (displayField("inlineDateField")) {
			ListColumn lc = new ListColumn();
			lc.name = "inlineDateField";
			lc.header = getFieldLabel("inlineDateField");
			lc.hidden = false;
			ListColumn.Format lcf = new ListColumn.Format();
			lcf.type = "date";
			lc.format = lcf;
			columns.add(lc);
		}
		if (displayField("inlineTimeField")) {
			ListColumn lc = new ListColumn();
			lc.name = "inlineTimeField";
			lc.header = getFieldLabel("inlineTimeField");
			lc.hidden = false;
			ListColumn.Format lcf = new ListColumn.Format();
			lcf.type = "time";
			lc.format = lcf;
			columns.add(lc);
		}
		if (displayField("status")) {
			ListColumn lc = new ListColumn();
			lc.name = "status";
			lc.header = getFieldLabel("status");
			lc.hidden = false;
			ListColumn.Format lcf = new ListColumn.Format();
			lcf.type = "code";
			lcf.codemap = consts().getDataStatusMap();
			lc.format = lcf;
			columns.add(lc);
		}
		if (displayField("cusid")) {
			ListColumn lc = new ListColumn();
			lc.name = "cusid";
			lc.header = getFieldLabel("cusid");
			lc.hidden = false;
			columns.add(lc);
		}
		if (displayField("ctime")) {
			ListColumn lc = new ListColumn();
			lc.name = "ctime";
			lc.header = getFieldLabel("ctime");
			lc.hidden = false;
			ListColumn.Format lcf = new ListColumn.Format();
			lcf.type = "datetime";
			lc.format = lcf;
			columns.add(lc);
		}
		if (displayField("uusid")) {
			ListColumn lc = new ListColumn();
			lc.name = "uusid";
			lc.header = getFieldLabel("uusid");
			lc.hidden = false;
			columns.add(lc);
		}
		if (displayField("utime")) {
			ListColumn lc = new ListColumn();
			lc.name = "utime";
			lc.header = getFieldLabel("utime");
			lc.hidden = false;
			ListColumn.Format lcf = new ListColumn.Format();
			lcf.type = "datetime";
			lc.format = lcf;
			columns.add(lc);
		}
		return super.list_csv(qr, columns);
	}
	
	/**
	 * list_pdf
	 */
	@At
	@Ok(View.SFTL)
	@Err(View.SFTL)
	public Object list_pdf(@Param @Validates Queryer qr) {
		return super.list_pdf(qr);
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
	@Err(View.JSON)
	public Object list_json(@Param @Validates QueryerOx qr) {
		return super.list_json(qr);
	}
	
	/**
	 * list_xml
	 */
	@At
	@Ok(View.XML)
	@Err(View.XML)
	public Object list_xml(@Param @Validates QueryerOx qr) {
		return super.list_xml(qr);
	}
	
}

