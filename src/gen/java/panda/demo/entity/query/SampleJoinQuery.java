package panda.demo.entity.query;

import panda.aems.entity.query.CommonBeanQuery;
import panda.dao.query.ComparableCondition;
import panda.dao.query.GenericQuery;
import panda.demo.entity.SampleJoin;

public class SampleJoinQuery extends CommonBeanQuery<SampleJoin, SampleJoinQuery> {
	/**
	 * Constructor
	 */
	public SampleJoinQuery() {
		super(SampleJoin.class);
	}

	/**
	 * Constructor
	 * @param query the query to set
	 */
	public SampleJoinQuery(GenericQuery<SampleJoin> query) {
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

