package panda.demo.entity.query;

import panda.dao.entity.Entities;
import panda.dao.query.ComparableCondition;
import panda.dao.query.EntityQuery;
import panda.dao.query.GenericQuery;
import panda.dao.query.Query;
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
	 * @return condition of uniqId
	 */
	public ComparableCondition<SampleJoinQuery, Long> uniqId() {
		return new ComparableCondition<SampleJoinQuery, Long>(this, SampleJoin.UNIQ_ID);
	}

	/**
	 * @return condition of uniqName
	 */
	public StringCondition<SampleJoinQuery> uniqName() {
		return new StringCondition<SampleJoinQuery>(this, SampleJoin.UNIQ_NAME);
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
	 * auto left join TF
	 * @param jq join table query
	 */
	public SampleJoinQuery autoLeftJoinTF(Query<?> jq) {
		autoLeftJoin(SampleJoin._JOIN_TF_, jq);
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
	 * auto right join TF
	 * @param jq join table query
	 */
	public SampleJoinQuery autoRightJoinTF(Query<?> jq) {
		autoRightJoin(SampleJoin._JOIN_TF_, jq);
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
	 * auto inner join TF
	 * @param jq join table query
	 */
	public SampleJoinQuery autoInnerJoinTF(Query<?> jq) {
		autoInnerJoin(SampleJoin._JOIN_TF_, jq);
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
	 * auto join TF
	 * @param jq join table query
	 */
	public SampleJoinQuery autoJoinTF(Query<?> jq) {
		autoJoin(SampleJoin._JOIN_TF_, jq);
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
	 * auto left join TN
	 * @param jq join table query
	 */
	public SampleJoinQuery autoLeftJoinTN(Query<?> jq) {
		autoLeftJoin(SampleJoin._JOIN_TN_, jq);
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
	 * auto right join TN
	 * @param jq join table query
	 */
	public SampleJoinQuery autoRightJoinTN(Query<?> jq) {
		autoRightJoin(SampleJoin._JOIN_TN_, jq);
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
	 * auto inner join TN
	 * @param jq join table query
	 */
	public SampleJoinQuery autoInnerJoinTN(Query<?> jq) {
		autoInnerJoin(SampleJoin._JOIN_TN_, jq);
		return this;
	}

	/**
	 * auto join TN
	 */
	public SampleJoinQuery autoJoinTN() {
		autoJoin(SampleJoin._JOIN_TN_);
		return this;
	}

	/**
	 * auto join TN
	 * @param jq join table query
	 */
	public SampleJoinQuery autoJoinTN(Query<?> jq) {
		autoJoin(SampleJoin._JOIN_TN_, jq);
		return this;
	}

}

