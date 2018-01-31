package cycle.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import cycle.util.DBConnector;
import cycle.util.DateUtil;

public class UserInfoEditCompleteDAO {
	DBConnector db = new DBConnector();
	Connection con = db.getConnection();
	DateUtil dateUtil = new DateUtil();

	public int editUser(String loginAddress, String loginPassword, String userId) throws SQLException {

		int count = 0;
		/* 登録情報変更 */
		String sql = " update user_info set login_address =?, login_pass =?, updated_date=? where user_id=? ";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, loginAddress);
			ps.setString(2, loginPassword);
			ps.setString(3, dateUtil.getDate());

			ps.setString(4, userId);

			count = ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			con.close();
		}
		return count;
	}

}
