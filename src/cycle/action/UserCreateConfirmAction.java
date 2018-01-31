package cycle.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class UserCreateConfirmAction extends ActionSupport implements SessionAware {

	private String loginAddress;

	private String loginPassword;

	private String userName;

	private String gender;

	private String birthday;

	String year;
	String month;
	String day;

	public Map<String, Object> session;

	private String errorMassage;


	public String execute() {

		String result = SUCCESS;


//		StringBuilder buf = new StringBuilder();
//		buf.append("year");
//		buf.append("month");
//		buf.append("day");
//		String birthday = buf.toString();


		String birthday = year+month+day;


		System.out.println("-------");
		System.out.println(birthday);

		System.out.println("-------");;

		if (!(loginAddress.equals("")) && !(loginPassword.equals("")) && !(userName.equals("")) && !(birthday.equals(""))) {
//			session.put("loginAddress", loginAddress);
//			session.put("loginPassword", loginPassword);
//			session.put("userName", userName);
//			session.put("gender", gender);
//			session.put("birthday", birthday);

			return result;


		} else {

			setErrorMassage("未入力の項目があります。");
			result = ERROR;
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

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getErrorMassage() {
		return errorMassage;
	}

	public void setErrorMassage(String errorMassage) {
		this.errorMassage = errorMassage;
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
}
