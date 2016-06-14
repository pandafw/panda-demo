package panda.demo.action.samplefile;

import java.util.ArrayList;
import java.util.List;
import panda.demo.action.WebListAction;
import panda.demo.entity.SampleFile;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.param.Param;
import panda.mvc.annotation.view.Err;
import panda.mvc.annotation.view.Ok;
import panda.mvc.bean.Queryer;
import panda.mvc.validation.annotation.Validates;
import panda.mvc.view.tag.ListColumn;

public abstract class SampleFileListAction extends WebListAction<SampleFile> {

	/**
	 * Constructor
	 */
	public SampleFileListAction() {
		setType(SampleFile.class);
		addDisplayFields(SampleFile.ID, SampleFile.NAME, SampleFile.FILE_SIZE, SampleFile.IMAGE_SIZE, SampleFile.STATUS, SampleFile.CUSID, SampleFile.CTIME, SampleFile.UUSID, SampleFile.UTIME);
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
		List<ListColumn> columns = new ArrayList<ListColumn>();
		if (displayField("id")) {
			ListColumn lc = new ListColumn();
			lc.name = "id";
			lc.header = getFieldLabel("id");
			lc.hidden = false;
			columns.add(lc);
		}
		if (displayField("name")) {
			ListColumn lc = new ListColumn();
			lc.name = "name";
			lc.header = getFieldLabel("name");
			lc.hidden = false;
			columns.add(lc);
		}
		if (displayField("fileSize")) {
			ListColumn lc = new ListColumn();
			lc.name = "fileSize";
			lc.header = getFieldLabel("fileSize");
			lc.hidden = false;
			ListColumn.Format lcf = new ListColumn.Format();
			lcf.type = "expr";
			lcf.expr = "assist.getFileLink(top)";
			lcf.escape = "none";
			lc.format = lcf;
			columns.add(lc);
		}
		if (displayField("imageSize")) {
			ListColumn lc = new ListColumn();
			lc.name = "imageSize";
			lc.header = getFieldLabel("imageSize");
			lc.hidden = false;
			ListColumn.Format lcf = new ListColumn.Format();
			lcf.type = "expr";
			lcf.expr = "assist.getImageLink(top)";
			lcf.escape = "none";
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
	 * list_popup
	 */
	@At
	@Ok(View.SFTL)
	@Err(View.SFTL)
	public Object list_popup(@Param @Validates Queryer qr) {
		return super.list_popup(qr);
	}
	
	/**
	 * list_json
	 */
	@At
	@Ok(View.JSON)
	@Err(View.JSON)
	public Object list_json(@Param @Validates Queryer qr) {
		return super.list_json(qr);
	}
	
	/**
	 * list_xml
	 */
	@At
	@Ok(View.XML)
	@Err(View.XML)
	public Object list_xml(@Param @Validates Queryer qr) {
		return super.list_xml(qr);
	}
	
}

