package panda.demo.action.sampleunique;

import java.util.ArrayList;
import java.util.List;
import panda.demo.action.WebListAction;
import panda.demo.entity.SampleUnique;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.param.Param;
import panda.mvc.annotation.view.Err;
import panda.mvc.annotation.view.Ok;
import panda.mvc.bean.Queryer;
import panda.mvc.bean.QueryerOx;
import panda.mvc.validation.annotation.Validates;
import panda.mvc.view.tag.ListColumn;

@At("/sampleunique")
public class SampleUniqueListAction extends WebListAction<SampleUnique> {

	/**
	 * Constructor
	 */
	public SampleUniqueListAction() {
		setType(SampleUnique.class);
		addDisplayFields(SampleUnique.ID, SampleUnique.NAME, SampleUnique.COMPOSITE_UNIQUE1, SampleUnique.COMPOSITE_UNIQUE2);
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
		if (displayField("name")) {
			ListColumn lc = new ListColumn();
			lc.name = "name";
			lc.header = getFieldLabel("name");
			lc.hidden = false;
			columns.add(lc);
		}
		if (displayField("compositeUnique1")) {
			ListColumn lc = new ListColumn();
			lc.name = "compositeUnique1";
			lc.header = getFieldLabel("compositeUnique1");
			lc.hidden = false;
			columns.add(lc);
		}
		if (displayField("compositeUnique2")) {
			ListColumn lc = new ListColumn();
			lc.name = "compositeUnique2";
			lc.header = getFieldLabel("compositeUnique2");
			lc.hidden = false;
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

