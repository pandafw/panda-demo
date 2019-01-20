package panda.demo.action.petcategory;

import java.util.ArrayList;
import java.util.List;
import panda.demo.action.WebListAction;
import panda.demo.entity.PetCategory;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.To;
import panda.mvc.annotation.Validates;
import panda.mvc.annotation.param.Param;
import panda.mvc.bean.Queryer;
import panda.mvc.bean.QueryerEx;
import panda.mvc.view.util.ListColumn;

@At("/petcategory")
public class PetCategoryListAction extends WebListAction<PetCategory> {

	/**
	 * Constructor
	 */
	public PetCategoryListAction() {
		setType(PetCategory.class);
		addDisplayFields(PetCategory.ID, PetCategory.NAME, PetCategory.STATUS, PetCategory.UUSID, PetCategory.UTIME);
	}


	/*----------------------------------------------------------------------*
	 * Actions
	 *----------------------------------------------------------------------*/
	/**
	 * list
	 * @param qr queryer
	 * @return result or view
	 */
	@At
	@To(value=View.SFTL, error=View.SFTL)
	public Object list(@Param @Validates Queryer qr) {
		return super.list(qr);
	}
	
	/**
	 * list_pdf
	 * @param qr queryer
	 * @return result or view
	 */
	@At
	@To(value=View.SFTL, error=View.SFTL)
	public Object list_pdf(@Param @Validates Queryer qr) {
		return super.list_pdf(qr);
	}
	
	/**
	 * list_print
	 * @param qr queryer
	 * @return result or view
	 */
	@At
	@To(value=View.SFTL, error=View.SFTL)
	public Object list_print(@Param @Validates Queryer qr) {
		return super.list_print(qr);
	}
	
	/**
	 * list_json
	 * @param qr queryer
	 * @return result or view
	 */
	@At
	@To(all=View.JSON)
	public Object list_json(@Param @Validates Queryer qr) {
		return super.list_json(qr);
	}
	
	/**
	 * list_xml
	 * @param qr queryer
	 * @return result or view
	 */
	@At
	@To(all=View.XML)
	public Object list_xml(@Param @Validates Queryer qr) {
		return super.list_xml(qr);
	}
	
	/**
	 * expo_csv
	 * @param qr queryer
	 * @return result or view
	 */
	@At
	@To(value=View.SFTL, error=View.SFTL)
	public Object expo_csv(@Param @Validates QueryerEx qr) {
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
		return super.expo_csv(qr, columns);
	}
	
	/**
	 * expo_xlsx
	 * @param qr queryer
	 * @return result or view
	 */
	@At
	@To(value=View.SFTL, error=View.SFTL)
	public Object expo_xlsx(@Param @Validates QueryerEx qr) {
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
		return super.expo_xlsx(qr, columns);
	}
	
}

