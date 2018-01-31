package cycle.action;

import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;

import cycle.dao.PartyAddDAO;

public class PartyAddAction extends ActionSupport {

	public String partyName;
	public String partyDate;
	public String partyCapacity;
	public String malePrice;
	public String femalePrice;
	public String partyPlace;
	public String ageMinimum;
	public String ageMaximum;
	public String partyDetail;
	public String image;
	public String partyId;
	private String updatedDate;
	private String message;
	private String errorMessage;


	public String execute() throws SQLException {

		String result = ERROR;;

		PartyAddDAO dao = new PartyAddDAO();

		int count=dao.addParty(partyName,partyDate,partyCapacity,malePrice,femalePrice,
				partyPlace,ageMinimum,ageMaximum,partyDetail,image);
		if(count>0){
			message="パーティーを追加いたしました。";
			result= SUCCESS;
		}else{
			errorMessage="追加に失敗いたしました。";
			result= ERROR;
		}

		return result;
	}

	public String getPartyName() {
		return partyName;
	}

	public void setPartyName(String partyName) {
		this.partyName = partyName;
	}

	public String getPartyDate() {
		return partyDate;
	}

	public void setPartyDate(String partyDate) {
		this.partyDate = partyDate;
	}

	public String getPartyCapacity() {
		return partyCapacity;
	}

	public void setPartyCapacity(String partyCapacity) {
		this.partyCapacity = partyCapacity;
	}



	public String getMalePrice() {
		return malePrice;
	}

	public void setMalePrice(String malePrice) {
		this.malePrice = malePrice;
	}

	public String getFemalePrice() {
		return femalePrice;
	}

	public void setFemalePrice(String femalePrice) {
		this.femalePrice = femalePrice;
	}

	public String getPartyPlace() {
		return partyPlace;
	}

	public void setPartyPlace(String partyPlace) {
		this.partyPlace = partyPlace;
	}

	public String getAgeMinimum() {
		return ageMinimum;
	}

	public void setAgeMinimum(String ageMinimum) {
		this.ageMinimum = ageMinimum;
	}

	public String getAgeMaximum() {
		return ageMaximum;
	}

	public void setAgeMaximum(String ageMaximum) {
		this.ageMaximum = ageMaximum;
	}

	public String getPartyDetail() {
		return partyDetail;
	}

	public void setPartyDetail(String partyDetail) {
		this.partyDetail = partyDetail;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getPartyId() {
		return partyId;
	}


	public void setPartyId(String partyId) {
		this.partyId = partyId;
	}


	public String getUpdatedDate() {
		return updatedDate;
	}

	public void setUpdatedDate(String updatedDate) {
		this.updatedDate = updatedDate;
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



}
