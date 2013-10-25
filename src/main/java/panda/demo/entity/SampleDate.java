package panda.demo.entity;

import java.util.Date;

import panda.aems.entity.CommonBean;
import panda.dao.entity.annotation.Column;
import panda.dao.entity.annotation.Id;

public class SampleDate extends CommonBean {
	/**
	 * Constructor
	 */
	public SampleDate() {
		super();
	}

	/*----------------------------------------------------------------------*
	 * Properties
	 *----------------------------------------------------------------------*/
	@Id
	protected Long id;
	
	@Column
	protected Date popupDatetimeField;
	
	@Column
	protected Date popupDateField;
	
	@Column
	protected Date popupTimeField;
	
	@Column
	protected Date inlineDatetimeField;
	
	@Column
	protected Date inlineDateField;
	
	@Column
	protected Date inlineTimeField;

	/**
	 * @return the id
	 */
	public Long getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(Long id) {
		this.id = id;
	}

	/**
	 * @return the popupDatetimeField
	 */
	public Date getPopupDatetimeField() {
		return popupDatetimeField;
	}

	/**
	 * @param popupDatetimeField the popupDatetimeField to set
	 */
	public void setPopupDatetimeField(Date popupDatetimeField) {
		this.popupDatetimeField = popupDatetimeField;
	}

	/**
	 * @return the popupDateField
	 */
	public Date getPopupDateField() {
		return popupDateField;
	}

	/**
	 * @param popupDateField the popupDateField to set
	 */
	public void setPopupDateField(Date popupDateField) {
		this.popupDateField = popupDateField;
	}

	/**
	 * @return the popupTimeField
	 */
	public Date getPopupTimeField() {
		return popupTimeField;
	}

	/**
	 * @param popupTimeField the popupTimeField to set
	 */
	public void setPopupTimeField(Date popupTimeField) {
		this.popupTimeField = popupTimeField;
	}

	/**
	 * @return the inlineDatetimeField
	 */
	public Date getInlineDatetimeField() {
		return inlineDatetimeField;
	}

	/**
	 * @param inlineDatetimeField the inlineDatetimeField to set
	 */
	public void setInlineDatetimeField(Date inlineDatetimeField) {
		this.inlineDatetimeField = inlineDatetimeField;
	}

	/**
	 * @return the inlineDateField
	 */
	public Date getInlineDateField() {
		return inlineDateField;
	}

	/**
	 * @param inlineDateField the inlineDateField to set
	 */
	public void setInlineDateField(Date inlineDateField) {
		this.inlineDateField = inlineDateField;
	}

	/**
	 * @return the inlineTimeField
	 */
	public Date getInlineTimeField() {
		return inlineTimeField;
	}

	/**
	 * @param inlineTimeField the inlineTimeField to set
	 */
	public void setInlineTimeField(Date inlineTimeField) {
		this.inlineTimeField = inlineTimeField;
	}


	/**
	 * set properties from the specified object.
	 */
	public void set(SampleDate src) {
		this.id = src.id;
		this.popupDatetimeField = src.popupDatetimeField;
		this.popupDateField = src.popupDateField;
		this.popupTimeField = src.popupTimeField;
		this.inlineDatetimeField = src.inlineDatetimeField;
		this.inlineDateField = src.inlineDateField;
		this.inlineTimeField = src.inlineTimeField;
	}

	/**
	 * Creates and returns a copy of this object.
	 * @return the copy object
	 */
	@Override
	public SampleDate clone() {
		SampleDate copy = new SampleDate();
		
		copy.set(this);

		return copy;
	}

	/**
     * @return  a hash code value for this object.
	 */
	@Override
	public int hashCode() {
		return id == null ? 0 : id.hashCode();
	}

	/**
     * @return  <code>true</code> if this object is the same as the obj argument; 
     * 			<code>false</code> otherwise.
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}

		SampleDate other = (SampleDate)obj;
		if (id == null) {
			if (other.id != null) {
				return false;
			}
		}
		else if (!id.equals(other.id)) {
			return false;
		}

		return true;
	}

	/**
	 * @return a string representation of the object.
	 */
	@Override
	public String toString() {
		return super.toString();
	}
}

