package panda.demo.entity.query;

import panda.dao.query.ComparableCondition;
import panda.dao.query.EntityQuery;
import panda.dao.query.GenericQuery;
import panda.dao.query.StringCondition;
import panda.demo.entity.SampleJoin;

public class SampleJoinQuery extends EntityQuery<SampleJoin, SampleJoinQuery> {
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
		return new ComparableCondition<SampleJoinQuery, Long>(this, SampleJoin.ID);
	}

	/**
	 * @return condition of tagsId
	 */
	public ComparableCondition<SampleJoinQuery, Long> tagsId() {
		return new ComparableCondition<SampleJoinQuery, Long>(this, SampleJoin.TAGS_ID);
	}

	/**
	 * @return condition of tagsName
	 */
	public StringCondition<SampleJoinQuery> tagsName() {
		return new StringCondition<SampleJoinQuery>(this, SampleJoin.TAGS_NAME);
	}

	/**
	 * @return condition of fileId
	 */
	public ComparableCondition<SampleJoinQuery, Long> fileId() {
		return new ComparableCondition<SampleJoinQuery, Long>(this, SampleJoin.FILE_ID);
	}

	/**
	 * @return condition of fileName
	 */
	public StringCondition<SampleJoinQuery> fileName() {
		return new StringCondition<SampleJoinQuery>(this, SampleJoin.FILE_NAME);
	}

}

