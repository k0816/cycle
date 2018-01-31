package cycle.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import cycle.dao.NicePartyDAO;
import cycle.dto.LoginDTO;

import com.opensymphony.xwork2.ActionSupport;

public class NicePartyAction extends ActionSupport implements SessionAware {

	public Map<String, Object> session;
	public String partyId;
	public  String message;
	NicePartyDAO dao = new NicePartyDAO();


	public String execute() throws SQLException {
		String result = SUCCESS;
		LoginDTO loginDTO = (LoginDTO)session.get("loginUser");
		String userId = loginDTO.getUserId();
		dao.niceParty(userId,partyId);

		message="いいね！リストに加えました。";

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
