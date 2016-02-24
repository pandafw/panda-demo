package panda.demo.entity;

import java.io.Serializable;
import panda.dao.entity.annotation.Column;
import panda.dao.entity.annotation.Id;
import panda.dao.entity.annotation.Index;
import panda.dao.entity.annotation.Indexes;
import panda.lang.Objects;
import panda.mvc.validation.Validators;
import panda.mvc.validation.annotation.Validate;
import panda.mvc.validation.annotation.Validates;
import panda.wing.entity.Bean;

@Indexes({
	@Index(name="C1", fields={ "compositeUnique1", "compositeUnique2" }, unique=true),
	@Index(name="NAME", fields={ "name" }, unique=true)
})
public class SampleUnique extends Bean implements Serializable {

	private static final long serialVersionUID = -878086870L;

	/**
	 * Constructor
	 */
	public SampleUnique() {
		super();
	}

	/*----------------------------------------------------------------------*
	 * Constants
	 *----------------------------------------------------------------------*/
	public static final String ID = "id";
	public static final String NAME = "name";
	public static final String COMPOSITE_UNIQUE1 = "compositeUnique1";
	public static final String COMPOSITE_UNIQUE2 = "compositeUnique2";

	public static final String[] _COLUMNS_ = new String[] {
			ID,
			NAME,
			COMPOSITE_UNIQUE1,
			COMPOSITE_UNIQUE2
		};



	/*----------------------------------------------------------------------*
	 * Properties
	 *----------------------------------------------------------------------*/
	@Id(start=1001)
	protected Long id;

	@Column(size=100, notNull=true)
	protected String name;

	@Column(size=10, notNull=true)
	protected String compositeUnique1;

	@Column(size=10, notNull=true)
	protected String compositeUnique2;


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
	 * @return the compositeUnique1
	 */
	@Validates({
		@Validate(value=Validators.STRING, params="{ 'maxLength': 10 }", msgId=Validators.MSGID_STRING_LENTH)
	})
	public String getCompositeUnique1() {
		return compositeUnique1;
	}

	/**
	 * @param compositeUnique1 the compositeUnique1 to set
	 */
	public void setCompositeUnique1(String compositeUnique1) {
		this.compositeUnique1 = panda.lang.Strings.stripToNull(compositeUnique1);
	}

	/**
	 * @return the compositeUnique2
	 */
	@Validates({
		@Validate(value=Validators.STRING, params="{ 'maxLength': 10 }", msgId=Validators.MSGID_STRING_LENTH)
	})
	public String getCompositeUnique2() {
		return compositeUnique2;
	}

	/**
	 * @param compositeUnique2 the compositeUnique2 to set
	 */
	public void setCompositeUnique2(String compositeUnique2) {
		this.compositeUnique2 = panda.lang.Strings.stripToNull(compositeUnique2);
	}


	/**
	 * copy properties from the specified object.
	 */
	public void copy(SampleUnique src) {
		this.id = src.id;
		this.name = src.name;
		this.compositeUnique1 = src.compositeUnique1;
		this.compositeUnique2 = src.compositeUnique2;
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
	public SampleUnique clone() {
		SampleUnique copy = new SampleUnique();
		
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

		SampleUnique rhs = (SampleUnique)obj;
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
				.append(COMPOSITE_UNIQUE1, compositeUnique1)
				.append(COMPOSITE_UNIQUE2, compositeUnique2)
				.appendSuper(super.toString())
				.toString();
	}
}

