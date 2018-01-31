package cycle.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import cycle.util.DBConnector;

public class PartyJoinCompleteDAO {

	private DBConnector dbConnector = new DBConnector();

	private Connection con = dbConnector.getConnection();

	/* ---参加履歴--- */
	public void joinParty(String userId, String partyId) throws SQLException {

		String sql = "INSERT INTO party_join_history (user_id, party_id, insert_date) " + "VALUES(" + userId + ","
				+ partyId + ", NOW())";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.execute();

		} catch (Exception e) {
			e.printStackTrace();
		}
		// finally {
		// con.close();
		// }
	}

	/* ---参加人数のカウント--- */
	public void joinCount(String partyId) throws SQLException {

		String sql = "UPDATE party_info SET join_count = join_count + 1 WHERE party_id = " + partyId + " ";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		finally {
			con.close();
		}
	}

}
