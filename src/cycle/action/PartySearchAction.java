package cycle.action;

import java.util.ArrayList;

import cycle.dao.PartyAllSearchDAO;
import cycle.dto.PartySearchDTO;
import com.opensymphony.xwork2.ActionSupport;

public class PartySearchAction extends ActionSupport {

	private ArrayList<PartySearchDTO> partySearchDTOList = new ArrayList<PartySearchDTO>();

	public String execute() {
		PartyAllSearchDAO partySearchDAO = new PartyAllSearchDAO();
		partySearchDTOList = partySearchDAO.selectAll();
		String result = SUCCESS;

		return result;
	}

	public ArrayList<PartySearchDTO> getPartySearchDTOList() {
		return partySearchDTOList;
	}

	public void setPartySearchDTOList(ArrayList<PartySearchDTO> partySearchDTOList) {
		this.partySearchDTOList = partySearchDTOList;
	}

}
