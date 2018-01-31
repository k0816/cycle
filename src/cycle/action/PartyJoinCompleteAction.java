package cycle.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import cycle.dao.PartyJoinCompleteDAO;
import cycle.dto.LoginDTO;

import com.opensymphony.xwork2.ActionSupport;

public class PartyJoinCompleteAction extends ActionSupport implements SessionAware {

	public Map<String, Object> session;
	public String partyId;
	public String message;

	public String execute() throws SQLException {
		String result = SUCCESS;
		PartyJoinCompleteDAO partyJoinCompleteDAO = new PartyJoinCompleteDAO();
		LoginDTO loginDTO = (LoginDTO)session.get("loginUser");
		String userId = loginDTO.getUserId();
		partyJoinCompleteDAO.joinParty(userId,partyId);

		message="参加登録が完了いたしました。";

		partyJoinCompleteDAO.joinCount(partyId);

		return result;
	}

	public String getPartyId() {
		return partyId;
	}


	public void setPartyId(String partyId) {
		this.partyId = partyId;
	}


	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String,Object> session) {
	    this.session = session;
	}
}
