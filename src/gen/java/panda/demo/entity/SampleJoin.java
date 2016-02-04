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
	@FK(name="FILE", target=SampleFile.class, fields={ "fileId" })
})
@Joins({
	@Join(name="TF", target=SampleFile.class, keys="fileId", refs="id"),
	@Join(name="TN", target=SampleTags.class, keys="tagsId", refs="id")
})
public class SampleJoin extends Bean implements Serializable {

	private static final long serialVersionUID = 247014085L;

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
	public static final String FILE_ID = "fileId";
	public static final String FILE_NAME = "fileName";

	public static final String[] _COLUMNS_ = new String[] {
			ID,
			TAGS_ID,
			FILE_ID
		};

	public static final String[] _JOINS_ = new String[] {
			TAGS_NAME,
			FILE_NAME
		};

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
	protected Long fileId;

	@JoinColumn(name="TF", field="name")
	protected String fileName;


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
	 * @return the fileId
	 */
	@Validates({
		@Validate(value=Validators.CAST, msgId=Validators.MSGID_CAST_NUMBER)
	})
	public Long getFileId() {
		return fileId;
	}

	/**
	 * @param fileId the fileId to set
	 */
	public void setFileId(Long fileId) {
		this.fileId = fileId;
	}

	/**
	 * @return the fileName
	 */
	public String getFileName() {
		return fileName;
	}

	/**
	 * @param fileName the fileName to set
	 */
	public void setFileName(String fileName) {
		this.fileName = panda.lang.Strings.stripToNull(fileName);
	}


	/**
	 * copy properties from the specified object.
	 */
	public void copy(SampleJoin src) {
		this.id = src.id;
		this.tagsId = src.tagsId;
		this.tagsName = src.tagsName;
		this.fileId = src.fileId;
		this.fileName = src.fileName;
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
				.append(FILE_ID, fileId)
				.append(FILE_NAME, fileName)
				.appendSuper(super.toString())
				.toString();
	}
}

