package cycle.dto;

import java.util.Date;


public class NicePartyListDTO extends  PartySearchDTO{
	private String userId;
	private String partyId;
	private Date insertDate;


	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPartyId() {
		return partyId;
	}
	public void setPartyId(String partyId) {
		this.partyId = partyId;
	}
	public Date getInsertDate() {
		return insertDate;
	}
	public void setInsertDate(Date insertDate) {
		this.insertDate = insertDate;
	}

}
