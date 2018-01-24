package tc.user.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import iba.conf.MySqlMapClient;
import tc.user.dto.UserInfoDTO;

public class UserInfoDAO {
	private SqlMapClient sqlMap;

	public UserInfoDAO() {
		sqlMap = MySqlMapClient.getSqlMapInstance();

	}

	public boolean insert(UserInfoDTO userinfodto) {

		try {
			sqlMap.insert("userInfo.insert", userinfodto);
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return false;

	}

	public List<UserInfoDTO> selectAll() {
		List<UserInfoDTO> list = null;

		try {
			list = sqlMap.queryForList("userInfo.selectAll");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;

	}

	public boolean selectLogin(String login_id, String login_pass) {
		try {

			Map<String, String> map = new HashMap<>();
			map.put("login_id", login_id);
			map.put("login_pass", login_pass);

			int count = (int) sqlMap.queryForObject("userInfo.selectLogin", map);
			if (count > 0) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;

	}

	public boolean selectId(String user_id) {
		try {
			int count = (int) sqlMap.queryForObject("userInfo.selectId", user_id);
			if (count > 0) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;

	}

	public boolean update(UserInfoDTO userinfo) {
		try {
			int t = sqlMap.update("userInfo.update", userinfo);
			if (t == 1)
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public UserInfoDTO selectUp(String user_id) {
		UserInfoDTO userinfo = null;
		try {
			userinfo = (UserInfoDTO) sqlMap.queryForObject("userInfo.selectUp", user_id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return userinfo;
	}

}
