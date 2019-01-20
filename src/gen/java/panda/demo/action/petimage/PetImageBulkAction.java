package panda.demo.action.petimage;

import java.util.Map;
import panda.dao.query.DataQuery;
import panda.demo.action.WebBulkAction;
import panda.demo.entity.PetImage;
import panda.demo.entity.query.PetImageQuery;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.To;
import panda.mvc.annotation.param.Param;
import panda.vfs.FileItem;

@At("/petimage")
public class PetImageBulkAction extends WebBulkAction<PetImage> {
	/*----------------------------------------------------------------------*
	 * Properties
	 *----------------------------------------------------------------------*/
	protected FileItem file;

	/**
	 * Constructor
	 */
	public PetImageBulkAction() {
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
	 * bdelete
	 * @param args arguments
	 * @return result or view
	 */
	@At
	@To(value=View.SFTL, error=View.SFTL)
	public Object bdelete(@Param Map<String, String[]> args) {
		return super.bdelete(args);
	}

	/**
	 * bdelete_execute
	 * @param args arguments
	 * @return result or view
	 */
	@At
	@To(value=View.SFTL, error="sftl:~bdelete")
	public Object bdelete_execute(@Param Map<String, String[]> args) {
		return super.bdelete_execute(args);
	}
	
}

