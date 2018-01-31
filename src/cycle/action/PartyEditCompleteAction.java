package cycle.action;

import java.sql.SQLException;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;
import com.opensymphony.xwork2.ActionSupport;

import cycle.dao.PartyEditCompleteDAO;

public class PartyEditCompleteAction extends ActionSupport implements SessionAware{

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

	public Map<String, Object> session;

	public String execute() throws SQLException {

		String result = ERROR;

		PartyEditCompleteDAO dao = new PartyEditCompleteDAO();


		int count=dao.editParty(partyName,partyDate,partyCapacity,malePrice,femalePrice,
				partyPlace,ageMinimum,ageMaximum,partyDetail,image,partyId);
		if(count>0){
			message="パーティー情報を変更いたしました。";
			result= SUCCESS;
		}else{
			errorMessage="パーティー情報は正しく更新されませんでした。";
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

	public void setSession(Map<String,Object> session) {
	    this.session = session;
	}

	public Map<String, Object> getSession() {
		return session;
	}

}
