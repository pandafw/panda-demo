package panda.demo.action.petimage;

import panda.dao.query.DataQuery;
import panda.demo.action.WebListAction;
import panda.demo.entity.PetImage;
import panda.demo.entity.query.PetImageQuery;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.To;
import panda.mvc.annotation.Validates;
import panda.mvc.annotation.param.Param;
import panda.mvc.bean.Queryer;
import panda.vfs.FileItem;

@At("/petimage")
public class PetImageListAction extends WebListAction<PetImage> {
	/*----------------------------------------------------------------------*
	 * Properties
	 *----------------------------------------------------------------------*/
	protected FileItem file;

	/**
	 * Constructor
	 */
	public PetImageListAction() {
		setType(PetImage.class);
		addDisplayFields(PetImage.ID, PetImage.PID, PetImage.PNAME, PetImage.IMAGE_NAME, PetImage.IMAGE_SIZE, PetImage.IMAGE_ITEM, PetImage.UUSID, PetImage.UTIME);
	}

	/**
	 * @return the file
	 */
	public FileItem getFile() {
		return file;
	}

	/**
	 * @param file the file to set
	 */
	public void setFile(FileItem file) {
		this.file = file;
	}


	/*----------------------------------------------------------------------*
	 * Joins
	 *----------------------------------------------------------------------*/
	/**
	 * add query joins
	 * @param dq data query
	 */
	@Override
	protected void addQueryJoins(DataQuery<PetImage> dq) {
		super.addQueryJoins(dq);

		PetImageQuery eq = new PetImageQuery(dq);
		eq.autoLeftJoinPN();
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
	
}

