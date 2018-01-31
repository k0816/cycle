package cycle.action;

import com.opensymphony.xwork2.ActionSupport;

public class PartyDetailAction extends ActionSupport {

	public String partyId;

	public String partyName;

	public String partyDate;

	public String malePrice;

	public String femalePrice;

	public String partyCapacity;

	public String partyPlace;

	public String ageMinimum;

	public String ageMaximum;

	public String partyDetail;

	public String image;


	public String execute() {

		return SUCCESS;

	}


	public String getPartyName() {
		return partyName;
	}

	public void setPartyName(String partyName) {
		this.partyName = partyName;
	}

	public String getPartyId() {
		return partyId;
	}

	public void setPartyId(String partyId) {
		this.partyId = partyId;
	}


	public String getPartyDate() {
		return partyDate;
	}


	public void setPartyDate(String partyDate) {
		this.partyDate = partyDate;
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


	public String getPartyCapacity() {
		return partyCapacity;
	}


	public void setPartyCapacity(String partyCapacity) {
		this.partyCapacity = partyCapacity;
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
}


