package panda.demo.entity;

import java.io.Serializable;
import panda.app.auth.ILogin;
import panda.app.auth.IRole;
import panda.app.auth.IUser;
import panda.app.entity.SBean;
import panda.dao.DaoTypes;
import panda.dao.entity.annotation.Column;
import panda.dao.entity.annotation.Comment;
import panda.dao.entity.annotation.Id;
import panda.dao.entity.annotation.Index;
import panda.dao.entity.annotation.Indexes;
import panda.lang.Objects;
import panda.mvc.annotation.Validate;
import panda.mvc.annotation.Validates;
import panda.mvc.validator.Validators;

@Indexes({
	@Index(name="EMAIL", fields={ "email" }, unique=true)
})
public class User extends SBean implements Serializable, IUser, IRole, ILogin {

	private static final long serialVersionUID = 377071094L;

	/**
	 * Constructor
	 */
	public User() {
		super();
	}

	/*----------------------------------------------------------------------*
	 * Constants
	 *----------------------------------------------------------------------*/
	public static final String ID = "id";
	public static final String NAME = "name";
	public static final String EMAIL = "email";
	public static final String PASSWORD = "password";
	public static final String ROLE = "role";
	public static final String AUTO_LOGIN = "autoLogin";
	public static final String LOGIN_TIME = "loginTime";

	public static final String[] _COLUMNS_ = new String[] {
			ID,
			NAME,
			EMAIL,
			PASSWORD,
			ROLE
		};



	/*----------------------------------------------------------------------*
	 * Properties
	 *----------------------------------------------------------------------*/
	@Id(start=1001)
	@Comment("user id")
	protected Long id;

	@Column(size=50, notNull=true)
	@Comment("user name")
	protected String name;

	@Column(size=100, notNull=true)
	@Comment("user email")
	protected String email;

	@Column(size=50, notNull=true)
	@Comment("password")
	protected String password;

	@Column(type=DaoTypes.VARCHAR, size=5)
	@Comment("Role")
	protected String role;

	protected Boolean autoLogin;

	protected Long loginTime;


	/*----------------------------------------------------------------------*
	 * Getter & Setter
	 *----------------------------------------------------------------------*/
	/**
	 * @return the id
	 */
	@Validates({
		@Validate(value=Validators.CAST, msgId=Validators.MSGID_CAST_NUMBER)
	})
	public Long getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(Long id) {
		this.id = id;
	}

	/**
	 * @return the name
	 */
	@Validates({
		@Validate(value=Validators.STRING, params="{ 'maxLength': 50 }", msgId=Validators.MSGID_STRING_LENTH)
	})
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = panda.lang.Strings.stripToNull(name);
	}

	/**
	 * @return the email
	 */
	@Validates({
		@Validate(value=Validators.STRING, params="{ 'maxLength': 100 }", msgId=Validators.MSGID_STRING_LENTH), 
		@Validate(value=Validators.EMAIL, msgId=Validators.MSGID_EMAIL)
	})
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = panda.lang.Strings.stripToLowerNull(email);
	}

	/**
	 * @return the password
	 */
	@Validates({
		@Validate(value=Validators.STRING, params="{ 'minLength': 6, 'maxLength': 16 }", msgId=Validators.MSGID_STRING_LENTH), 
		@Validate(value=Validators.REGEX, params="{ 'regex': '#(regex-password)' }", msgId=Validators.MSGID_PASSWORD)
	})
	public String getPassword() {
		return password;
	}

	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = panda.lang.Strings.stripToNull(password);
	}

	/**
	 * @return the role
	 */
	@Validates({
		@Validate(value=Validators.CONSTANT, params="{ 'list': '%{consts.authRoleMap}' }", msgId=Validators.MSGID_CONSTANT)
	})
	public String getRole() {
		return role;
	}

	/**
	 * @param role the role to set
	 */
	public void setRole(String role) {
		this.role = panda.lang.Strings.stripToNull(role);
	}

	/**
	 * @return the autoLogin
	 */
	public Boolean getAutoLogin() {
		return autoLogin;
	}

	/**
	 * @param autoLogin the autoLogin to set
	 */
	public void setAutoLogin(Boolean autoLogin) {
		this.autoLogin = autoLogin;
	}

	/**
	 * @return the loginTime
	 */
	public Long getLoginTime() {
		return loginTime;
	}

	/**
	 * @param loginTime the loginTime to set
	 */
	public void setLoginTime(Long loginTime) {
		this.loginTime = loginTime;
	}


	/**
	 * copy properties from the specified object.
	 * @param src the source object to copy
	 */
	public void copy(User src) {
		this.id = src.id;
		this.name = src.name;
		this.email = src.email;
		this.password = src.password;
		this.role = src.role;
		this.autoLogin = src.autoLogin;
		this.loginTime = src.loginTime;
		super.copy(src);
	}

	/*----------------------------------------------------------------------*
	 * Overrides
	 *----------------------------------------------------------------------*/
	/**
	 * Creates and returns a copy of this object.
	 * @return the copy object
	 */
	@Override
	public User clone() {
		User copy = new User();
		
		copy.copy(this);

		return copy;
	}

	/**
	 * @return  a hash code value for this object.
	 */
	@Override
	public int hashCode() {
		return Objects.hashCodes(id);
	}

	/**
	 * @return  <code>true</code> if this object is the same as the obj argument; 
	 * 			<code>false</code> otherwise.
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}

		User rhs = (User)obj;
		return Objects.equalsBuilder()
				.append(id, rhs.id)
				.isEquals();
	}

	/**
	 * @return  a string representation of the object.
	 */
	@Override
	public String toString() {
		return Objects.toStringBuilder()
				.append(ID, id)
				.append(NAME, name)
				.append(EMAIL, email)
				.append(PASSWORD, password)
				.append(ROLE, role)
				.append(AUTO_LOGIN, autoLogin)
				.append(LOGIN_TIME, loginTime)
				.appendSuper(super.toString())
				.toString();
	}
}

