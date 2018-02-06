package cycle.action;

import java.sql.SQLException;
import java.util.ArrayList;
//import java.util.Collection;
//import java.util.List;
import java.util.List;

import cycle.dao.PartySearchResultDAO;
import cycle.dto.PartyPlaceDTO;
import cycle.dto.PartySearchDTO;
import cycle.util.DateUtil;
import com.opensymphony.xwork2.ActionSupport;

public class PartySearchResultAction extends ActionSupport {

	DateUtil date = new DateUtil();
	ArrayList<PartySearchDTO> listDTO = new ArrayList<PartySearchDTO>();
	PartySearchDTO dto = new PartySearchDTO();

	public String partyDate;
	public String date2;
	public String partyWeek;
	public String partyCapacity;
	public String joinCount;
	public String malePrice;
	public String malePrice2;
	public String femalePrice;
	public String femalePrice2;
	public String partyPlace;
	public String capa2;
	public String ageMinimum;
	public String ageMaximum;
	public String sort;
	public String message;
	public String weekName;
	public int  partyCount;


	private String errorMessage;

	private List<PartyPlaceDTO> partyPlaceDTOList = new ArrayList<PartyPlaceDTO>();

	public String execute()  throws SQLException {


		System.out.println("PartySearchResultAction-------");
		System.out.println(partyDate);
		System.out.println(date2);
		System.out.println(partyWeek);
		System.out.println(malePrice);
		System.out.println(malePrice2);
		System.out.println(femalePrice);
		System.out.println(femalePrice2);
		System.out.println(partyCapacity);
		System.out.println(capa2);
		System.out.println(ageMinimum);
		System.out.println(ageMaximum);
		System.out.println(sort);
		System.out.println("-----------------------------");

		if(partyDate.isEmpty()){
			partyDate=null;
		}

		if(date2.isEmpty()){
			date2=null;
		}


		if(partyPlace==null || partyWeek==null  ){
			errorMessage="チェックボックスの選択がされていません。";
			return ERROR;
		}


		String[] partyPlaceList = partyPlace.split(", ", 0);
		for(int i=0; i<partyPlaceList.length;i++){
			System.out.println(partyPlaceList[i].toString());
		}

		String[] partyWeekList = partyWeek.split(", ", 0);
		for(int n=0; n<partyWeekList.length;n++){
			System.out.println(partyWeekList[n].toString());
		}

		PartySearchResultDAO dao = new PartySearchResultDAO();

		listDTO = dao.search(partyDate,date2,partyCapacity,capa2,
				malePrice,malePrice2,femalePrice,femalePrice2,
				ageMinimum,ageMaximum,partyPlaceList,partyWeekList,sort);

		setPartyCount(dao.count(partyDate, date2, partyCapacity, capa2,
				malePrice, malePrice2, femalePrice, femalePrice2,
				ageMinimum, ageMaximum, partyPlaceList, partyWeekList));


		StringBuilder buf = new StringBuilder();
		String[] week = partyWeek.split(", ", 0);
		for(int a=0; a<week.length;a++){
		switch(week[a]){
		case "1":
		    buf.append("日曜,");
			break;
		case "2":
			buf.append("月曜,");
			break;
		case "3":
			buf.append("火曜,");
			break;
		case "4":
			buf.append("水曜,");
			break;
		case "5":
			buf.append("木曜,");
			break;
		case "6":
			buf.append("金曜,");
			break;
		case "7":
			buf.append("土曜,");
			break;
		default:
		}
		setWeekName(buf.toString());

		}

		String result = SUCCESS;

		return result;

	}

	public String getPartyDate() {
		return partyDate;
	}

	public void setPartyDate(String partyDate) {
		this.partyDate = partyDate;
	}


	public String getDate2() {
		return date2;
	}

	public void setDate2(String date2) {
		this.date2 = date2;
	}

	public void setPartyWeek(String partyWeek) {
		this.partyWeek = partyWeek;
	}

	public String getPartyWeek() {
		return partyWeek;
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

	public String getMalePrice2() {
		return malePrice2;
	}

	public void setMalePrice2(String malePrice2) {
		this.malePrice2 = malePrice2;
	}

	public String getFemalePrice() {
		return femalePrice;
	}

	public void setFemalePrice(String femalePrice) {
		this.femalePrice = femalePrice;
	}

	public String getFemalePrice2() {
		return femalePrice2;
	}

	public void setFemalePrice2(String femalePrice2) {
		this.femalePrice2 = femalePrice2;
	}

	public String getPartyPlace() {
		return partyPlace;
	}

	public void setPartyPlace(String partyPlace) {
		this.partyPlace = partyPlace;
	}

	public String getCapa2() {
		return capa2;
	}

	public void setCapa2(String capa2) {
		this.capa2 = capa2;
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

	public ArrayList<PartySearchDTO> getListDTO() {
		return listDTO;
	}

	public void setListDTO(ArrayList<PartySearchDTO> listDTO) {
		this.listDTO = listDTO;
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

	public DateUtil getDate() {
		return date;
	}

	public void setDate(DateUtil date) {
		this.date = date;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public List<PartyPlaceDTO> getPartyPlaceDTOList() {
		return partyPlaceDTOList;
	}

	public void setPartyPlaceDTOList(List<PartyPlaceDTO> partyPlaceDTOList) {
		this.partyPlaceDTOList = partyPlaceDTOList;
	}

	public int getPartyCount() {
		return partyCount;
	}

	public void setPartyCount(int partyCount) {
		this.partyCount = partyCount;
	}

	public String getWeekName() {
		return weekName;
	}

	public void setWeekName(String weekName) {
		this.weekName = weekName;
	}


}
