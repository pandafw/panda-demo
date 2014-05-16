package panda.demo.entity;

import panda.aems.entity.Bean;
import panda.dao.entity.annotation.Column;
import panda.dao.entity.annotation.Id;
import panda.dao.entity.annotation.Index;
import panda.dao.entity.annotation.Indexes;
import panda.lang.Objects;

@Indexes({
	@Index(name="NAME", fields={ "name" }, unique=true),
	@Index(name="C1", fields={ "compositeUnique1","compositeUnique2" }, unique=true)
})
public class SampleUnique extends Bean {

	private static final long serialVersionUID = -12269521L;

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
	 * @return the compositeUnique1
	 */
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
	 * set properties from the specified object.
	 */
	public void set(SampleUnique src) {
		this.id = src.id;
		this.name = src.name;
		this.compositeUnique1 = src.compositeUnique1;
		this.compositeUnique2 = src.compositeUnique2;
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
	public SampleUnique clone() {
		SampleUnique copy = new SampleUnique();
		
		copy.set(this);

		return copy;
	}

	/**
	 * @return  a hash code value for this object.
	 */
	@Override
	public int hashCode() {
		return Objects.hashCodes(
				id
			);
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
		return Objects.toStringBuilder(this)
				.append(ID, id)
				.append(NAME, name)
				.append(COMPOSITE_UNIQUE1, compositeUnique1)
				.append(COMPOSITE_UNIQUE2, compositeUnique2)
				.appendSuper(super.toString())
				.toString();
	}
}

