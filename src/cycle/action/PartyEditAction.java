package cycle.action;

import java.sql.SQLException;
import java.util.Date;
import com.opensymphony.xwork2.ActionSupport;

public class PartyEditAction extends ActionSupport {

	public String partyName;
	public Date partyDate;
	public String partyCapacity;
	public String malePrice;
	public String femalePrice;
	public String partyPlace;
	public String ageMinimum;
	public String ageMaximum;
	public String partyDetail;
	public String image;
	public String partyId;

	public String execute() throws SQLException {

		String result = SUCCESS;

		return result;
	}


	public String getPartyName() {
		return partyName;
	}

	public void setPartyName(String partyName) {
		this.partyName = partyName;
	}

	public Date getPartyDate() {
		return partyDate;
	}

	public void setPartyDate(Date partyDate) {
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

}
