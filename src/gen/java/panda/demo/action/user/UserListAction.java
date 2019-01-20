package panda.demo.action.user;

import java.util.ArrayList;
import java.util.List;
import panda.app.auth.Auth;
import panda.app.constant.AUTH;
import panda.demo.action.WebListAction;
import panda.demo.entity.User;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.To;
import panda.mvc.annotation.Validates;
import panda.mvc.annotation.param.Param;
import panda.mvc.bean.Queryer;
import panda.mvc.bean.QueryerEx;
import panda.mvc.view.util.ListColumn;

@At("${super_path}/user")
@Auth(AUTH.SUPER)
public class UserListAction extends WebListAction<User> {

	/**
	 * Constructor
	 */
	public UserListAction() {
		setType(User.class);
		addDisplayFields(User.ID, User.NAME, User.EMAIL, User.PASSWORD, User.ROLE, User.STATUS);
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
		if (displayField("email")) {
			ListColumn lc = new ListColumn();
			lc.name = "email";
			lc.header = getFieldLabel("email");
			lc.hidden = false;
			columns.add(lc);
		}
		if (displayField("password")) {
			ListColumn lc = new ListColumn();
			lc.name = "password";
			lc.header = getFieldLabel("password");
			lc.hidden = false;
			columns.add(lc);
		}
		if (displayField("role")) {
			ListColumn lc = new ListColumn();
			lc.name = "role";
			lc.header = getFieldLabel("role");
			lc.hidden = false;
			ListColumn.Format lcf = new ListColumn.Format();
			lcf.type = "code";
			lcf.codemap = consts().getAuthRoleMap();
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
		if (displayField("email")) {
			ListColumn lc = new ListColumn();
			lc.name = "email";
			lc.header = getFieldLabel("email");
			lc.hidden = false;
			columns.add(lc);
		}
		if (displayField("password")) {
			ListColumn lc = new ListColumn();
			lc.name = "password";
			lc.header = getFieldLabel("password");
			lc.hidden = false;
			columns.add(lc);
		}
		if (displayField("role")) {
			ListColumn lc = new ListColumn();
			lc.name = "role";
			lc.header = getFieldLabel("role");
			lc.hidden = false;
			ListColumn.Format lcf = new ListColumn.Format();
			lcf.type = "code";
			lcf.codemap = consts().getAuthRoleMap();
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
		return super.expo_xlsx(qr, columns);
	}
	
}

