package panda.demo.entity.query;

import panda.dao.entity.Entities;
import panda.dao.query.ComparableCondition;
import panda.dao.query.GenericQuery;
import panda.dao.query.ObjectCondition;
import panda.dao.query.Query;
import panda.dao.query.StringCondition;
import panda.demo.entity.SampleFile;
import panda.wing.entity.query.SCUQuery;

public class SampleFileQuery extends SCUQuery<SampleFile, SampleFileQuery> {
	/**
	 * Constructor
	 */
	public SampleFileQuery() {
		super(Entities.i().getEntity(SampleFile.class));
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
		return new ComparableCondition<SampleFileQuery, Long>(this, SampleFile.ID);
	}

	/**
	 * @return condition of name
	 */
	public StringCondition<SampleFileQuery> name() {
		return new StringCondition<SampleFileQuery>(this, SampleFile.NAME);
	}

	/**
	 * @return condition of fileField
	 */
	public ObjectCondition<SampleFileQuery> fileField() {
		return new ObjectCondition<SampleFileQuery>(this, SampleFile.FILE_FIELD);
	}

	/**
	 * @return condition of imageField
	 */
	public ObjectCondition<SampleFileQuery> imageField() {
		return new ObjectCondition<SampleFileQuery>(this, SampleFile.IMAGE_FIELD);
	}


}

