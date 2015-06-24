package panda.demo.action.samplefile;

import java.util.List;
import panda.demo.action.WebEntityDaoAction;
import panda.demo.entity.SampleFile;

public class SampleFileAction extends WebEntityDaoAction<SampleFile> {

	/**
	 * Constructor
	 */
	public SampleFileAction() {
		setType(SampleFile.class);
	}

	/*----------------------------------------------------------------------*
	 * Getter & Setter
	 *----------------------------------------------------------------------*/
	/**
	 * @return the sampleFile
	 */
	public SampleFile getD() {
		return super.getData();
	}

	/**
	 * @param sampleFile the sampleFile to set
	 */
	public void setD(SampleFile sampleFile) {
		super.setData(sampleFile);
	}

	/**
	 * @return the sampleFile list
	 */
	public List<SampleFile> getDs() {
		return super.getDataList();
	}

	/**
	 * @param sampleFileList the sampleFileList to set
	 */
	public void setDs(List<SampleFile> sampleFileList) {
		super.setDataList(sampleFileList);
	}


	/*----------------------------------------------------------------------*
	 * Actions
	 *----------------------------------------------------------------------*/
	/**
	 * list
	 */
	public Object list() {
		return super.list();
	}
	
	/**
	 * list_csv
	 */
	public Object list_csv() {
		return super.list_csv();
	}
	
	/**
	 * list_print
	 */
	public Object list_print() {
		return super.list_print();
	}
	
	/**
	 * list_popup
	 */
	public Object list_popup() {
		return super.list_popup();
	}
	
	/**
	 * bdelete
	 */
	public Object bdelete() {
		return super.bdelete();
	}

	/**
	 * bdelete_execute
	 */
	public Object bdelete_execute() {
		return super.bdelete_execute();
	}
	
	/**
	 * view
	 */
	public Object view() {
		return super.view();
	}

	/**
	 * view_input
	 */
	public Object view_input() {
		return super.view_input();
	}

	/**
	 * print
	 */
	public Object print() {
		return super.print();
	}

	/**
	 * print_input
	 */
	public Object print_input() {
		return super.print_input();
	}

	/**
	 * copy
	 */
	public Object copy() {
		return super.copy();
	}

	/**
	 * copy_input
	 */
	public Object copy_input() {
		return super.copy_input();
	}

	/**
	 * copy_confirm
	 */
	public Object copy_confirm() {
		return super.copy_confirm();
	}

	/**
	 * copy_execute
	 */
	public Object copy_execute() {
		return super.copy_execute();
	}

	/**
	 * insert
	 */
	public Object insert() {
		return super.insert();
	}

	/**
	 * insert_input
	 */
	public Object insert_input() {
		return super.insert_input();
	}

	/**
	 * insert_confirm
	 */
	public Object insert_confirm() {
		return super.insert_confirm();
	}

	/**
	 * insert_execute
	 */
	public Object insert_execute() {
		return super.insert_execute();
	}

	/**
	 * update
	 */
	public Object update() {
		return super.update();
	}

	/**
	 * update_input
	 */
	public Object update_input() {
		return super.update_input();
	}

	/**
	 * update_confirm
	 */
	public Object update_confirm() {
		return super.update_confirm();
	}

	/**
	 * update_execute
	 */
	public Object update_execute() {
		return super.update_execute();
	}

	/**
	 * delete
	 */
	public Object delete() {
		return super.delete();
	}

	/**
	 * delete_execute
	 */
	public Object delete_execute() {
		return super.delete_execute();
	}

}