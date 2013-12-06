package panda.demo.entity.query;

import panda.aems.entity.query.CommonBeanQuery;
import panda.dao.criteria.Query;
import panda.dao.criteria.condition.ComparableCondition;

public class SampleJoinQuery extends CommonBeanQuery<SampleJoinQuery> {
	/**
	 * Constructor
	 */
	public SampleJoinQuery() {
		super();
	}

	/**
	 * Constructor
	 * @param query the query to set
	 */
	public SampleJoinQuery(Query query) {
		super(query);
	}

	//----------------------------------------------------------------------
	// field conditions
	//----------------------------------------------------------------------
	/**
	 * @return condition of id
	 */
	public ComparableCondition<SampleJoinQuery, Long> id() {
		return new ComparableCondition<SampleJoinQuery, Long>(this, "id");
	}

	/**
	 * @return condition of tagsId
	 */
	public ComparableCondition<SampleJoinQuery, Long> tagsId() {
		return new ComparableCondition<SampleJoinQuery, Long>(this, "tagsId");
	}

	/**
	 * @return condition of fileId
	 */
	public ComparableCondition<SampleJoinQuery, Long> fileId() {
		return new ComparableCondition<SampleJoinQuery, Long>(this, "fileId");
	}

}

