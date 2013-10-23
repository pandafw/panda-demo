package panda.demo.entity;

import panda.aems.entity.CommonBean;
import panda.lang.Strings;

public class SampleJoin extends CommonBean {
	/**
	 * Constructor
	 */
	public SampleJoin() {
		super();
	}

	/*----------------------------------------------------------------------*
	 * Properties
	 *----------------------------------------------------------------------*/
	protected Long id;
	protected Long tagsId;
	protected String tagsName;
	protected Long fileId;
	protected String fileName;

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
		this.tagsName = Strings.stripToNull(tagsName);
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
		this.fileName = Strings.stripToNull(fileName);
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
	}

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

		SampleJoin other = (SampleJoin)obj;
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

