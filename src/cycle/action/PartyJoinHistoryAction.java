package cycle.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import cycle.dao.PartyJoinHistoryDAO;
import cycle.dto.PartySearchDTO;
import com.opensymphony.xwork2.ActionSupport;

public class PartyJoinHistoryAction extends ActionSupport implements SessionAware {


	public Map<String,Object>session;

	public PartyJoinHistoryDAO partyJoinHistoryDAO = new PartyJoinHistoryDAO();

	public ArrayList<PartySearchDTO> partyJoinHistoryList = new ArrayList<PartySearchDTO>();

	public String execute() throws SQLException {
		String result = SUCCESS;

		partyJoinHistoryList = partyJoinHistoryDAO.history(session.get("userId").toString());
		Iterator<PartySearchDTO> iterator = partyJoinHistoryList.iterator();

		if(!(iterator.hasNext())){
			partyJoinHistoryList = null;
		}

		return result;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}


	public ArrayList<PartySearchDTO> getPartyJoinHistoryList() {
		return partyJoinHistoryList;
	}

	public void setPartyJoinHistoryList(ArrayList<PartySearchDTO> partyJoinHistoryList) {
		this.partyJoinHistoryList = partyJoinHistoryList;
	}

}
