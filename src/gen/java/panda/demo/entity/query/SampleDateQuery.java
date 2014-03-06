package panda.demo.entity.query;

import java.util.Date;

import panda.aems.entity.query.CommonBeanQuery;
import panda.dao.query.ComparableCondition;
import panda.dao.query.GenericQuery;
import panda.demo.entity.SampleDate;

public class SampleDateQuery extends CommonBeanQuery<SampleDate, SampleDateQuery> {
	/**
	 * Constructor
	 */
	public SampleDateQuery() {
		super(SampleDate.class);
	}

	/**
	 * Constructor
	 * @param query the query to set
	 */
	public SampleDateQuery(GenericQuery<SampleDate> query) {
		super(query);
	}

	//----------------------------------------------------------------------
	// field conditions
	//----------------------------------------------------------------------
	/**
	 * @return condition of id
	 */
	public ComparableCondition<SampleDateQuery, Long> id() {
		return new ComparableCondition<SampleDateQuery, Long>(this, "id");
	}

	/**
	 * @return condition of popupDatetimeField
	 */
	public ComparableCondition<SampleDateQuery, Date> popupDatetimeField() {
		return new ComparableCondition<SampleDateQuery, Date>(this, "popupDatetimeField");
	}

	/**
	 * @return condition of popupDateField
	 */
	public ComparableCondition<SampleDateQuery, Date> popupDateField() {
		return new ComparableCondition<SampleDateQuery, Date>(this, "popupDateField");
	}

	/**
	 * @return condition of popupTimeField
	 */
	public ComparableCondition<SampleDateQuery, Date> popupTimeField() {
		return new ComparableCondition<SampleDateQuery, Date>(this, "popupTimeField");
	}

	/**
	 * @return condition of inlineDatetimeField
	 */
	public ComparableCondition<SampleDateQuery, Date> inlineDatetimeField() {
		return new ComparableCondition<SampleDateQuery, Date>(this, "inlineDatetimeField");
	}

	/**
	 * @return condition of inlineDateField
	 */
	public ComparableCondition<SampleDateQuery, Date> inlineDateField() {
		return new ComparableCondition<SampleDateQuery, Date>(this, "inlineDateField");
	}

	/**
	 * @return condition of inlineTimeField
	 */
	public ComparableCondition<SampleDateQuery, Date> inlineTimeField() {
		return new ComparableCondition<SampleDateQuery, Date>(this, "inlineTimeField");
	}

}

