package panda.demo.action.sampletags;

import panda.demo.action.WebListAction;
import panda.demo.entity.SampleTags;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.param.Param;
import panda.mvc.annotation.view.Err;
import panda.mvc.annotation.view.Ok;
import panda.mvc.bean.Queryer;
import panda.mvc.validation.annotation.Validates;

@At("/sampletags")
public class SampleTagsPopupAction extends WebListAction<SampleTags> {

	/**
	 * Constructor
	 */
	public SampleTagsPopupAction() {
		setType(SampleTags.class);
		addDisplayFields(SampleTags.ID, SampleTags.NAME, SampleTags.STATUS);
	}


	/*----------------------------------------------------------------------*
	 * Actions
	 *----------------------------------------------------------------------*/
	/**
	 * list_popup
	 */
	@At
	@Ok(View.SFTL)
	@Err(View.SFTL)
	public Object list_popup(@Param @Validates Queryer qr) {
		return super.list_popup(qr);
	}
	
}

