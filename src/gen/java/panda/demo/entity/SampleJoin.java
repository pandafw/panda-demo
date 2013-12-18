package panda.demo.entity;

import panda.aems.entity.CommonBean;
import panda.dao.entity.annotation.Column;
import panda.dao.entity.annotation.FK;
import panda.dao.entity.annotation.ForeignKeys;
import panda.dao.entity.annotation.Id;
import panda.dao.entity.annotation.Join;
import panda.dao.entity.annotation.JoinColumn;
import panda.dao.entity.annotation.Joins;
import panda.lang.Objects;

@ForeignKeys({
	@FK(target=SampleTags.class, fields={ "tagsId" }),
	@FK(name="FILE", target=SampleFile.class, fields={ "fileId" })
})
@Joins({
	@Join(name="TF", target=SampleFile.class, keys="fileId", refs="id"),
	@Join(name="TN", target=SampleTags.class, keys="tagsId", refs="id")
})
public class SampleJoin extends CommonBean {

	private static final long serialVersionUID = -803747059L;

	/**
	 * Constructor
	 */
	public SampleJoin() {
		super();
	}

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
	 * set properties from the specified object.
	 */
	public void set(SampleJoin src) {
		this.id = src.id;
		this.tagsId = src.tagsId;
		this.tagsName = src.tagsName;
		this.fileId = src.fileId;
		this.fileName = src.fileName;
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
	public SampleJoin clone() {
		SampleJoin copy = new SampleJoin();
		
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
		return Objects.toStringBuilder(this)
				.append("id", id)
				.append("tagsId", tagsId)
				.append("tagsName", tagsName)
				.append("fileId", fileId)
				.append("fileName", fileName)
				.appendSuper(super.toString())
				.toString();
	}
}

