package cycle.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import cycle.util.DBConnector;
import cycle.util.DateUtil;

public class PartyEditCompleteDAO {
	DBConnector db = new DBConnector();
	Connection con = db.getConnection();
	DateUtil dateUtil = new DateUtil();

	public int editParty(String partyName, String partyDate, String partyCapacity, String malePrice, String femalePrice,
			String partyPlace,String ageMinimum, String ageMaximum, String partyDetail, String image, String partyId) throws SQLException {

		int count = 0;
		String sql = " update party_info set party_name =?, party_date =?, party_capacity=?,  "
				+ "male_price=?, female_price=?, party_place=?, age_minimum=?, age_maximum=?, party_detail=?, "
				+ "image=?, update_date=? where party_id=? ";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, partyName);
			ps.setString(2, partyDate);
			ps.setString(3, partyCapacity);
			ps.setString(4, malePrice);
			ps.setString(5, femalePrice);
			ps.setString(6, partyPlace);
			ps.setString(7, ageMinimum);
			ps.setString(8, ageMaximum);
			ps.setString(9, partyDetail);
			ps.setString(10, image);
			ps.setString(11, dateUtil.getDate());
			ps.setString(12, partyId);

			count = ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			con.close();
		}
		return count;
	}

}
