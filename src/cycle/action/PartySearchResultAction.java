package cycle.action;

import java.util.ArrayList;
//import java.util.List;

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
	private String errorMessage;

//	private List<PartyPlaceDTO> partyPlaceDTOList = new ArrayList<PartyPlaceDTO>();

	public String execute() {

		if(partyDate.isEmpty()){
			partyDate=null;
		}

		if(date2.isEmpty()){
			date2=null;
		}
//      上の二つのDateはifがちゃんと適用されるが、下は必ず適用されてしまう
//		if(partyCapacity.isEmpty());{
//			partyCapacity=null;
//		}
//		if(capa2.isEmpty());{
//			capa2=null;
//		}
//		if(partyPrice.isEmpty());{
//			partyPrice=null;
//		}
//		if(price2.isEmpty());{
//			price2=null;
//		}
//		if(ageMinimum.isEmpty());{
//			ageMinimum=null;
//		}
//		if(ageMaximum.isEmpty());{
//			ageMaximum=null;
//		}


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

		if(partyPlace==null || partyWeek==null  ){
			errorMessage="チェックボックスの選択がされていません。";
			return ERROR;
		}

		String[] partyPlaceList = partyPlace.split(", ", 0);
		for(int i=0; i<partyPlaceList.length;i++){
			System.out.println(partyPlaceList[i].toString());

			PartyPlaceDTO dto = new PartyPlaceDTO();
			switch(partyPlaceList[i].toString()){
			case "ikebukuro":
				dto.setPartyPlace("池袋");
				break;
			case "shinjuku":
				dto.setPartyPlace("新宿");
				break;
			case "shibuya":
				dto.setPartyPlace("渋谷");
				break;
			case "shinagawa":
				dto.setPartyPlace("品川");
				break;
			case "ueno":
				dto.setPartyPlace("上野");
				break;
			case "roppongi":
				dto.setPartyPlace("六本木");
				break;
			default:

			}
		}

		String[] partyWeekList = partyWeek.split(", ", 0);
		for(int n=0; n<partyWeekList.length;n++){
			System.out.println(partyWeekList[n].toString());
		}

		PartySearchResultDAO dao = new PartySearchResultDAO();

		/* 検索の種類(日付順、値段順、定員数順) */
		listDTO = dao.search(partyDate,date2,partyCapacity,capa2,
				malePrice,malePrice2,femalePrice,femalePrice2,
				ageMinimum,ageMaximum,
				partyPlaceList,partyWeekList,sort);

//		partyWeekの値返還



//		if(sort.equals("price")){
//			listDTO = dao.search(partyDate,date2,partyCapacity,capa2,
//		malePrice,malePrice2,femalePrice,femalePrice2,ageMinimum,ageMaximum,
//		partyPlaceList,partyWeekList,sort);
//		}
////
//		if(sort.equals("capa")){
//			listDTO = dao.search3(partyDate,date2,partyCapacity,capa2,
//		malePrice,malePrice2,femalePrice,femalePrice2,ageMinimum,ageMaximum,
//		partyPlaceList,partyWeekList,sort);
//		}


//		Calendar calParty = dto.getPartyDate();

//		Calendar cal1 = Calendar.getInstance();
//        cal1.set(2014, 0, 2, 11, 22, 33);

//        int dif = setPartyDate().compareTo(date.getDateDay());
//
//        if(dif == 0){
//        	message="当日です";
//        	return SUCCESS;
//        }else{
//        	return SUCCESS;
//        }

		String result = SUCCESS;

		return result;

	}

	public String getPartyDate() {
		return partyDate;
	}

	public void setPartyDate(String partyDate) {
		this.partyDate = partyDate;
	}

	public String getPartyWeek() {
		return partyWeek;
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


}
