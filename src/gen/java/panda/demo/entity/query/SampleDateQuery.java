package panda.demo.entity.query;

import java.util.Date;
import panda.dao.entity.Entities;
import panda.dao.query.ComparableCondition;
import panda.dao.query.GenericQuery;
import panda.dao.query.Query;
import panda.demo.entity.SampleDate;
import panda.wing.entity.query.SCUQuery;

public class SampleDateQuery extends SCUQuery<SampleDate, SampleDateQuery> {
	/**
	 * Constructor
	 */
	public SampleDateQuery() {
		super(Entities.i().getEntity(SampleDate.class));
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
		return new ComparableCondition<SampleDateQuery, Long>(this, SampleDate.ID);
	}

	/**
	 * @return condition of popupDatetimeField
	 */
	public ComparableCondition<SampleDateQuery, Date> popupDatetimeField() {
		return new ComparableCondition<SampleDateQuery, Date>(this, SampleDate.POPUP_DATETIME_FIELD);
	}

	/**
	 * @return condition of popupDateField
	 */
	public ComparableCondition<SampleDateQuery, Date> popupDateField() {
		return new ComparableCondition<SampleDateQuery, Date>(this, SampleDate.POPUP_DATE_FIELD);
	}

	/**
	 * @return condition of popupTimeField
	 */
	public ComparableCondition<SampleDateQuery, Date> popupTimeField() {
		return new ComparableCondition<SampleDateQuery, Date>(this, SampleDate.POPUP_TIME_FIELD);
	}

	/**
	 * @return condition of inlineDatetimeField
	 */
	public ComparableCondition<SampleDateQuery, Date> inlineDatetimeField() {
		return new ComparableCondition<SampleDateQuery, Date>(this, SampleDate.INLINE_DATETIME_FIELD);
	}

	/**
	 * @return condition of inlineDateField
	 */
	public ComparableCondition<SampleDateQuery, Date> inlineDateField() {
		return new ComparableCondition<SampleDateQuery, Date>(this, SampleDate.INLINE_DATE_FIELD);
	}

	/**
	 * @return condition of inlineTimeField
	 */
	public ComparableCondition<SampleDateQuery, Date> inlineTimeField() {
		return new ComparableCondition<SampleDateQuery, Date>(this, SampleDate.INLINE_TIME_FIELD);
	}


}

