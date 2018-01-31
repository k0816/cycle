package cycle.action;

import java.util.Map;
import java.util.Date;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import cycle.dto.LoginDTO;

public class  UserInfoAction extends ActionSupport implements SessionAware {

	private String loginAddress;
	private String loginPassword;
	private String userId;
	private String userName;
	private String gender;
	public  Date birthday;
	private String age;

	private Map<String,Object> session;
	public String execute()  {


		LoginDTO loginUser = new LoginDTO();
		loginUser=(LoginDTO)session.get("loginUser");
		loginAddress=loginUser.getLoginAddress();
		loginPassword=loginUser.getLoginPassword();
		userId=loginUser.getUserId();
		userName=loginUser.getUserName();
		gender=loginUser.getGender();
		birthday=loginUser.getBirthday();
		age=loginUser.getAge();

		System.out.println(loginAddress);
		System.out.println(loginPassword);
		System.out.println(userId);
		System.out.println(userName);
		System.out.println(gender);
		System.out.println(birthday);
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
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session=session;
	}
	public Map<String, Object> getSession() {
		return session;
	}



}
