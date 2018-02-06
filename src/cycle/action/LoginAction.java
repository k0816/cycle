package cycle.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import cycle.dao.LoginDAO;
import cycle.dto.LoginDTO;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware{

	private String loginAddress;

	private String loginPassword;

	private String userId;

	private String userName;

	public Map<String, Object> session;

	public String execute() {

		String result = ERROR;
		LoginDAO loginDAO = new LoginDAO();
		LoginDTO loginDTO = new LoginDTO();
		// ログイン実行
		loginDTO = loginDAO.getLoginUserInfo(loginAddress, loginPassword);

		// ユーザーID、パスワード共に"admin"で管理者画面へ遷移
		if (loginAddress.equals("admin") && loginPassword.equals("admin")) {
			return "admin";
		}

		userId=loginDTO.getUserId();
		session.put("loginUser", loginDTO);
		session.put("userId", loginDTO.getUserId());
		session.put("loginAddress", loginDTO.getLoginAddress());
		session.put("userName", loginDTO.getUserName());
		session.put("gender", loginDTO.getGender());
		session.put("birthday", loginDTO.getBirthday());
		session.put("age", loginDTO.getBirthday());


		// ログイン情報を比較
		if(((LoginDTO) session.get("loginUser")).getLoginFlg()) {

			result = SUCCESS;
		}else{session.clear();}

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

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
