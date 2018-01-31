package cycle.dto;

import java.util.Date;

public class LoginDTO {

	String userId;

	String loginAddress;

	String loginPassword;

	String userName;

    String gender;

	Date birthday;

	String age;

    boolean loginFlg = false;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
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

	public boolean getLoginFlg() {
		return loginFlg;
	}

	public void setLoginFlg(boolean loginFlg) {
		this.loginFlg = loginFlg;
	}
}
