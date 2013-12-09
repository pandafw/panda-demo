package panda.demo.action.sampletags;

import java.util.List;
import panda.demo.action.AbstractBeanDaoAction;
import panda.demo.entity.SampleTags;

public class SampleTagsAction extends AbstractBeanDaoAction<SampleTags> {

	/**
	 * Constructor
	 */
	public SampleTagsAction() {
		setType(SampleTags.class);
	}

	/*----------------------------------------------------------------------*
	 * Getter & Setter
	 *----------------------------------------------------------------------*/
	/**
	 * @return the sampleTags
	 */
	public SampleTags getD() {
		return super.getData();
	}

	/**
	 * @param sampleTags the sampleTags to set
	 */
	public void setD(SampleTags sampleTags) {
		super.setData(sampleTags);
	}

	/**
	 * @return the sampleTags list
	 */
	public List<SampleTags> getDs() {
		return super.getDataList();
	}

	/**
	 * @param sampleTagsList the sampleTagsList to set
	 */
	public void setDs(List<SampleTags> sampleTagsList) {
		super.setDataList(sampleTagsList);
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
	 * list_popup
	 * @return SUCCESS
	 * @throws Exception if an error occurs
	 */
	public String list_popup() throws Exception {
		return super.list_popup();
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