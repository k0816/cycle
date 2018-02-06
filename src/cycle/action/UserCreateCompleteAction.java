package cycle.action;

import java.sql.SQLException;
import java.util.Map;

import cycle.dao.UserCreateCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class UserCreateCompleteAction extends ActionSupport {

	private String loginAddress;

	private String loginPassword;

	private String userName;

	private String gender;

	private String year;

	private String month;

	private String day;

	private String message;
	private String errorMessage;

	public Map<String, Object> session;

	private UserCreateCompleteDAO userCreateCompleteDAO = new UserCreateCompleteDAO();

	public String execute() throws SQLException {

		String result = ERROR;

		int count = userCreateCompleteDAO.createUser(loginAddress,loginPassword,userName,gender,year,month,day);

		if(count > 0) {
			message="会員登録が完了いたしました。";
			result = SUCCESS;


		}else{
			errorMessage="削除に失敗いたしました。";
			result= ERROR;
		}

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

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}

}