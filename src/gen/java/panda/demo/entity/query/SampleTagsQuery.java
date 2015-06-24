package panda.demo.entity.query;

import java.math.BigDecimal;
import java.util.Date;
import panda.dao.query.BooleanCondition;
import panda.dao.query.ComparableCondition;
import panda.dao.query.GenericQuery;
import panda.dao.query.StringCondition;
import panda.demo.entity.SampleTags;
import panda.wing.entity.query.SCUQuery;

public class SampleTagsQuery extends SCUQuery<SampleTags, SampleTagsQuery> {
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
		return new ComparableCondition<SampleTagsQuery, Long>(this, SampleTags.ID);
	}

	/**
	 * @return condition of name
	 */
	public StringCondition<SampleTagsQuery> name() {
		return new StringCondition<SampleTagsQuery>(this, SampleTags.NAME);
	}

	/**
	 * @return condition of styleField
	 */
	public StringCondition<SampleTagsQuery> styleField() {
		return new StringCondition<SampleTagsQuery>(this, SampleTags.STYLE_FIELD);
	}

	/**
	 * @return condition of boolField
	 */
	public BooleanCondition<SampleTagsQuery> boolField() {
		return new BooleanCondition<SampleTagsQuery>(this, SampleTags.BOOL_FIELD);
	}

	/**
	 * @return condition of intField
	 */
	public ComparableCondition<SampleTagsQuery, Integer> intField() {
		return new ComparableCondition<SampleTagsQuery, Integer>(this, SampleTags.INT_FIELD);
	}

	/**
	 * @return condition of decField
	 */
	public ComparableCondition<SampleTagsQuery, BigDecimal> decField() {
		return new ComparableCondition<SampleTagsQuery, BigDecimal>(this, SampleTags.DEC_FIELD);
	}

	/**
	 * @return condition of radioField
	 */
	public StringCondition<SampleTagsQuery> radioField() {
		return new StringCondition<SampleTagsQuery>(this, SampleTags.RADIO_FIELD);
	}

	/**
	 * @return condition of selectField
	 */
	public StringCondition<SampleTagsQuery> selectField() {
		return new StringCondition<SampleTagsQuery>(this, SampleTags.SELECT_FIELD);
	}

	/**
	 * @return condition of checkField
	 */
	public StringCondition<SampleTagsQuery> checkField() {
		return new StringCondition<SampleTagsQuery>(this, SampleTags.CHECK_FIELD);
	}

	/**
	 * @return condition of datetimeField
	 */
	public ComparableCondition<SampleTagsQuery, Date> datetimeField() {
		return new ComparableCondition<SampleTagsQuery, Date>(this, SampleTags.DATETIME_FIELD);
	}

	/**
	 * @return condition of dateField
	 */
	public ComparableCondition<SampleTagsQuery, Date> dateField() {
		return new ComparableCondition<SampleTagsQuery, Date>(this, SampleTags.DATE_FIELD);
	}

	/**
	 * @return condition of timeField
	 */
	public ComparableCondition<SampleTagsQuery, Date> timeField() {
		return new ComparableCondition<SampleTagsQuery, Date>(this, SampleTags.TIME_FIELD);
	}

	/**
	 * @return condition of htmlField
	 */
	public StringCondition<SampleTagsQuery> htmlField() {
		return new StringCondition<SampleTagsQuery>(this, SampleTags.HTML_FIELD);
	}

	/**
	 * @return condition of bbcodeField
	 */
	public StringCondition<SampleTagsQuery> bbcodeField() {
		return new StringCondition<SampleTagsQuery>(this, SampleTags.BBCODE_FIELD);
	}

}

