package cycle.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import cycle.dao.PartyDeleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class PartyDeleteAction extends ActionSupport implements SessionAware {

	private String partyId;
	private String message;
	private String errorMessage;

	public Map<String, Object> session;

	PartyDeleteDAO dao = new PartyDeleteDAO();

    public String execute() throws SQLException {

	String result = ERROR;

	int count = dao.deleteParty(partyId);

	if(count > 0) {
		message="削除が完了いたしました。";
		result= SUCCESS;

	} else {
		errorMessage="削除に失敗いたしました。";
		result= ERROR;
	}

	return result;
}

public String getPartyId() {
	return partyId;
}

public void setPartyId(String partyId) {
	this.partyId = partyId;
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