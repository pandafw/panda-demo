package panda.demo.entity;

import panda.aems.entity.CommonBean;
import panda.exts.fileupload.UploadFile;
import panda.exts.fileupload.UploadImage;
import panda.lang.Strings;

public class SampleFile extends CommonBean {
	/**
	 * Constructor
	 */
	public SampleFile() {
		super();
	}

	/*----------------------------------------------------------------------*
	 * Properties
	 *----------------------------------------------------------------------*/
	protected Long id;
	protected String name;
	protected UploadFile fileField;
	protected UploadImage imageField;

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
		this.name = Strings.stripToNull(name);
	}

	/**
	 * @return the fileField
	 */
	public UploadFile getFileField() {
		return fileField;
	}

	/**
	 * @param fileField the fileField to set
	 */
	public void setFileField(UploadFile fileField) {
		this.fileField = fileField;
	}

	/**
	 * @return the imageField
	 */
	public UploadImage getImageField() {
		return imageField;
	}

	/**
	 * @param imageField the imageField to set
	 */
	public void setImageField(UploadImage imageField) {
		this.imageField = imageField;
	}

	/**
	 * set properties from the specified object.
	 */
	public void set(SampleFile src) {
		this.id = src.id;
		this.name = src.name;
		this.fileField = src.fileField;
		this.imageField = src.imageField;
	}

	/**
	 * Creates and returns a copy of this object.
	 * 
	 * @return the copy object
	 */
	@Override
	public SampleFile clone() {
		SampleFile copy = new SampleFile();

		copy.set(this);

		return copy;
	}

	/**
	 * @return a hash code value for this object.
	 */
	@Override
	public int hashCode() {
		return id == null ? 0 : id.hashCode();
	}

	/**
	 * @return <code>true</code> if this object is the same as the obj argument; <code>false</code>
	 *         otherwise.
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

		SampleFile other = (SampleFile)obj;
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
