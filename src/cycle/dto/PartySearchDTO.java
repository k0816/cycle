package cycle.dto;

import java.util.Date;


public class PartySearchDTO {


	public String partyId;

	public String partyName;

	public Date partyDate;

	public String partyWeek;

	public String malePrice;

	public String femalePrice;

	public String partyCapacity;

	public String joinCount;

	public String partyPlace;

	public String ageMinimum;

	public String ageMaximum;

	public String partyDetail;

	public String image;

	public Date insertDate;

	public Date updateDate;

	public Date getInsertDate() {
		return insertDate;
	}

	public void setInsertDate(Date insertDate) {
		this.insertDate = insertDate;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public String getPartyId() {
	    return partyId;
	}

	public void setPartyId(String partyId) {
	    this.partyId = partyId;
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

	public String getPartyWeek() {
		return partyWeek;
	}

	public void setPartyWeek(String partyWeek) {
		this.partyWeek = partyWeek;
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

	public String getJoinCount() {
		return joinCount;
	}

	public void setJoinCount(String joinCount) {
		this.joinCount = joinCount;
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

	public void setAgeMaximum(String ageMaximu) {
	    this.ageMaximum = ageMaximu;
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
