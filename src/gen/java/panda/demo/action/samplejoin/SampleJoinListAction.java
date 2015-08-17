package panda.demo.action.samplejoin;

import panda.demo.action.BaseListAction;
import panda.demo.entity.SampleJoin;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.param.Param;
import panda.mvc.annotation.view.Err;
import panda.mvc.annotation.view.Ok;
import panda.mvc.bean.Queryer;
import panda.mvc.validation.annotation.Validate;

@At("/samplejoin")
public class SampleJoinListAction extends BaseListAction<SampleJoin> {

	/**
	 * Constructor
	 */
	public SampleJoinListAction() {
		setType(SampleJoin.class);
	}


	/*----------------------------------------------------------------------*
	 * Actions
	 *----------------------------------------------------------------------*/
	/**
	 * list
	 */
	@At
	@Ok(View.FREEMARKER)
	@Err(View.FREEMARKER)
	public Object list(@Param @Validate Queryer qr) {
		return super.list(qr);
	}
	
	/**
	 * list_csv
	 */
	@At
	@Ok(View.FREEMARKER)
	@Err(View.FREEMARKER)
	public Object list_csv(@Param @Validate Queryer qr) {
		return super.list_csv(qr);
	}
	
	/**
	 * list_print
	 */
	@At
	@Ok(View.FREEMARKER)
	@Err(View.FREEMARKER)
	public Object list_print(@Param @Validate Queryer qr) {
		return super.list_print(qr);
	}
	
}

