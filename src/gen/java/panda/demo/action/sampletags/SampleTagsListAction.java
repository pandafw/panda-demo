package panda.demo.action.sampletags;

import java.util.ArrayList;
import java.util.List;
import panda.demo.action.WebListAction;
import panda.demo.entity.SampleTags;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.param.Param;
import panda.mvc.annotation.view.Err;
import panda.mvc.annotation.view.Ok;
import panda.mvc.bean.Queryer;
import panda.mvc.bean.QueryerOx;
import panda.mvc.validation.annotation.Validates;
import panda.mvc.view.tag.ListColumn;

@At("/sampletags")
public class SampleTagsListAction extends WebListAction<SampleTags> {

	/**
	 * Constructor
	 */
	public SampleTagsListAction() {
		setType(SampleTags.class);
		addDisplayFields(SampleTags.ID, SampleTags.STYLE_FIELD, SampleTags.NAME, SampleTags.BOOL_FIELD, SampleTags.INT_FIELD, SampleTags.DEC_FIELD, SampleTags.RADIO_FIELD, SampleTags.SELECT_FIELD, SampleTags.CHECK_FIELD, SampleTags.DATETIME_FIELD, SampleTags.DATE_FIELD, SampleTags.TIME_FIELD, SampleTags.STATUS, SampleTags.CUSID, SampleTags.CTIME, SampleTags.UUSID, SampleTags.UTIME);
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
		if (displayField("styleField")) {
			ListColumn lc = new ListColumn();
			lc.name = "styleField";
			lc.header = getFieldLabel("styleField");
			lc.hidden = false;
			ListColumn.Format lcf = new ListColumn.Format();
			lcf.type = "code";
			lcf.codemap = consts().getStyleMap();
			lc.format = lcf;
			columns.add(lc);
		}
		if (displayField("name")) {
			ListColumn lc = new ListColumn();
			lc.name = "name";
			lc.header = getFieldLabel("name");
			lc.hidden = false;
			columns.add(lc);
		}
		if (displayField("boolField")) {
			ListColumn lc = new ListColumn();
			lc.name = "boolField";
			lc.header = getFieldLabel("boolField");
			lc.hidden = false;
			ListColumn.Format lcf = new ListColumn.Format();
			lcf.type = "check";
			lc.format = lcf;
			columns.add(lc);
		}
		if (displayField("intField")) {
			ListColumn lc = new ListColumn();
			lc.name = "intField";
			lc.header = getFieldLabel("intField");
			lc.hidden = false;
			columns.add(lc);
		}
		if (displayField("decField")) {
			ListColumn lc = new ListColumn();
			lc.name = "decField";
			lc.header = getFieldLabel("decField");
			lc.hidden = false;
			columns.add(lc);
		}
		if (displayField("radioField")) {
			ListColumn lc = new ListColumn();
			lc.name = "radioField";
			lc.header = getFieldLabel("radioField");
			lc.hidden = false;
			ListColumn.Format lcf = new ListColumn.Format();
			lcf.type = "code";
			lcf.codemap = consts().getRadioMap();
			lc.format = lcf;
			columns.add(lc);
		}
		if (displayField("selectField")) {
			ListColumn lc = new ListColumn();
			lc.name = "selectField";
			lc.header = getFieldLabel("selectField");
			lc.hidden = false;
			ListColumn.Format lcf = new ListColumn.Format();
			lcf.type = "code";
			lcf.codemap = consts().getSelectMap();
			lc.format = lcf;
			columns.add(lc);
		}
		if (displayField("checkField")) {
			ListColumn lc = new ListColumn();
			lc.name = "checkField";
			lc.header = getFieldLabel("checkField");
			lc.hidden = false;
			ListColumn.Format lcf = new ListColumn.Format();
			lcf.type = "code";
			lcf.codemap = consts().getCheckMap();
			lc.format = lcf;
			columns.add(lc);
		}
		if (displayField("datetimeField")) {
			ListColumn lc = new ListColumn();
			lc.name = "datetimeField";
			lc.header = getFieldLabel("datetimeField");
			lc.hidden = false;
			ListColumn.Format lcf = new ListColumn.Format();
			lcf.type = "datetime";
			lc.format = lcf;
			columns.add(lc);
		}
		if (displayField("dateField")) {
			ListColumn lc = new ListColumn();
			lc.name = "dateField";
			lc.header = getFieldLabel("dateField");
			lc.hidden = false;
			ListColumn.Format lcf = new ListColumn.Format();
			lcf.type = "date";
			lc.format = lcf;
			columns.add(lc);
		}
		if (displayField("timeField")) {
			ListColumn lc = new ListColumn();
			lc.name = "timeField";
			lc.header = getFieldLabel("timeField");
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

