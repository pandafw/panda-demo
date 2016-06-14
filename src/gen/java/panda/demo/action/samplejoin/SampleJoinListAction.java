package panda.demo.action.samplejoin;

import java.util.ArrayList;
import java.util.List;
import panda.demo.action.WebListAction;
import panda.demo.entity.SampleJoin;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.param.Param;
import panda.mvc.annotation.view.Err;
import panda.mvc.annotation.view.Ok;
import panda.mvc.bean.Queryer;
import panda.mvc.validation.annotation.Validates;
import panda.mvc.view.tag.ListColumn;

@At("/samplejoin")
public class SampleJoinListAction extends WebListAction<SampleJoin> {

	/**
	 * Constructor
	 */
	public SampleJoinListAction() {
		setType(SampleJoin.class);
		addDisplayFields(SampleJoin.ID, SampleJoin.TAGS_ID, SampleJoin.TAGS_NAME, SampleJoin.UNIQ_ID, SampleJoin.UNIQ_NAME);
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
		if (displayField("tagsId")) {
			ListColumn lc = new ListColumn();
			lc.name = "tagsId";
			lc.header = getFieldLabel("tagsId");
			lc.hidden = true;
			columns.add(lc);
		}
		if (displayField("tagsName")) {
			ListColumn lc = new ListColumn();
			lc.name = "tagsName";
			lc.header = getFieldLabel("tagsName");
			lc.hidden = false;
			columns.add(lc);
		}
		if (displayField("uniqId")) {
			ListColumn lc = new ListColumn();
			lc.name = "uniqId";
			lc.header = getFieldLabel("uniqId");
			lc.hidden = true;
			columns.add(lc);
		}
		if (displayField("uniqName")) {
			ListColumn lc = new ListColumn();
			lc.name = "uniqName";
			lc.header = getFieldLabel("uniqName");
			lc.hidden = false;
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

