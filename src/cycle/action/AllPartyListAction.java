package cycle.action;

import java.util.ArrayList;

import cycle.dao.PartyAllSearchDAO;
import cycle.dto.PartySearchDTO;
import com.opensymphony.xwork2.ActionSupport;

public class AllPartyListAction extends ActionSupport {


	private ArrayList<PartySearchDTO> allPartyDTOList = new ArrayList<PartySearchDTO>();

	public String execute() {
		PartyAllSearchDAO dao = new PartyAllSearchDAO();
		allPartyDTOList = dao.selectAll();
		String result = SUCCESS;

		return result;
	}

	public ArrayList<PartySearchDTO> getAllPartyDTOList() {
		return allPartyDTOList;
	}

	public void setAllPartyDTOList(ArrayList<PartySearchDTO> allPartyDTOList) {
		this.allPartyDTOList = allPartyDTOList;
	}



}
