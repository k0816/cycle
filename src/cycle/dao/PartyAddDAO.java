package cycle.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import cycle.util.DBConnector;
import cycle.util.DateUtil;

public class PartyAddDAO {
	DBConnector db = new DBConnector();
	Connection con = db.getConnection();
	DateUtil dateUtil = new DateUtil();

	public int addParty(String partyName, String partyDate, String partyCapacity, String malePrice, String femalePrice,
			String partyPlace,String ageMinimum, String ageMaximum, String partyDetail, String image) throws SQLException {

		int count = 0;
		/* 商品登録 */
		String sql = "INSERT INTO party_info set party_name =?, party_date =?, party_week=DAYOFWEEK(party_date), "
				+ "party_capacity=?, join_count=0, male_price=?, female_price=?, party_place=?, "
				+ "age_minimum=?, age_maximum=?, party_detail=?, image=?, insert_date=? ";

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

			count = ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			con.close();
		}
		return count;
	}

}
