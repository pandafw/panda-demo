package panda.demo.entity;

import java.util.Date;
import panda.dao.entity.annotation.Column;
import panda.dao.entity.annotation.Id;
import panda.lang.Objects;
import panda.mvc.validation.Validators;
import panda.mvc.validation.annotation.Validate;
import panda.mvc.validation.annotation.Validates;
import panda.wing.entity.SCUBean;

public class SampleDate extends SCUBean {

	private static final long serialVersionUID = 333658368L;

	/**
	 * Constructor
	 */
	public SampleDate() {
		super();
	}

	/*----------------------------------------------------------------------*
	 * Constants
	 *----------------------------------------------------------------------*/
	public static final String ID = "id";
	public static final String POPUP_DATETIME_FIELD = "popupDatetimeField";
	public static final String POPUP_DATE_FIELD = "popupDateField";
	public static final String POPUP_TIME_FIELD = "popupTimeField";
	public static final String INLINE_DATETIME_FIELD = "inlineDatetimeField";
	public static final String INLINE_DATE_FIELD = "inlineDateField";
	public static final String INLINE_TIME_FIELD = "inlineTimeField";

	public static final String[] COLUMNS = new String[] {
			ID,
			POPUP_DATETIME_FIELD,
			POPUP_DATE_FIELD,
			POPUP_TIME_FIELD,
			INLINE_DATETIME_FIELD,
			INLINE_DATE_FIELD,
			INLINE_TIME_FIELD
		};

	/*----------------------------------------------------------------------*
	 * Properties
	 *----------------------------------------------------------------------*/
	@Id(start=1001)
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


	/*----------------------------------------------------------------------*
	 * Getter & Setter
	 *----------------------------------------------------------------------*/
	/**
	 * @return the id
	 */
	@Validates({
		@Validate(value=Validators.CAST, msgId=Validators.MSGID_CAST_NUMBER)
	})
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
	@Validates({
		@Validate(value=Validators.CAST, msgId=Validators.MSGID_CAST_DATE)
	})
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
	@Validates({
		@Validate(value=Validators.CAST, msgId=Validators.MSGID_CAST_DATE)
	})
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
	@Validates({
		@Validate(value=Validators.CAST, msgId=Validators.MSGID_CAST_DATE)
	})
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
	@Validates({
		@Validate(value=Validators.CAST, msgId=Validators.MSGID_CAST_DATE)
	})
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
	@Validates({
		@Validate(value=Validators.CAST, msgId=Validators.MSGID_CAST_DATE)
	})
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
	@Validates({
		@Validate(value=Validators.CAST, msgId=Validators.MSGID_CAST_DATE)
	})
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
	 * copy properties from the specified object.
	 */
	public void copy(SampleDate src) {
		this.id = src.id;
		this.popupDatetimeField = src.popupDatetimeField;
		this.popupDateField = src.popupDateField;
		this.popupTimeField = src.popupTimeField;
		this.inlineDatetimeField = src.inlineDatetimeField;
		this.inlineDateField = src.inlineDateField;
		this.inlineTimeField = src.inlineTimeField;
		super.copy(src);
	}

	/*----------------------------------------------------------------------*
	 * Overrides
	 *----------------------------------------------------------------------*/
	/**
	 * Creates and returns a copy of this object.
	 * @return the copy object
	 */
	@Override
	public SampleDate clone() {
		SampleDate copy = new SampleDate();
		
		copy.copy(this);

		return copy;
	}

	/**
	 * @return  a hash code value for this object.
	 */
	@Override
	public int hashCode() {
		return Objects.hashCodes(id);
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

		SampleDate rhs = (SampleDate)obj;
		return Objects.equalsBuilder()
				.append(id, rhs.id)
				.isEquals();
	}

	/**
	 * @return  a string representation of the object.
	 */
	@Override
	public String toString() {
		return Objects.toStringBuilder()
				.append(ID, id)
				.append(POPUP_DATETIME_FIELD, popupDatetimeField)
				.append(POPUP_DATE_FIELD, popupDateField)
				.append(POPUP_TIME_FIELD, popupTimeField)
				.append(INLINE_DATETIME_FIELD, inlineDatetimeField)
				.append(INLINE_DATE_FIELD, inlineDateField)
				.append(INLINE_TIME_FIELD, inlineTimeField)
				.appendSuper(super.toString())
				.toString();
	}
}

