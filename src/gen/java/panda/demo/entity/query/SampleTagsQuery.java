package panda.demo.entity.query;

import java.math.BigDecimal;
import java.util.Date;
import panda.aems.entity.query.CommonBeanQuery;
import panda.dao.query.BooleanCondition;
import panda.dao.query.ComparableCondition;
import panda.dao.query.GenericQuery;
import panda.dao.query.StringCondition;
import panda.demo.entity.SampleTags;

public class SampleTagsQuery extends CommonBeanQuery<SampleTags, SampleTagsQuery> {
	/**
	 * Constructor
	 */
	public SampleTagsQuery() {
		super(SampleTags.class);
	}

	/**
	 * Constructor
	 * @param query the query to set
	 */
	public SampleTagsQuery(GenericQuery<SampleTags> query) {
		super(query);
	}

	//----------------------------------------------------------------------
	// field conditions
	//----------------------------------------------------------------------
	/**
	 * @return condition of id
	 */
	public ComparableCondition<SampleTagsQuery, Long> id() {
		return new ComparableCondition<SampleTagsQuery, Long>(this, "id");
	}

	/**
	 * @return condition of name
	 */
	public StringCondition<SampleTagsQuery> name() {
		return new StringCondition<SampleTagsQuery>(this, "name");
	}

	/**
	 * @return condition of styleField
	 */
	public StringCondition<SampleTagsQuery> styleField() {
		return new StringCondition<SampleTagsQuery>(this, "styleField");
	}

	/**
	 * @return condition of boolField
	 */
	public BooleanCondition<SampleTagsQuery> boolField() {
		return new BooleanCondition<SampleTagsQuery>(this, "boolField");
	}

	/**
	 * @return condition of intField
	 */
	public ComparableCondition<SampleTagsQuery, Integer> intField() {
		return new ComparableCondition<SampleTagsQuery, Integer>(this, "intField");
	}

	/**
	 * @return condition of decField
	 */
	public ComparableCondition<SampleTagsQuery, BigDecimal> decField() {
		return new ComparableCondition<SampleTagsQuery, BigDecimal>(this, "decField");
	}

	/**
	 * @return condition of radioField
	 */
	public StringCondition<SampleTagsQuery> radioField() {
		return new StringCondition<SampleTagsQuery>(this, "radioField");
	}

	/**
	 * @return condition of selectField
	 */
	public StringCondition<SampleTagsQuery> selectField() {
		return new StringCondition<SampleTagsQuery>(this, "selectField");
	}

	/**
	 * @return condition of checkField
	 */
	public StringCondition<SampleTagsQuery> checkField() {
		return new StringCondition<SampleTagsQuery>(this, "checkField");
	}

	/**
	 * @return condition of datetimeField
	 */
	public ComparableCondition<SampleTagsQuery, Date> datetimeField() {
		return new ComparableCondition<SampleTagsQuery, Date>(this, "datetimeField");
	}

	/**
	 * @return condition of dateField
	 */
	public ComparableCondition<SampleTagsQuery, Date> dateField() {
		return new ComparableCondition<SampleTagsQuery, Date>(this, "dateField");
	}

	/**
	 * @return condition of timeField
	 */
	public ComparableCondition<SampleTagsQuery, Date> timeField() {
		return new ComparableCondition<SampleTagsQuery, Date>(this, "timeField");
	}

	/**
	 * @return condition of htmlField
	 */
	public StringCondition<SampleTagsQuery> htmlField() {
		return new StringCondition<SampleTagsQuery>(this, "htmlField");
	}

	/**
	 * @return condition of bbcodeField
	 */
	public StringCondition<SampleTagsQuery> bbcodeField() {
		return new StringCondition<SampleTagsQuery>(this, "bbcodeField");
	}

}

