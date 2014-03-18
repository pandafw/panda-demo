package panda.demo.action.samplejoin;

import java.util.List;
import panda.demo.action.AbstractEntityDaoAction;
import panda.demo.entity.SampleJoin;

public class SampleJoinAction extends AbstractEntityDaoAction<SampleJoin> {

	/**
	 * Constructor
	 */
	public SampleJoinAction() {
		setType(SampleJoin.class);
	}

	/*----------------------------------------------------------------------*
	 * Getter & Setter
	 *----------------------------------------------------------------------*/
	/**
	 * @return the sampleJoin
	 */
	public SampleJoin getD() {
		return super.getData();
	}

	/**
	 * @param sampleJoin the sampleJoin to set
	 */
	public void setD(SampleJoin sampleJoin) {
		super.setData(sampleJoin);
	}

	/**
	 * @return the sampleJoin list
	 */
	public List<SampleJoin> getDs() {
		return super.getDataList();
	}

	/**
	 * @param sampleJoinList the sampleJoinList to set
	 */
	public void setDs(List<SampleJoin> sampleJoinList) {
		super.setDataList(sampleJoinList);
	}


	/*----------------------------------------------------------------------*
	 * Actions
	 *----------------------------------------------------------------------*/
	/**
	 * list
	 * @return SUCCESS
	 */
	public String list() {
		return super.list();
	}
	
	/**
	 * list_csv
	 * @return SUCCESS
	 */
	public String list_csv() {
		return super.list_csv();
	}
	
	/**
	 * list_print
	 * @return SUCCESS
	 */
	public String list_print() {
		return super.list_print();
	}
	
	/**
	 * bdelete
	 * @return SUCCESS
	 */
	public String bdelete() {
		return super.bdelete();
	}

	/**
	 * bdelete_execute
	 * @return SUCCESS
	 */
	public String bdelete_execute() {
		return super.bdelete_execute();
	}
	
	/**
	 * view
	 * @return SUCCESS
	 */
	public String view() {
		return super.view();
	}

	/**
	 * view_input
	 * @return SUCCESS
	 */
	public String view_input() {
		return super.view_input();
	}

	/**
	 * print
	 * @return SUCCESS
	 */
	public String print() {
		return super.print();
	}

	/**
	 * print_input
	 * @return SUCCESS
	 */
	public String print_input() {
		return super.print_input();
	}

	/**
	 * copy
	 * @return SUCCESS
	 */
	public String copy() {
		return super.copy();
	}

	/**
	 * copy_input
	 * @return SUCCESS
	 */
	public String copy_input() {
		return super.copy_input();
	}

	/**
	 * copy_confirm
	 * @return SUCCESS
	 */
	public String copy_confirm() {
		return super.copy_confirm();
	}

	/**
	 * copy_execute
	 * @return SUCCESS
	 */
	public String copy_execute() {
		return super.copy_execute();
	}

	/**
	 * insert
	 * @return SUCCESS
	 */
	public String insert() {
		return super.insert();
	}

	/**
	 * insert_input
	 * @return SUCCESS
	 */
	public String insert_input() {
		return super.insert_input();
	}

	/**
	 * insert_confirm
	 * @return SUCCESS
	 */
	public String insert_confirm() {
		return super.insert_confirm();
	}

	/**
	 * insert_execute
	 * @return SUCCESS
	 */
	public String insert_execute() {
		return super.insert_execute();
	}

	/**
	 * update
	 * @return SUCCESS
	 */
	public String update() {
		return super.update();
	}

	/**
	 * update_input
	 * @return SUCCESS
	 */
	public String update_input() {
		return super.update_input();
	}

	/**
	 * update_confirm
	 * @return SUCCESS
	 */
	public String update_confirm() {
		return super.update_confirm();
	}

	/**
	 * update_execute
	 * @return SUCCESS
	 */
	public String update_execute() {
		return super.update_execute();
	}

	/**
	 * delete
	 * @return SUCCESS
	 */
	public String delete() {
		return super.delete();
	}

	/**
	 * delete_execute
	 * @return SUCCESS
	 */
	public String delete_execute() {
		return super.delete_execute();
	}

}