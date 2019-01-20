package panda.demo.entity.query;

import panda.app.entity.query.SQuery;
import panda.dao.entity.Entities;
import panda.dao.query.ComparableCondition;
import panda.dao.query.DataQuery;
import panda.dao.query.StringCondition;
import panda.demo.entity.User;

public class UserQuery extends SQuery<User, UserQuery> {
	/**
	 * Constructor
	 */
	public UserQuery() {
		super(Entities.i().getEntity(User.class));
	}

	/**
	 * Constructor
	 * @param query the query to set
	 */
	public UserQuery(DataQuery<User> query) {
		super(query);
	}

	//----------------------------------------------------------------------
	// field conditions
	//----------------------------------------------------------------------
	/**
	 * @return condition of id
	 */
	public ComparableCondition<UserQuery, Long> id() {
		return new ComparableCondition<UserQuery, Long>(this, User.ID);
	}

	/**
	 * @return condition of name
	 */
	public StringCondition<UserQuery> name() {
		return new StringCondition<UserQuery>(this, User.NAME);
	}

	/**
	 * @return condition of email
	 */
	public StringCondition<UserQuery> email() {
		return new StringCondition<UserQuery>(this, User.EMAIL);
	}

	/**
	 * @return condition of password
	 */
	public StringCondition<UserQuery> password() {
		return new StringCondition<UserQuery>(this, User.PASSWORD);
	}

	/**
	 * @return condition of role
	 */
	public StringCondition<UserQuery> role() {
		return new StringCondition<UserQuery>(this, User.ROLE);
	}


}

