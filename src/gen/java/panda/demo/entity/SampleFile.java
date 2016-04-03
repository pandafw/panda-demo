package panda.demo.entity;

import java.io.Serializable;
import panda.dao.DaoTypes;
import panda.dao.entity.annotation.Column;
import panda.dao.entity.annotation.Id;
import panda.dao.entity.annotation.Index;
import panda.dao.entity.annotation.Indexes;
import panda.lang.Objects;
import panda.mvc.validation.Validators;
import panda.mvc.validation.annotation.Validate;
import panda.mvc.validation.annotation.Validates;
import panda.vfs.FileItem;
import panda.wing.entity.SCUBean;

@Indexes({
	@Index(name="NAME", fields={ "name" }, unique=true)
})
public class SampleFile extends SCUBean implements Serializable {

	private static final long serialVersionUID = 1624995961L;

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
	public static final String FILE_DATA = "fileData";
	public static final String FILE_SIZE = "fileSize";
	public static final String FILE_ITEM = "fileItem";
	public static final String IMAGE_DATA = "imageData";
	public static final String IMAGE_SIZE = "imageSize";
	public static final String IMAGE_ITEM = "imageItem";

	public static final String[] _COLUMNS_ = new String[] {
			ID,
			NAME,
			FILE_DATA,
			FILE_SIZE,
			IMAGE_DATA,
			IMAGE_SIZE
		};



	/*----------------------------------------------------------------------*
	 * Properties
	 *----------------------------------------------------------------------*/
	@Id(start=1001)
	protected Long id;

	@Column(size=100, notNull=true)
	protected String name;

	@Column(type=DaoTypes.BLOB)
	protected byte[] fileData;

	@Column(notNull=true)
	protected Integer fileSize;

	protected FileItem fileItem;

	@Column(type=DaoTypes.BLOB)
	protected byte[] imageData;

	@Column(notNull=true)
	protected Integer imageSize;

	protected FileItem imageItem;


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
	 * @return the fileData
	 */
	public byte[] getFileData() {
		return fileData;
	}

	/**
	 * @param fileData the fileData to set
	 */
	public void setFileData(byte[] fileData) {
		this.fileData = fileData;
	}

	/**
	 * @return the fileSize
	 */
	@Validates({
		@Validate(value=Validators.CAST, msgId=Validators.MSGID_CAST_NUMBER)
	})
	public Integer getFileSize() {
		return fileSize;
	}

	/**
	 * @param fileSize the fileSize to set
	 */
	public void setFileSize(Integer fileSize) {
		this.fileSize = fileSize;
	}

	/**
	 * @return the fileItem
	 */
	@Validates({
		@Validate(value=Validators.FILE, params="{ 'maxLength': 1048576, 'minLength': 1 }", msgId=Validators.MSGID_FILE), 
		@Validate(value=Validators.CAST, msgId=Validators.MSGID_CAST_FILE)
	})
	public FileItem getFileItem() {
		return fileItem;
	}

	/**
	 * @param fileItem the fileItem to set
	 */
	public void setFileItem(FileItem fileItem) {
		this.fileItem = fileItem;
	}

	/**
	 * @return the imageData
	 */
	public byte[] getImageData() {
		return imageData;
	}

	/**
	 * @param imageData the imageData to set
	 */
	public void setImageData(byte[] imageData) {
		this.imageData = imageData;
	}

	/**
	 * @return the imageSize
	 */
	@Validates({
		@Validate(value=Validators.CAST, msgId=Validators.MSGID_CAST_NUMBER)
	})
	public Integer getImageSize() {
		return imageSize;
	}

	/**
	 * @param imageSize the imageSize to set
	 */
	public void setImageSize(Integer imageSize) {
		this.imageSize = imageSize;
	}

	/**
	 * @return the imageItem
	 */
	@Validates({
		@Validate(value=Validators.FILE, params="{ 'maxLength': 1048576, 'minLength': 1 }", msgId=Validators.MSGID_FILE), 
		@Validate(value=Validators.CAST, msgId=Validators.MSGID_CAST_FILE)
	})
	public FileItem getImageItem() {
		return imageItem;
	}

	/**
	 * @param imageItem the imageItem to set
	 */
	public void setImageItem(FileItem imageItem) {
		this.imageItem = imageItem;
	}


	/**
	 * copy properties from the specified object.
	 */
	public void copy(SampleFile src) {
		this.id = src.id;
		this.name = src.name;
		this.fileData = src.fileData;
		this.fileSize = src.fileSize;
		this.fileItem = src.fileItem;
		this.imageData = src.imageData;
		this.imageSize = src.imageSize;
		this.imageItem = src.imageItem;
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
				.append(FILE_DATA, fileData)
				.append(FILE_SIZE, fileSize)
				.append(FILE_ITEM, fileItem)
				.append(IMAGE_DATA, imageData)
				.append(IMAGE_SIZE, imageSize)
				.append(IMAGE_ITEM, imageItem)
				.appendSuper(super.toString())
				.toString();
	}
}

