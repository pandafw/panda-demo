package panda.demo.entity;

import panda.dao.DaoTypes;
import panda.dao.entity.annotation.Column;
import panda.dao.entity.annotation.Id;
import panda.dao.entity.annotation.Index;
import panda.dao.entity.annotation.Indexes;
import panda.filepool.FileItem;
import panda.lang.Objects;
import panda.mvc.validation.Validators;
import panda.mvc.validation.annotation.Validate;
import panda.mvc.validation.annotation.Validates;
import panda.wing.entity.SCUBean;

@Indexes({
	@Index(name="NAME", fields={ "name" }, unique=true)
})
public class SampleFile extends SCUBean {

	private static final long serialVersionUID = -97951339L;

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

	public static final String[] COLUMNS = new String[] {
			ID,
			NAME,
			FILE_FIELD,
			IMAGE_FIELD
		};

	/*----------------------------------------------------------------------*
	 * Properties
	 *----------------------------------------------------------------------*/
	@Id(start=1001)
	protected Long id;

	@Column(size=100, notNull=true)
	protected String name;

	@Column(type=DaoTypes.BLOB)
	protected FileItem fileField;

	@Column(type=DaoTypes.BLOB)
	protected FileItem imageField;


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
	 * @return the name
	 */
	@Validates({
		@Validate(value=Validators.STRING, params="{ 'maxLength': 100 }", msgId=Validators.MSGID_STRING_LENTH)
	})
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
	@Validates({
		@Validate(value=Validators.FILE, params="{ 'maxLength': 1048576, 'minLength': 1 }", msgId=Validators.MSGID_FILE_LENTH), 
		@Validate(value=Validators.CAST, msgId=Validators.MSGID_CAST_FILE)
	})
	public FileItem getFileField() {
		return fileField;
	}

	/**
	 * @param fileField the fileField to set
	 */
	public void setFileField(FileItem fileField) {
		this.fileField = fileField;
	}

	/**
	 * @return the imageField
	 */
	@Validates({
		@Validate(value=Validators.FILE, params="{ 'maxLength': 1048576, 'minLength': 1 }", msgId=Validators.MSGID_FILE_LENTH), 
		@Validate(value=Validators.CAST, msgId=Validators.MSGID_CAST_FILE)
	})
	public FileItem getImageField() {
		return imageField;
	}

	/**
	 * @param imageField the imageField to set
	 */
	public void setImageField(FileItem imageField) {
		this.imageField = imageField;
	}


	/**
	 * copy properties from the specified object.
	 */
	public void copy(SampleFile src) {
		this.id = src.id;
		this.name = src.name;
		this.fileField = src.fileField;
		this.imageField = src.imageField;
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
	public SampleFile clone() {
		SampleFile copy = new SampleFile();
		
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
		return Objects.toStringBuilder()
				.append(ID, id)
				.append(NAME, name)
				.append(FILE_FIELD, fileField)
				.append(IMAGE_FIELD, imageField)
				.appendSuper(super.toString())
				.toString();
	}
}

