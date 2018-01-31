package cycle.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import cycle.dto.PartySearchDTO;
import cycle.util.DBConnector;

public class PartyJoinHistoryDAO {
	  DBConnector db= new DBConnector();

	public ArrayList<PartySearchDTO> history(String userId) {
	ArrayList<PartySearchDTO> partyJoinHistoryList = new ArrayList<PartySearchDTO>();
	  Connection con = db.getConnection();

	  /* MYSQLの商品履歴に商品情報を加えている */
	  String sql = "select pi.party_id,pi.party_name,pi.party_date,pi.male_price,pi.female_price,pi.image,pjh.insert_date "
	             + "from party_join_history as pjh left join party_info as pi on pjh.party_id=pi.party_id "
			     + "where user_id = ? ";

	  try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,userId);
			ResultSet rs=ps.executeQuery();

			while(rs.next()) {
				PartySearchDTO dto = new PartySearchDTO();
				dto.setPartyId(rs.getString("party_id"));
				dto.setPartyName(rs.getString("party_name"));
				dto.setPartyDate(rs.getDate("party_date"));
				dto.setMalePrice(rs.getString("male_price"));
				dto.setFemalePrice(rs.getString("female_price"));
				dto.setImage(rs.getString("image"));
				dto.setInsertDate(rs.getDate("insert_date"));
			    partyJoinHistoryList.add(dto);

			}

		} catch(SQLException e) {
			e.printStackTrace();

		}

		try {
			con.close();

		} catch(SQLException e) {
			e.printStackTrace();

		}

		return partyJoinHistoryList;

	}

}
