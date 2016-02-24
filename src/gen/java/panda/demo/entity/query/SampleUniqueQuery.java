package panda.demo.entity.query;

import panda.dao.entity.Entities;
import panda.dao.query.ComparableCondition;
import panda.dao.query.EntityQuery;
import panda.dao.query.GenericQuery;
import panda.dao.query.StringCondition;
import panda.demo.entity.SampleUnique;

public class SampleUniqueQuery extends EntityQuery<SampleUnique, SampleUniqueQuery> {
	/**
	 * Constructor
	 */
	public SampleUniqueQuery() {
		super(Entities.i().getEntity(SampleUnique.class));
	}

	/**
	 * Constructor
	 * @param query the query to set
	 */
	public SampleUniqueQuery(GenericQuery<SampleUnique> query) {
		super(query);
	}

	//----------------------------------------------------------------------
	// field conditions
	//----------------------------------------------------------------------
	/**
	 * @return condition of id
	 */
	public ComparableCondition<SampleUniqueQuery, Long> id() {
		return new ComparableCondition<SampleUniqueQuery, Long>(this, SampleUnique.ID);
	}

	/**
	 * @return condition of name
	 */
	public StringCondition<SampleUniqueQuery> name() {
		return new StringCondition<SampleUniqueQuery>(this, SampleUnique.NAME);
	}

	/**
	 * @return condition of compositeUnique1
	 */
	public StringCondition<SampleUniqueQuery> compositeUnique1() {
		return new StringCondition<SampleUniqueQuery>(this, SampleUnique.COMPOSITE_UNIQUE1);
	}

	/**
	 * @return condition of compositeUnique2
	 */
	public StringCondition<SampleUniqueQuery> compositeUnique2() {
		return new StringCondition<SampleUniqueQuery>(this, SampleUnique.COMPOSITE_UNIQUE2);
	}


}

