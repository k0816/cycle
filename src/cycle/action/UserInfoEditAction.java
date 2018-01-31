package cycle.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import cycle.dto.LoginDTO;

public class  UserInfoEditAction extends ActionSupport implements SessionAware {
	private String loginAddress;
	private String loginPassword;
	private String userId;
	private String userName;
	private String gender;
	private String birthday;
	private Map<String,Object> session;


	public String execute()  {
		LoginDTO dto=new LoginDTO();
		dto=(LoginDTO)session.get("loginUser");
		userId=dto.getUserId();
		System.out.println("UserInfoEditAction----------");
		System.out.println(loginAddress);
		System.out.println(loginPassword);
		System.out.println(userId);
		System.out.println(userName);
		System.out.println(gender);
		System.out.println(birthday);
		System.out.println("----------------------------");

		return SUCCESS;
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


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
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


	public Map<String, Object> getSession() {
		return session;
	}


	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	}

