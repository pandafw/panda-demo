package panda.demo.action.pet;

import java.util.ArrayList;
import java.util.List;
import panda.dao.query.DataQuery;
import panda.demo.action.WebListAction;
import panda.demo.entity.Pet;
import panda.demo.entity.query.PetQuery;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.To;
import panda.mvc.annotation.Validates;
import panda.mvc.annotation.param.Param;
import panda.mvc.bean.Queryer;
import panda.mvc.bean.QueryerEx;
import panda.mvc.view.util.ListColumn;

@At("/pet")
public class PetExportAction extends WebListAction<Pet> {

	/**
	 * Constructor
	 */
	public PetExportAction() {
		setType(Pet.class);
		addDisplayFields(Pet.NAME, Pet.CID, Pet.GENDER, Pet.BIRTHDAY, Pet.ORIGIN, Pet.TEMPER, Pet.HABITS, Pet.AMOUNT, Pet.PRICE, Pet.SHOP_NAME, Pet.STATUS, Pet.UUSID, Pet.UTIME);
	}


	/*----------------------------------------------------------------------*
	 * Joins
	 *----------------------------------------------------------------------*/
	/**
	 * add query joins
	 * @param dq data query
	 */
	@Override
	protected void addQueryJoins(DataQuery<Pet> dq) {
		super.addQueryJoins(dq);

		PetQuery eq = new PetQuery(dq);
		eq.autoLeftJoinCN();
	}

	/*----------------------------------------------------------------------*
	 * Actions
	 *----------------------------------------------------------------------*/
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
		if (displayField("name")) {
			ListColumn lc = new ListColumn();
			lc.name = "name";
			lc.header = getFieldLabel("name");
			lc.hidden = false;
			columns.add(lc);
		}
		if (displayField("cid")) {
			ListColumn lc = new ListColumn();
			lc.name = "cid";
			lc.header = getFieldLabel("cid");
			lc.hidden = false;
			columns.add(lc);
		}
		if (displayField("gender")) {
			ListColumn lc = new ListColumn();
			lc.name = "gender";
			lc.header = getFieldLabel("gender");
			lc.hidden = false;
			ListColumn.Format lcf = new ListColumn.Format();
			lcf.type = "code";
			lcf.codemap = consts().getPetGenderMap();
			lc.format = lcf;
			columns.add(lc);
		}
		if (displayField("birthday")) {
			ListColumn lc = new ListColumn();
			lc.name = "birthday";
			lc.header = getFieldLabel("birthday");
			lc.hidden = false;
			ListColumn.Format lcf = new ListColumn.Format();
			lcf.type = "date";
			lc.format = lcf;
			columns.add(lc);
		}
		if (displayField("origin")) {
			ListColumn lc = new ListColumn();
			lc.name = "origin";
			lc.header = getFieldLabel("origin");
			lc.hidden = false;
			ListColumn.Format lcf = new ListColumn.Format();
			lcf.type = "code";
			lcf.codemap = consts().getPetOriginMap();
			lc.format = lcf;
			columns.add(lc);
		}
		if (displayField("temper")) {
			ListColumn lc = new ListColumn();
			lc.name = "temper";
			lc.header = getFieldLabel("temper");
			lc.hidden = false;
			ListColumn.Format lcf = new ListColumn.Format();
			lcf.type = "code";
			lcf.codemap = consts().getPetTemperMap();
			lc.format = lcf;
			columns.add(lc);
		}
		if (displayField("habits")) {
			ListColumn lc = new ListColumn();
			lc.name = "habits";
			lc.header = getFieldLabel("habits");
			lc.hidden = false;
			ListColumn.Format lcf = new ListColumn.Format();
			lcf.type = "code";
			lcf.codemap = consts().getPetHabitMap();
			lc.format = lcf;
			columns.add(lc);
		}
		if (displayField("amount")) {
			ListColumn lc = new ListColumn();
			lc.name = "amount";
			lc.header = getFieldLabel("amount");
			lc.hidden = false;
			columns.add(lc);
		}
		if (displayField("price")) {
			ListColumn lc = new ListColumn();
			lc.name = "price";
			lc.header = getFieldLabel("price");
			lc.hidden = false;
			columns.add(lc);
		}
		if (displayField("shopName")) {
			ListColumn lc = new ListColumn();
			lc.name = "shopName";
			lc.header = getFieldLabel("shopName");
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
		if (displayField("name")) {
			ListColumn lc = new ListColumn();
			lc.name = "name";
			lc.header = getFieldLabel("name");
			lc.hidden = false;
			columns.add(lc);
		}
		if (displayField("cid")) {
			ListColumn lc = new ListColumn();
			lc.name = "cid";
			lc.header = getFieldLabel("cid");
			lc.hidden = false;
			columns.add(lc);
		}
		if (displayField("gender")) {
			ListColumn lc = new ListColumn();
			lc.name = "gender";
			lc.header = getFieldLabel("gender");
			lc.hidden = false;
			ListColumn.Format lcf = new ListColumn.Format();
			lcf.type = "code";
			lcf.codemap = consts().getPetGenderMap();
			lc.format = lcf;
			columns.add(lc);
		}
		if (displayField("birthday")) {
			ListColumn lc = new ListColumn();
			lc.name = "birthday";
			lc.header = getFieldLabel("birthday");
			lc.hidden = false;
			ListColumn.Format lcf = new ListColumn.Format();
			lcf.type = "date";
			lc.format = lcf;
			columns.add(lc);
		}
		if (displayField("origin")) {
			ListColumn lc = new ListColumn();
			lc.name = "origin";
			lc.header = getFieldLabel("origin");
			lc.hidden = false;
			ListColumn.Format lcf = new ListColumn.Format();
			lcf.type = "code";
			lcf.codemap = consts().getPetOriginMap();
			lc.format = lcf;
			columns.add(lc);
		}
		if (displayField("temper")) {
			ListColumn lc = new ListColumn();
			lc.name = "temper";
			lc.header = getFieldLabel("temper");
			lc.hidden = false;
			ListColumn.Format lcf = new ListColumn.Format();
			lcf.type = "code";
			lcf.codemap = consts().getPetTemperMap();
			lc.format = lcf;
			columns.add(lc);
		}
		if (displayField("habits")) {
			ListColumn lc = new ListColumn();
			lc.name = "habits";
			lc.header = getFieldLabel("habits");
			lc.hidden = false;
			ListColumn.Format lcf = new ListColumn.Format();
			lcf.type = "code";
			lcf.codemap = consts().getPetHabitMap();
			lc.format = lcf;
			columns.add(lc);
		}
		if (displayField("amount")) {
			ListColumn lc = new ListColumn();
			lc.name = "amount";
			lc.header = getFieldLabel("amount");
			lc.hidden = false;
			columns.add(lc);
		}
		if (displayField("price")) {
			ListColumn lc = new ListColumn();
			lc.name = "price";
			lc.header = getFieldLabel("price");
			lc.hidden = false;
			columns.add(lc);
		}
		if (displayField("shopName")) {
			ListColumn lc = new ListColumn();
			lc.name = "shopName";
			lc.header = getFieldLabel("shopName");
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

