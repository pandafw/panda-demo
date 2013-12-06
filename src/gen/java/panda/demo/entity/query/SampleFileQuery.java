package panda.demo.entity.query;

import panda.aems.entity.query.CommonBeanQuery;
import panda.dao.criteria.Query;
import panda.dao.criteria.condition.ComparableCondition;
import panda.dao.criteria.condition.ObjectCondition;
import panda.dao.criteria.condition.StringCondition;

public class SampleFileQuery extends CommonBeanQuery<SampleFileQuery> {
	/**
	 * Constructor
	 */
	public SampleFileQuery() {
		super();
	}

	/**
	 * Constructor
	 * @param query the query to set
	 */
	public SampleFileQuery(Query query) {
		super(query);
	}

	//----------------------------------------------------------------------
	// field conditions
	//----------------------------------------------------------------------
	/**
	 * @return condition of id
	 */
	public ComparableCondition<SampleFileQuery, Long> id() {
		return new ComparableCondition<SampleFileQuery, Long>(this, "id");
	}

	/**
	 * @return condition of name
	 */
	public StringCondition<SampleFileQuery> name() {
		return new StringCondition<SampleFileQuery>(this, "name");
	}

	/**
	 * @return condition of fileField
	 */
	public ObjectCondition<SampleFileQuery> fileField() {
		return new ObjectCondition<SampleFileQuery>(this, "fileField");
	}

	/**
	 * @return condition of imageField
	 */
	public ObjectCondition<SampleFileQuery> imageField() {
		return new ObjectCondition<SampleFileQuery>(this, "imageField");
	}

}

