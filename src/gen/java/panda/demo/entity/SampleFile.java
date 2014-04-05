package panda.demo.entity;

import panda.aems.entity.SCUBean;
import panda.dao.DaoTypes;
import panda.dao.entity.annotation.Column;
import panda.dao.entity.annotation.Id;
import panda.dao.entity.annotation.Index;
import panda.dao.entity.annotation.Indexes;
import panda.exts.fileupload.UploadFile;
import panda.exts.fileupload.UploadImage;
import panda.lang.Objects;

@Indexes({
	@Index(name="NAME", fields={ "name" }, unique=true)
})
public class SampleFile extends SCUBean {

	private static final long serialVersionUID = 1118226592L;

	/**
	 * Constructor
	 */
	public SampleFile() {
		super();
	}

	/*----------------------------------------------------------------------*
	 * Constants
	 *----------------------------------------------------------------------*/
	public static final String ID = "id";

	public static final String NAME = "name";

	public static final String FILE_FIELD = "fileField";

	public static final String IMAGE_FIELD = "imageField";


	/*----------------------------------------------------------------------*
	 * Properties
	 *----------------------------------------------------------------------*/
	@Id(start=1001)
	protected Long id;

	@Column(size=100, notNull=true)
	protected String name;

	@Column(type=DaoTypes.BLOB)
	protected UploadFile fileField;

	@Column(type=DaoTypes.BLOB)
	protected UploadImage imageField;


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
	public SampleFile clone() {
		SampleFile copy = new SampleFile();
		
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

		SampleFile rhs = (SampleFile)obj;
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
				.append(FILE_FIELD, fileField)
				.append(IMAGE_FIELD, imageField)
				.appendSuper(super.toString())
				.toString();
	}
}

