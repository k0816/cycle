package cycle.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import cycle.dao.NicePartyListDAO;
import cycle.dto.PartySearchDTO;
import com.opensymphony.xwork2.ActionSupport;

public class NicePartyListAction extends ActionSupport implements SessionAware {

	public String partyId;

	public Map<String,Object>session;

	public NicePartyListDAO nicePartyListDAO = new NicePartyListDAO();

	public ArrayList<PartySearchDTO> nicePartyListList = new ArrayList<PartySearchDTO>();

	public String execute() throws SQLException {
		String result = SUCCESS;

		nicePartyListList = nicePartyListDAO.nice(session.get("userId").toString());
		Iterator<PartySearchDTO> iterator = nicePartyListList.iterator();

		if(!(iterator.hasNext())){
			nicePartyListList = null;
		}

		return result;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public ArrayList<PartySearchDTO> getNicePartyList() {
		return nicePartyListList;
	}

	public void setNicePartyList(ArrayList<PartySearchDTO> nicePartyListList) {
		this.nicePartyListList = nicePartyListList;
	}

	public String getPartyId() {
		return partyId;
	}

	public void setPartyId(String partyId) {
		this.partyId = partyId;
	}

}