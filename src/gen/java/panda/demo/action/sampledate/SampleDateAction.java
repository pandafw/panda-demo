package panda.demo.action.sampledate;

import java.util.List;
import panda.demo.action.AbstractBeanDaoAction;
import panda.demo.entity.SampleDate;

public class SampleDateAction extends AbstractBeanDaoAction<SampleDate> {
	/*----------------------------------------------------------------------*
	 * Properties
	 *----------------------------------------------------------------------*/
	protected Boolean resize;

	/**
	 * Constructor
	 */
	public SampleDateAction() {
		setType(SampleDate.class);
	}

	/*----------------------------------------------------------------------*
	 * Getter & Setter
	 *----------------------------------------------------------------------*/
	/**
	 * @return the sampleDate
	 */
	public SampleDate getD() {
		return super.getData();
	}

	/**
	 * @param sampleDate the sampleDate to set
	 */
	public void setD(SampleDate sampleDate) {
		super.setData(sampleDate);
	}

	/**
	 * @return the sampleDate list
	 */
	public List<SampleDate> getDs() {
		return super.getDataList();
	}

	/**
	 * @param sampleDateList the sampleDateList to set
	 */
	public void setDs(List<SampleDate> sampleDateList) {
		super.setDataList(sampleDateList);
	}

	/**
	 * @return the resize
	 */
	public Boolean getResize() {
		return resize;
	}

	/**
	 * @param resize the resize to set
	 */
	public void setResize(Boolean resize) {
		this.resize = resize;
	}


	/*----------------------------------------------------------------------*
	 * Actions
	 *----------------------------------------------------------------------*/
	/**
	 * list
	 * @return SUCCESS
	 * @throws Exception if an error occurs
	 */
	public String list() throws Exception {
		return super.list();
	}
	
	/**
	 * list_csv
	 * @return SUCCESS
	 * @throws Exception if an error occurs
	 */
	public String list_csv() throws Exception {
		return super.list_csv();
	}
	
	/**
	 * list_print
	 * @return SUCCESS
	 * @throws Exception if an error occurs
	 */
	public String list_print() throws Exception {
		return super.list_print();
	}
	
	/**
	 * bdelete
	 * @return SUCCESS
	 * @throws Exception if an error occurs
	 */
	public String bdelete() throws Exception {
		return super.bdelete();
	}

	/**
	 * bdelete_execute
	 * @return SUCCESS
	 * @throws Exception if an error occurs
	 */
	public String bdelete_execute() throws Exception {
		return super.bdelete_execute();
	}
	
	/**
	 * view
	 * @return SUCCESS
	 * @throws Exception if an error occurs
	 */
	public String view() throws Exception {
		return super.view();
	}

	/**
	 * view_input
	 * @return SUCCESS
	 * @throws Exception if an error occurs
	 */
	public String view_input() throws Exception {
		return super.view_input();
	}

	/**
	 * print
	 * @return SUCCESS
	 * @throws Exception if an error occurs
	 */
	public String print() throws Exception {
		return super.print();
	}

	/**
	 * print_input
	 * @return SUCCESS
	 * @throws Exception if an error occurs
	 */
	public String print_input() throws Exception {
		return super.print_input();
	}

	/**
	 * copy
	 * @return SUCCESS
	 * @throws Exception if an error occurs
	 */
	public String copy() throws Exception {
		return super.copy();
	}

	/**
	 * copy_input
	 * @return SUCCESS
	 * @throws Exception if an error occurs
	 */
	public String copy_input() throws Exception {
		return super.copy_input();
	}

	/**
	 * copy_confirm
	 * @return SUCCESS
	 * @throws Exception if an error occurs
	 */
	public String copy_confirm() throws Exception {
		return super.copy_confirm();
	}

	/**
	 * copy_execute
	 * @return SUCCESS
	 * @throws Exception if an error occurs
	 */
	public String copy_execute() throws Exception {
		return super.copy_execute();
	}

	/**
	 * insert
	 * @return SUCCESS
	 * @throws Exception if an error occurs
	 */
	public String insert() throws Exception {
		return super.insert();
	}

	/**
	 * insert_input
	 * @return SUCCESS
	 * @throws Exception if an error occurs
	 */
	public String insert_input() throws Exception {
		return super.insert_input();
	}

	/**
	 * insert_confirm
	 * @return SUCCESS
	 * @throws Exception if an error occurs
	 */
	public String insert_confirm() throws Exception {
		return super.insert_confirm();
	}

	/**
	 * insert_execute
	 * @return SUCCESS
	 * @throws Exception if an error occurs
	 */
	public String insert_execute() throws Exception {
		return super.insert_execute();
	}

	/**
	 * update
	 * @return SUCCESS
	 * @throws Exception if an error occurs
	 */
	public String update() throws Exception {
		return super.update();
	}

	/**
	 * update_input
	 * @return SUCCESS
	 * @throws Exception if an error occurs
	 */
	public String update_input() throws Exception {
		return super.update_input();
	}

	/**
	 * update_confirm
	 * @return SUCCESS
	 * @throws Exception if an error occurs
	 */
	public String update_confirm() throws Exception {
		return super.update_confirm();
	}

	/**
	 * update_execute
	 * @return SUCCESS
	 * @throws Exception if an error occurs
	 */
	public String update_execute() throws Exception {
		return super.update_execute();
	}

	/**
	 * delete
	 * @return SUCCESS
	 * @throws Exception if an error occurs
	 */
	public String delete() throws Exception {
		return super.delete();
	}

	/**
	 * delete_execute
	 * @return SUCCESS
	 * @throws Exception if an error occurs
	 */
	public String delete_execute() throws Exception {
		return super.delete_execute();
	}

}