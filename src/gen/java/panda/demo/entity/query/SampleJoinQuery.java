package panda.demo.entity.query;

import panda.dao.entity.Entities;
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
		super(Entities.i().getEntity(SampleJoin.class));
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


	//----------------------------------------------------------------------
	// auto joins
	//----------------------------------------------------------------------
	/**
	 * auto left join TF
	 */
	public SampleJoinQuery autoLeftJoinTF() {
		autoLeftJoin(SampleJoin._JOIN_TF_);
		return this;
	}

	/**
	 * auto right join TF
	 */
	public SampleJoinQuery autoRightJoinTF() {
		autoRightJoin(SampleJoin._JOIN_TF_);
		return this;
	}

	/**
	 * auto inner join TF
	 */
	public SampleJoinQuery autoInnerJoinTF() {
		autoInnerJoin(SampleJoin._JOIN_TF_);
		return this;
	}

	/**
	 * auto join TF
	 */
	public SampleJoinQuery autoJoinTF() {
		autoJoin(SampleJoin._JOIN_TF_);
		return this;
	}

	/**
	 * auto left join TN
	 */
	public SampleJoinQuery autoLeftJoinTN() {
		autoLeftJoin(SampleJoin._JOIN_TN_);
		return this;
	}

	/**
	 * auto right join TN
	 */
	public SampleJoinQuery autoRightJoinTN() {
		autoRightJoin(SampleJoin._JOIN_TN_);
		return this;
	}

	/**
	 * auto inner join TN
	 */
	public SampleJoinQuery autoInnerJoinTN() {
		autoInnerJoin(SampleJoin._JOIN_TN_);
		return this;
	}

	/**
	 * auto join TN
	 */
	public SampleJoinQuery autoJoinTN() {
		autoJoin(SampleJoin._JOIN_TN_);
		return this;
	}

}

