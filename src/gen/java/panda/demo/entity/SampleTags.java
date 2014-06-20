package panda.demo.entity;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import panda.aems.entity.SCUBean;
import panda.dao.DaoTypes;
import panda.dao.entity.annotation.Column;
import panda.dao.entity.annotation.Id;
import panda.dao.entity.annotation.Index;
import panda.dao.entity.annotation.Indexes;
import panda.lang.Objects;

@Indexes({
	@Index(name="NAME", fields={ "name" }, unique=true)
})
public class SampleTags extends SCUBean {

	private static final long serialVersionUID = -849349710L;

	/**
	 * Constructor
	 */
	public SampleTags() {
		super();
	}

	/*----------------------------------------------------------------------*
	 * Constants
	 *----------------------------------------------------------------------*/
	public static final String ID = "id";
	public static final String NAME = "name";
	public static final String STYLE_FIELD = "styleField";
	public static final String BOOL_FIELD = "boolField";
	public static final String INT_FIELD = "intField";
	public static final String DEC_FIELD = "decField";
	public static final String RADIO_FIELD = "radioField";
	public static final String SELECT_FIELD = "selectField";
	public static final String CHECK_FIELD = "checkField";
	public static final String DATETIME_FIELD = "datetimeField";
	public static final String DATE_FIELD = "dateField";
	public static final String TIME_FIELD = "timeField";
	public static final String HTML_FIELD = "htmlField";
	public static final String BBCODE_FIELD = "bbcodeField";

	public static final String[] COLUMNS = new String[] {
			ID,
			NAME,
			STYLE_FIELD,
			BOOL_FIELD,
			INT_FIELD,
			DEC_FIELD,
			RADIO_FIELD,
			SELECT_FIELD,
			CHECK_FIELD,
			DATETIME_FIELD,
			DATE_FIELD,
			TIME_FIELD,
			HTML_FIELD,
			BBCODE_FIELD
		};

	/*----------------------------------------------------------------------*
	 * Properties
	 *----------------------------------------------------------------------*/
	@Id(start=1001)
	protected Long id;

	@Column(size=100, notNull=true)
	protected String name;

	@Column(size=1)
	protected String styleField;

	@Column(type=DaoTypes.CHAR, size=1)
	protected Boolean boolField;

	@Column
	protected Integer intField;

	@Column(size=10, scale=2)
	protected BigDecimal decField;

	@Column(type=DaoTypes.CHAR, size=1)
	protected String radioField;

	@Column(type=DaoTypes.CHAR, size=1)
	protected String selectField;

	@Column(type=DaoTypes.VARCHAR, size=100)
	protected List<String> checkField;

	@Column
	protected Date datetimeField;

	@Column
	protected Date dateField;

	@Column
	protected Date timeField;

	@Column(size=1000)
	protected String htmlField;

	@Column(size=1000)
	protected String bbcodeField;


