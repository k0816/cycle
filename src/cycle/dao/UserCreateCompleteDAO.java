package cycle.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import cycle.util.DBConnector;
import cycle.util.DateUtil;

public class UserCreateCompleteDAO {

	private DBConnector db = new DBConnector();

	private Connection con = db.getConnection();

	private DateUtil dateUtil = new DateUtil();


	public int createUser(String loginAddress, String loginPassword, String userName, String gender, String year, String month, String day  )
			throws SQLException {

		int count=0;

		String sql = "INSERT INTO user_info (login_address, login_pass, user_name, gender, birthday, age, insert_date) "
				+ "VALUES(?, ?, ?, ?, ???, TIMESTAMPDIFF(YEAR, birthday, CURDATE()), ?)";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, loginAddress);
			ps.setString(2, loginPassword);
			ps.setString(3, userName);
			ps.setString(4, gender);
			ps.setString(5, year);
			ps.setString(6, month);
			ps.setString(7, day);
			ps.setString(8, dateUtil.getDate());
			count = ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			con.close();
		}

		return count;
	}
}
