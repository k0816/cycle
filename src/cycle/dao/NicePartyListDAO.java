package cycle.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import cycle.dto.PartySearchDTO;
import cycle.util.DBConnector;

public class NicePartyListDAO {
	  DBConnector db= new DBConnector();

	public ArrayList<PartySearchDTO> nice(String userId) {
	ArrayList<PartySearchDTO> nicePartyListList = new ArrayList<PartySearchDTO>();
	  Connection con = db.getConnection();

	  String sql = "select pi.party_id,pi.party_name,pi.party_date,pi.male_price,pi.female_price,pi.party_place,pi.image,"
	  		+ "npl.insert_date from nice_party_list as npl left join party_info as pi on npl.party_id=pi.party_id "
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
				dto.setPartyPlace(rs.getString("party_place"));
				dto.setInsertDate(rs.getDate("insert_date"));
			    nicePartyListList.add(dto);

			}

		} catch(SQLException e) {
			e.printStackTrace();

		}

		try {
			con.close();

		} catch(SQLException e) {
			e.printStackTrace();

		}

		return nicePartyListList;

	}

}
