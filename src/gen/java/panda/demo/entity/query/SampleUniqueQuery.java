package panda.demo.entity.query;

import panda.aems.entity.query.CommonBeanQuery;
import panda.dao.criteria.Query;
import panda.dao.criteria.condition.ComparableCondition;
import panda.dao.criteria.condition.StringCondition;

public class SampleUniqueQuery extends CommonBeanQuery<SampleUniqueQuery> {
	/**
	 * Constructor
	 */
	public SampleUniqueQuery() {
		super();
	}

	/**
	 * Constructor
	 * @param query the query to set
	 */
	public SampleUniqueQuery(Query query) {
		super(query);
	}

	//----------------------------------------------------------------------
	// field conditions
	//----------------------------------------------------------------------
	/**
	 * @return condition of id
	 */
	public ComparableCondition<SampleUniqueQuery, Long> id() {
		return new ComparableCondition<SampleUniqueQuery, Long>(this, "id");
	}

	/**
	 * @return condition of name
	 */
	public StringCondition<SampleUniqueQuery> name() {
		return new StringCondition<SampleUniqueQuery>(this, "name");
	}

	/**
	 * @return condition of compositeUnique1
	 */
	public StringCondition<SampleUniqueQuery> compositeUnique1() {
		return new StringCondition<SampleUniqueQuery>(this, "compositeUnique1");
	}

	/**
	 * @return condition of compositeUnique2
	 */
	public StringCondition<SampleUniqueQuery> compositeUnique2() {
		return new StringCondition<SampleUniqueQuery>(this, "compositeUnique2");
	}

}

