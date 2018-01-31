package cycle.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import cycle.util.DBConnector;
import cycle.util.DateUtil;

public class PartyDeleteDAO {
	DBConnector db = new DBConnector();
	Connection con = db.getConnection();
	DateUtil dateUtil = new DateUtil();

	public int deleteParty(String partyId) throws SQLException {

		int count = 0;
		/* 登録情報削除 */
		String sql = " DELETE FROM party_info where party_id=? ; ";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, partyId);

			count = ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			con.close();
		}
		return count;
	}

}
