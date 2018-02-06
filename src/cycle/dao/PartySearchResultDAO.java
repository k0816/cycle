package cycle.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
//import java.util.Date;
//import java.util.Calendar;
//import java.text.SimpleDateFormat;

import cycle.dto.PartySearchDTO;
import cycle.util.DBConnector;

public class PartySearchResultDAO {
	public ArrayList<PartySearchDTO> listDTO = new ArrayList<PartySearchDTO>();

	public ArrayList<PartySearchDTO> search(String partyDate, String date2, String partyCapacity, String capa2,
			String malePrice, String malePrice2, String femalePrice, String femalePrice2,
			String ageMinimum, String ageMaximum, String[] partyPlaceList, String[] partyWeekList, String sort) {
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();


		String sql = "SELECT * FROM party_info WHERE ((party_date BETWEEN ? AND ? ) "
				+ " AND (party_capacity BETWEEN ? AND ?) "
				+ " AND (male_price BETWEEN " + malePrice + " AND " + malePrice2 + ") "
				+ " AND (female_price BETWEEN " + femalePrice + " AND " + femalePrice2 + ") "
			    + " AND (age_minimum >= "+ ageMinimum +" ) "
			    + " AND (age_maximum <= " + ageMaximum + " ) " ;

		for(int i=0; i < partyPlaceList.length;i++){
			if(i==0){
				sql+= "AND (party_place LIKE '%" + partyPlaceList[i].toString() + "%' ";
			}else if(i>0){
				sql+= " OR party_place LIKE '%" + partyPlaceList[i].toString() + "%' ";
			}
		}
		for(int n=0; n < partyWeekList.length;n++){
			if(n==0){
				sql+= ") AND (party_week=" + partyWeekList[n].toString()+ " ";
			}else if(n>0){
				sql+= " OR party_week=" + partyWeekList[n].toString()+ " ";
			}
		}

             /* 並べ替え(日付順、値段順、人数順) */
	    if(sort.equals("1")){
	    	sql += " )) IS NOT FALSE ORDER BY party_date ASC " ;
			}

	    if(sort.equals("2")){
	    	sql += " )) IS NOT FALSE ORDER BY party_date DESC " ;
			}

	    if(sort.equals("3")){
	    	sql += " )) IS NOT FALSE ORDER BY party_capacity ASC " ;
	    }
	    if(sort.equals("4")){
	    	sql += " )) IS NOT FALSE ORDER BY party_capacity DESC " ;
	    }


	    try{
	    	PreparedStatement ps = con.prepareStatement(sql);
	    	ps.setString(1, partyDate);
	    	ps.setString(2, date2);
	    	ps.setString(3, partyCapacity);
	    	ps.setString(4, capa2);
//			ps.setString(5, );
//			ps.setString(6, );
//			ps.setString(7, ageMinimum);
//			ps.setString(8, ageMaximum);
//			ps.setString( , partyPlace);

			ResultSet rs = ps.executeQuery();

			while(rs.next()) {
				PartySearchDTO partySearchDTO = new PartySearchDTO();
				partySearchDTO.setPartyId(rs.getString("party_id"));
				partySearchDTO.setPartyName(rs.getString("party_name"));
				partySearchDTO.setPartyDate(rs.getDate("party_date"));
				partySearchDTO.setPartyWeek(rs.getString("party_week"));
				partySearchDTO.setMalePrice(rs.getString("male_price"));
				partySearchDTO.setFemalePrice(rs.getString("female_price"));
				partySearchDTO.setPartyCapacity(rs.getString("party_capacity"));
				partySearchDTO.setJoinCount(rs.getString("join_count"));
				partySearchDTO.setPartyPlace(rs.getString("party_place"));
				partySearchDTO.setAgeMinimum(rs.getString("age_minimum"));
				partySearchDTO.setAgeMaximum(rs.getString("age_maximum"));
				partySearchDTO.setPartyDetail(rs.getString("party_detail"));
				partySearchDTO.setImage(rs.getString("image"));
				partySearchDTO.setInsertDate(rs.getDate("insert_date"));
				partySearchDTO.setUpdateDate(rs.getDate("update_date"));
				listDTO.add(partySearchDTO);

	    }
			for(int i=0; i< listDTO.size();i++){
				System.out.println("PartySearchResultDAO(listDTO["+i+"])--------");
				System.out.println(listDTO.get(i).getPartyId());
				System.out.println(listDTO.get(i).getPartyName());
				System.out.println(listDTO.get(i).getPartyDate());
				System.out.println(listDTO.get(i).getPartyWeek());
				System.out.println(listDTO.get(i).getMalePrice());
				System.out.println(listDTO.get(i).getFemalePrice());
				System.out.println(listDTO.get(i).getPartyCapacity());
				System.out.println(listDTO.get(i).getPartyPlace());
				System.out.println(listDTO.get(i).getAgeMinimum());
				System.out.println(listDTO.get(i).getAgeMaximum());
				System.out.println(listDTO.get(i).getPartyDetail());
				System.out.println(listDTO.get(i).getInsertDate());
				System.out.println(listDTO.get(i).getUpdateDate());
				System.out.println("----------------------------");

			}

		} catch(SQLException e) {
			e.printStackTrace();

		}

		try {
			con.close();

		} catch(SQLException e) {
			e.printStackTrace();

		}

		return listDTO;

	}

	/* 検索数 */

	public int count(String partyDate, String date2, String partyCapacity, String capa2,
			String malePrice, String malePrice2, String femalePrice, String femalePrice2,
			String ageMinimum, String ageMaximum, String[] partyPlaceList, String[] partyWeekList )
					throws SQLException{

		int partyCount = 0;

		DBConnector db = new DBConnector();
		Connection con = db.getConnection();

		String sql = "SELECT COUNT(*) FROM party_info WHERE ((party_date BETWEEN ? AND ? ) "
				+ " AND (party_capacity BETWEEN ? AND ?) "
				+ " AND (male_price BETWEEN " + malePrice + " AND " + malePrice2 + ") "
				+ " AND (female_price BETWEEN " + femalePrice + " AND " + femalePrice2 + ") "
			    + " AND (age_minimum >= "+ ageMinimum +" ) "
			    + " AND (age_maximum <= " + ageMaximum + " ) " ;

		for(int i=0; i < partyPlaceList.length;i++){
			if(i==0){
				sql+= "AND (party_place LIKE '%" + partyPlaceList[i].toString() + "%' ";
			}else if(i>0){
				sql+= " OR party_place LIKE '%" + partyPlaceList[i].toString() + "%' ";
			}
		}
		for(int n=0; n < partyWeekList.length;n++){
			if(n==0){
				sql+= ") AND (party_week=" + partyWeekList[n].toString()+ " ";
			}else if(n>0){
				sql+= " OR party_week=" + partyWeekList[n].toString()+ " ";
			}
		}
		sql += " )) IS NOT FALSE ";


			  try{
			    	PreparedStatement ps = con.prepareStatement(sql);
			    	ps.setString(1, partyDate);
			    	ps.setString(2, date2);
			    	ps.setString(3, partyCapacity);
			    	ps.setString(4, capa2);
					ResultSet rs = ps.executeQuery();
					while(rs.next()){
					partyCount = rs.getInt(1);
					}
			  }catch (SQLException e) {
					e.printStackTrace();
				} finally {
							con.close();
						}
		return partyCount;
	}


	public ArrayList<PartySearchDTO> getListDTO() {
		return listDTO;
	}

	public void setListDTO(ArrayList<PartySearchDTO> listDTO) {
		this.listDTO = listDTO;
	}
}
