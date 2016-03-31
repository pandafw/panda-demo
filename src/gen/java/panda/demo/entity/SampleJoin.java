package panda.demo.entity;

import java.io.Serializable;
import panda.dao.entity.annotation.Column;
import panda.dao.entity.annotation.FK;
import panda.dao.entity.annotation.ForeignKeys;
import panda.dao.entity.annotation.Id;
import panda.dao.entity.annotation.Join;
import panda.dao.entity.annotation.JoinColumn;
import panda.dao.entity.annotation.Joins;
import panda.lang.Objects;
import panda.mvc.validation.Validators;
import panda.mvc.validation.annotation.Validate;
import panda.mvc.validation.annotation.Validates;
import panda.wing.entity.Bean;

@ForeignKeys({
	@FK(target=SampleTags.class, fields={ "tagsId" }),
	@FK(target=SampleUnique.class, fields={ "uniqId" })
})
@Joins({
	@Join(name="TF", target=SampleUnique.class, keys="uniqId", refs="id"),
	@Join(name="TN", target=SampleTags.class, keys="tagsId", refs="id")
})
public class SampleJoin extends Bean implements Serializable {

	private static final long serialVersionUID = 228186059L;

	/**
	 * Constructor
	 */
	public SampleJoin() {
		super();
	}

	/*----------------------------------------------------------------------*
	 * Constants
	 *----------------------------------------------------------------------*/
	public static final String ID = "id";
	public static final String TAGS_ID = "tagsId";
	public static final String TAGS_NAME = "tagsName";
	public static final String UNIQ_ID = "uniqId";
	public static final String UNIQ_NAME = "uniqName";

	public static final String[] _COLUMNS_ = new String[] {
			ID,
			TAGS_ID,
			UNIQ_ID
		};

	public static final String[] _JOINS_ = new String[] {
			TAGS_NAME,
			UNIQ_NAME
		};

	public static final String _JOIN_TF_ = "TF";
	public static final String _JOIN_TN_ = "TN";

	/*----------------------------------------------------------------------*
	 * Properties
	 *----------------------------------------------------------------------*/
	@Id(start=1001)
	protected Long id;

	@Column(notNull=true)
	protected Long tagsId;

	@JoinColumn(name="TN", field="name")
	protected String tagsName;

	@Column(notNull=true)
	protected Long uniqId;

	@JoinColumn(name="TF", field="name")
	protected String uniqName;


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
	 * @return the tagsId
	 */
	@Validates({
		@Validate(value=Validators.CAST, msgId=Validators.MSGID_CAST_NUMBER)
	})
	public Long getTagsId() {
		return tagsId;
	}

	/**
	 * @param tagsId the tagsId to set
	 */
	public void setTagsId(Long tagsId) {
		this.tagsId = tagsId;
	}

	/**
	 * @return the tagsName
	 */
	public String getTagsName() {
		return tagsName;
	}

	/**
	 * @param tagsName the tagsName to set
	 */
	public void setTagsName(String tagsName) {
		this.tagsName = panda.lang.Strings.stripToNull(tagsName);
	}

	/**
	 * @return the uniqId
	 */
	@Validates({
		@Validate(value=Validators.CAST, msgId=Validators.MSGID_CAST_NUMBER)
	})
	public Long getUniqId() {
		return uniqId;
	}

	/**
	 * @param uniqId the uniqId to set
	 */
	public void setUniqId(Long uniqId) {
		this.uniqId = uniqId;
	}

	/**
	 * @return the uniqName
	 */
	public String getUniqName() {
		return uniqName;
	}

	/**
	 * @param uniqName the uniqName to set
	 */
	public void setUniqName(String uniqName) {
		this.uniqName = panda.lang.Strings.stripToNull(uniqName);
	}


	/**
	 * copy properties from the specified object.
	 */
	public void copy(SampleJoin src) {
		this.id = src.id;
		this.tagsId = src.tagsId;
		this.tagsName = src.tagsName;
		this.uniqId = src.uniqId;
		this.uniqName = src.uniqName;
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
	public SampleJoin clone() {
		SampleJoin copy = new SampleJoin();
		
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

		SampleJoin rhs = (SampleJoin)obj;
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
				.append(TAGS_ID, tagsId)
				.append(TAGS_NAME, tagsName)
				.append(UNIQ_ID, uniqId)
				.append(UNIQ_NAME, uniqName)
				.appendSuper(super.toString())
				.toString();
	}
}

