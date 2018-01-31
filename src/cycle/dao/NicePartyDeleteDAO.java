package cycle.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import cycle.util.DBConnector;

public class NicePartyDeleteDAO {

	private DBConnector db = new DBConnector();

	private Connection con = db.getConnection();


	public int deleteNiceParty(String userId, String partyId) throws SQLException {

		int count =0;

		String sql = "DELETE FROM nice_party_list where user_id  = ? AND party_id  = ?";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, userId);
			ps.setString(2, partyId);
			count = ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return count;
	}










}
