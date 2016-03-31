package panda.demo.action.samplefile;

import panda.demo.action.WebListAction;
import panda.demo.entity.SampleFile;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.param.Param;
import panda.mvc.annotation.view.Err;
import panda.mvc.annotation.view.Ok;
import panda.mvc.bean.Queryer;
import panda.mvc.validation.annotation.Validates;

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
		return super.list_csv(qr);
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