	/*----------------------------------------------------------------------*
	 * Getter & Setter
	 *----------------------------------------------------------------------*/
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
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = panda.lang.Strings.stripToNull(name);
	}

	/**
	 * @return the styleField
	 */
	public String getStyleField() {
		return styleField;
	}

	/**
	 * @param styleField the styleField to set
	 */
	public void setStyleField(String styleField) {
		this.styleField = panda.lang.Strings.stripToNull(styleField);
	}

	/**
	 * @return the boolField
	 */
	public Boolean getBoolField() {
		return boolField;
	}

	/**
	 * @param boolField the boolField to set
	 */
	public void setBoolField(Boolean boolField) {
		this.boolField = boolField;
	}

	/**
	 * @return the intField
	 */
	public Integer getIntField() {
		return intField;
	}

	/**
	 * @param intField the intField to set
	 */
	public void setIntField(Integer intField) {
		this.intField = intField;
	}

	/**
	 * @return the decField
	 */
	public BigDecimal getDecField() {
		return decField;
	}

	/**
	 * @param decField the decField to set
	 */
	public void setDecField(BigDecimal decField) {
		this.decField = decField;
	}

	/**
	 * @return the radioField
	 */
	public String getRadioField() {
		return radioField;
	}

	/**
	 * @param radioField the radioField to set
	 */
	public void setRadioField(String radioField) {
		this.radioField = panda.lang.Strings.stripToNull(radioField);
	}

	/**
	 * @return the selectField
	 */
	public String getSelectField() {
		return selectField;
	}

	/**
	 * @param selectField the selectField to set
	 */
	public void setSelectField(String selectField) {
		this.selectField = panda.lang.Strings.stripToNull(selectField);
	}

	/**
	 * @return the checkField
	 */
	public List<String> getCheckField() {
		return checkField;
	}

	/**
	 * @param checkField the checkField to set
	 */
	public void setCheckField(List<String> checkField) {
		this.checkField = checkField;
	}

	/**
	 * @return the datetimeField
	 */
	public Date getDatetimeField() {
		return datetimeField;
	}

	/**
	 * @param datetimeField the datetimeField to set
	 */
	public void setDatetimeField(Date datetimeField) {
		this.datetimeField = datetimeField;
	}

	/**
	 * @return the dateField
	 */
	public Date getDateField() {
		return dateField;
	}

	/**
	 * @param dateField the dateField to set
	 */
	public void setDateField(Date dateField) {
		this.dateField = dateField;
	}

	/**
	 * @return the timeField
	 */
	public Date getTimeField() {
		return timeField;
	}

	/**
	 * @param timeField the timeField to set
	 */
	public void setTimeField(Date timeField) {
		this.timeField = timeField;
	}

	/**
	 * @return the htmlField
	 */
	public String getHtmlField() {
		return htmlField;
	}

	/**
	 * @param htmlField the htmlField to set
	 */
	public void setHtmlField(String htmlField) {
		this.htmlField = panda.lang.Strings.stripToNull(htmlField);
	}

	/**
	 * @return the bbcodeField
	 */
	public String getBbcodeField() {
		return bbcodeField;
	}

	/**
	 * @param bbcodeField the bbcodeField to set
	 */
	public void setBbcodeField(String bbcodeField) {
		this.bbcodeField = panda.lang.Strings.stripToNull(bbcodeField);
	}


	/**
	 * copy properties from the specified object.
	 */
	public void copy(SampleTags src) {
		this.id = src.id;
		this.name = src.name;
		this.styleField = src.styleField;
		this.boolField = src.boolField;
		this.intField = src.intField;
		this.decField = src.decField;
		this.radioField = src.radioField;
		this.selectField = src.selectField;
		this.checkField = src.checkField;
		this.datetimeField = src.datetimeField;
		this.dateField = src.dateField;
		this.timeField = src.timeField;
		this.htmlField = src.htmlField;
		this.bbcodeField = src.bbcodeField;
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
	public SampleTags clone() {
		SampleTags copy = new SampleTags();
		
		copy.copy(this);

		return copy;
	}

	/**
	 * @return  a hash code value for this object.
	 */
	@Override
	public int hashCode() {
		return Objects.hashCodes(
				id
			);
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

		SampleTags rhs = (SampleTags)obj;
		return Objects.equalsBuilder()
				.append(id, rhs.id)
				.isEquals();
	}

	/**
	 * @return  a string representation of the object.
	 */
	@Override
	public String toString() {
		return Objects.toStringBuilder(this)
				.append(ID, id)
				.append(NAME, name)
				.append(STYLE_FIELD, styleField)
				.append(BOOL_FIELD, boolField)
				.append(INT_FIELD, intField)
				.append(DEC_FIELD, decField)
				.append(RADIO_FIELD, radioField)
				.append(SELECT_FIELD, selectField)
				.append(CHECK_FIELD, checkField)
				.append(DATETIME_FIELD, datetimeField)
				.append(DATE_FIELD, dateField)
				.append(TIME_FIELD, timeField)
				.append(HTML_FIELD, htmlField)
				.append(BBCODE_FIELD, bbcodeField)
				.appendSuper(super.toString())
				.toString();
	}
}

