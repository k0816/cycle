package cycle.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import cycle.dto.PartySearchDTO;
import cycle.util.DBConnector;

public class PartyAllSearchDAO {
	public ArrayList<PartySearchDTO> allPartyDTOList = new ArrayList<PartySearchDTO>();


	public ArrayList<PartySearchDTO> selectAll() {
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();

		String sql = "SELECT * from party_info";

	    try{
	    	PreparedStatement ps = con.prepareStatement(sql);
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
				partySearchDTO.setPartyPlace(rs.getString("party_place"));
				partySearchDTO.setAgeMinimum(rs.getString("age_minimum"));
				partySearchDTO.setAgeMaximum(rs.getString("age_maximum"));
				partySearchDTO.setPartyDetail(rs.getString("party_detail"));
				partySearchDTO.setImage(rs.getString("image"));
				partySearchDTO.setInsertDate(rs.getDate("insert_date"));
				partySearchDTO.setUpdateDate(rs.getDate("update_date"));
				allPartyDTOList.add(partySearchDTO);

	    }

		} catch(SQLException e) {
			e.printStackTrace();

		}

		try {
			con.close();

		} catch(SQLException e) {
			e.printStackTrace();

		}

		return allPartyDTOList;
	}

}
