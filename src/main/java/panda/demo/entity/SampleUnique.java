package panda.demo.entity;

import panda.aems.entity.CommonBean;
import panda.lang.Strings;

public class SampleUnique extends CommonBean {
	/**
	 * Constructor
	 */
	public SampleUnique() {
		super();
	}

	/*----------------------------------------------------------------------*
	 * Properties
	 *----------------------------------------------------------------------*/
	protected Long id;
	protected String name;
	protected String compositeUnique1;
	protected String compositeUnique2;

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
	 * @return the compositeUnique1
	 */
	public String getCompositeUnique1() {
		return compositeUnique1;
	}

	/**
	 * @param compositeUnique1 the compositeUnique1 to set
	 */
	public void setCompositeUnique1(String compositeUnique1) {
		this.compositeUnique1 = Strings.stripToNull(compositeUnique1);
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
		this.compositeUnique2 = Strings.stripToNull(compositeUnique2);
	}


	/**
	 * set properties from the specified object.
	 */
	public void set(SampleUnique src) {
		this.id = src.id;
		this.name = src.name;
		this.compositeUnique1 = src.compositeUnique1;
		this.compositeUnique2 = src.compositeUnique2;
	}

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

		SampleUnique other = (SampleUnique)obj;
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

