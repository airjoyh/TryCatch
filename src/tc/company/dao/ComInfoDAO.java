package tc.company.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import iba.conf.MySqlMapClient;
import tc.company.dto.ComInfoDTO;

public class ComInfoDAO {
	private SqlMapClient sqlmap;

	public ComInfoDAO() {
		sqlmap = MySqlMapClient.getSqlMapInstance();

	}

	public boolean insert(ComInfoDTO cominfodto) {
		try {
			sqlmap.insert("comInfo.insert", cominfodto);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean selectId(String company_id) {

		try {
			int count = (int) sqlmap.queryForObject("comInfo.selectId", company_id);
			if (count > 0)
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean selectLogin(String login_id, String login_pass) {

		try {
			Map<String, String> map = new HashMap<>();
			map.put("login_id", login_id);
			map.put("login_pass", login_pass);

			int count = (int) sqlmap.queryForObject("comInfo.selectLogin", map);
			if (count > 0)
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public List<ComInfoDTO> selectAll() {
		List<ComInfoDTO> list = null;
		try {
			list = sqlmap.queryForList("comInfo.selectAll");
		} catch (SQLException e) {
			e.printStackTrace();

		}
		return list;
	}

	public ComInfoDTO select(String company_id) {
		ComInfoDTO dto = null;
		
		try {
			dto = (ComInfoDTO) sqlmap.queryForObject("comInfo.select",company_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return dto;
	}
}
