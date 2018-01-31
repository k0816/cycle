package cycle.action;

import java.sql.SQLException;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;
import com.opensymphony.xwork2.ActionSupport;

import cycle.dao.UserInfoEditCompleteDAO;

public class UserInfoEditCompleteAction extends ActionSupport implements SessionAware{

	private String loginAddress;
	private String loginPassword;
	private String userId;
	private String userName;
	private String gender;
	private String birthday;
	private String updatedDate;

	private String message;
	private String errorMessage;

	public Map<String, Object> session;



	public String execute() throws SQLException {

		String result = ERROR;

		System.out.println("UserInfoEditCompleteAction----------");
		System.out.println(loginAddress);
		System.out.println(loginPassword);
		System.out.println(userId);
		System.out.println(userName);
		System.out.println(gender);
		System.out.println(birthday);
		System.out.println("----------------------------");
		UserInfoEditCompleteDAO dao = new UserInfoEditCompleteDAO();


		int count=dao.editUser(
				loginAddress,
				loginPassword,
				userId);
		if(count>0){
			message="ユーザー情報を変更いたしました。";
			result= SUCCESS;
		}else{
			errorMessage="ユーザー情報は正しく更新されませんでした。";
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

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getUpdatedDate() {
		return updatedDate;
	}

	public void setUpdatedDate(String updatedDate) {
		this.updatedDate = updatedDate;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
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

	public void setSession(Map<String,Object> session) {
	    this.session = session;
	}

	public Map<String, Object> getSession() {
		return session;
	}

}
