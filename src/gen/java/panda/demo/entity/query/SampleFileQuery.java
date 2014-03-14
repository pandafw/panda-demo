package panda.demo.entity.query;

import panda.aems.entity.query.CommonQuery;
import panda.dao.query.ComparableCondition;
import panda.dao.query.GenericQuery;
import panda.dao.query.ObjectCondition;
import panda.dao.query.StringCondition;
import panda.demo.entity.SampleFile;

public class SampleFileQuery extends CommonQuery<SampleFile, SampleFileQuery> {
	/**
	 * Constructor
	 */
	public SampleFileQuery() {
		super(SampleFile.class);
	}

	/**
	 * Constructor
	 * @param query the query to set
	 */
	public SampleFileQuery(GenericQuery<SampleFile> query) {
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

