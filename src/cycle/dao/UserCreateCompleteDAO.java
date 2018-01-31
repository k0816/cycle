package cycle.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import cycle.util.DBConnector;
import cycle.util.DateUtil;

public class UserCreateCompleteDAO {

	private DBConnector dbConnector = new DBConnector();

	private Connection connection = dbConnector.getConnection();

	private DateUtil dateUtil = new DateUtil();

	private String sql = "INSERT INTO user_info (login_address, login_pass, user_name, gender, birthday, age, insert_date) "
			+ "VALUES(?, ?, ?, ?, ?, TIMESTAMPDIFF(YEAR, birthday, CURDATE()), ?)";

//			             "INSERT INTO user_info (login_address, login_pass, user_name, gender, birthday, insert_date) "
//			+ "VALUES(?, ?, ?, ?, ?, ?)";



	public void createUser(String loginAddress, String loginPassword, String userName, String gender, String birthday ) throws SQLException {

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, loginAddress);
			preparedStatement.setString(2, loginPassword);
			preparedStatement.setString(3, userName);
			preparedStatement.setString(4, gender);
			preparedStatement.setString(5, birthday);
			preparedStatement.setString(6, dateUtil.getDate());
			preparedStatement.execute();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			connection.close();
		}
	}
}
