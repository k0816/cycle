package cycle.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import cycle.dto.LoginDTO;
import cycle.util.DBConnector;

public class LoginDAO {

	private DBConnector dbConnector = new DBConnector();

	private Connection con = dbConnector.getConnection();

	private LoginDTO loginDTO = new LoginDTO();

	public LoginDTO getLoginUserInfo(String loginAddress, String loginPassword ) {

		String sql = "SELECT * FROM user_info where login_address = ? AND login_pass = ? " ;

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, loginAddress);
			ps.setString(2, loginPassword);
			ResultSet rs = ps.executeQuery();

			if(rs.next()) {
				loginDTO.setUserId(rs.getString("user_id"));
				loginDTO.setLoginAddress(rs.getString("login_address"));
				loginDTO.setLoginPassword(rs.getString("login_pass"));
				loginDTO.setUserName(rs.getString("user_name"));
				loginDTO.setGender(rs.getString("gender"));
				loginDTO.setBirthday(rs.getDate("birthday"));
				loginDTO.setAge(rs.getString("age"));

				if(!(rs.getString("login_address").equals(null))) {
					loginDTO.setLoginFlg(true);
				}
			}

		} catch(Exception e) {
			e.printStackTrace();
		}

		return loginDTO;
	}

	public LoginDTO getLoginDTO() {
		return loginDTO;
	}
}

