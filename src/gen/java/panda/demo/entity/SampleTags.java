package panda.demo.entity;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import panda.aems.entity.CommonBean;
import panda.dao.entity.annotation.Column;
import panda.dao.entity.annotation.Id;
import panda.dao.entity.annotation.Index;
import panda.dao.entity.annotation.Indexes;
import panda.dao.sql.JdbcTypes;
import panda.lang.Objects;

@Indexes({
	@Index(name="NAME", fields={ "name" }, unique=true)
})
public class SampleTags extends CommonBean {

	private static final long serialVersionUID = -1568097799L;

	/**
	 * Constructor
	 */
	public SampleTags() {
		super();
	}

	/*----------------------------------------------------------------------*
	 * Properties
	 *----------------------------------------------------------------------*/
	@Id(start=1001)
	protected Long id;

	@Column(size=100, notNull=true)
	protected String name;

	@Column(size=1)
	protected String styleField;

	@Column(type=JdbcTypes.CHAR, size=1)
	protected Boolean boolField;

	@Column
	protected Integer intField;

	@Column(size=10, scale=2)
	protected BigDecimal decField;

	@Column(type=JdbcTypes.CHAR, size=1)
	protected String radioField;

	@Column(type=JdbcTypes.CHAR, size=1)
	protected String selectField;

	@Column(type=JdbcTypes.VARCHAR, size=100)
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
	 * set properties from the specified object.
	 */
	public void set(SampleTags src) {
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
		super.set(src);
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
		
		copy.set(this);

		return copy;
	}

	/**
	 * @return  a hash code value for this object.
	 */
	@Override
	public int hashCode() {
		return Objects.hashCodeBuilder()
				.append(id)
				.toHashCode();
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
				.append("id", id)
				.append("name", name)
				.append("styleField", styleField)
				.append("boolField", boolField)
				.append("intField", intField)
				.append("decField", decField)
				.append("radioField", radioField)
				.append("selectField", selectField)
				.append("checkField", checkField)
				.append("datetimeField", datetimeField)
				.append("dateField", dateField)
				.append("timeField", timeField)
				.append("htmlField", htmlField)
				.append("bbcodeField", bbcodeField)
				.appendSuper(super.toString())
				.toString();
	}
}

