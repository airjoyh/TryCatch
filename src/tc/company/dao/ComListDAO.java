package tc.company.dao;

import java.sql.SQLException;

import com.ibatis.sqlmap.client.SqlMapClient;

import iba.conf.MySqlMapClient;
import tc.review.dto.AvgScoreDTO;

public class ComListDAO {
	private SqlMapClient sqlMap;
	
	public ComListDAO() {
		sqlMap = MySqlMapClient.getSqlMapInstance();
	}
	
	public AvgScoreDTO find_totalRank() {
		AvgScoreDTO dto = null;

		try {
			dto = (AvgScoreDTO) sqlMap.queryForList("company_list.find_totalRank");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return dto;
	}
	
	public AvgScoreDTO find_possibilityRank() {
		AvgScoreDTO dto = null;

		try {
			dto = (AvgScoreDTO) sqlMap.queryForList("company_list.find_possibilityRank");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return dto;
	}
	
	public AvgScoreDTO find_welSalRank() {
		AvgScoreDTO dto = null;

		try {
			dto = (AvgScoreDTO) sqlMap.queryForList("company_list.find_welSalRank");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return dto;
	}
	
	public AvgScoreDTO find_balanceRank() {
		AvgScoreDTO dto = null;

		try {
			dto = (AvgScoreDTO) sqlMap.queryForList("company_list.find_balanceRank");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return dto;
	}
	
	public AvgScoreDTO find_cultureRank() {
		AvgScoreDTO dto = null;

		try {
			dto = (AvgScoreDTO) sqlMap.queryForList("company_list.find_cultureRank");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return dto;
	}
	
	public AvgScoreDTO find_managerRank() {
		AvgScoreDTO dto = null;

		try {
			dto = (AvgScoreDTO) sqlMap.queryForList("company_list.find_managerRank");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return dto;
	}
	
	
}	
