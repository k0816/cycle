package cycle.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import cycle.util.DBConnector;

public class NicePartyDAO {

	private DBConnector db = new DBConnector();

	private Connection con = db.getConnection();

	public void niceParty(String user_id, String party_id) throws SQLException {

		String sql = "INSERT INTO nice_party_list (user_id, party_id, insert_date) VALUES(?, ?, NOW())";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, user_id);
			ps.setString(2, party_id);
			ps.execute();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			con.close();
		}
	}

}
