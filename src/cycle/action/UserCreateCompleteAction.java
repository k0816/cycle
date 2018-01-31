package cycle.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import cycle.dao.UserCreateCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class UserCreateCompleteAction extends ActionSupport implements SessionAware {

	private String loginAddress;

	private String loginPassword;

	private String userName;

	private String gender;

	private String birthday;

	public Map<String, Object> session;

	private UserCreateCompleteDAO userCreateCompleteDAO = new UserCreateCompleteDAO();

	public String execute() throws SQLException {

		userCreateCompleteDAO.createUser(
				session.get("loginAddress").toString(),
				session.get("loginPassword").toString(),
				session.get("userName").toString(),
				session.get("gender").toString(),
				session.get("birthday").toString());

		String result = SUCCESS;

		return result;
	}

	public String getLoginAddress() {
	    return loginAddress;
	}

	public void setLoginAddress(String loginAddress) {
	    this.loginAddress = loginAddress;
	}

	public String getLoginPassword() {
	    return loginPassword;
	}

	public void setLoginPassword(String loginPassword) {
	    this.loginPassword = loginPassword;
	}

	public String getUserName() {
	    return userName;
	}

	public void setUserName(String userName) {
	    this.userName = userName;
	}

	public String getGender() {
	    return gender;
	}

	public void setGender(String gender) {
	    this.gender = gender;
	}

	public String getBirthday() {
	    return birthday;
	}

	public void setBirthday(String birthday) {
	    this.birthday = birthday;
	}

	public void setSession(Map<String,Object> session) {
	    this.session = session;
	}
}
