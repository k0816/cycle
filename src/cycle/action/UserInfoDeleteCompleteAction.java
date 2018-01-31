package cycle.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import cycle.dao.UserInfoDeleteCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class UserInfoDeleteCompleteAction extends ActionSupport implements SessionAware {

	private String userId;

	private String message;
	private String errorMessage;

	public Map<String, Object> session;

	UserInfoDeleteCompleteDAO dao = new 	UserInfoDeleteCompleteDAO();

    public String execute() throws SQLException {

	String result = ERROR;

	int count = dao.deleteUser(userId);

	if(count > 0) {
		message="退会処理が完了いたしました。";
		result= SUCCESS;
		session.clear();

	} else {
		errorMessage="退会処理に失敗いたしました。";
		result= ERROR;
	}

	return result;
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

public void setSession(Map<String, Object> session) {
	this.session = session;
}

}