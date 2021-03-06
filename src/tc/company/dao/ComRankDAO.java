package tc.company.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import iba.conf.MySqlMapClient;
import tc.review.dto.AvgScoreDTO;

public class ComRankDAO {
	private SqlMapClient sqlMap;

	public ComRankDAO() {
		sqlMap = MySqlMapClient.getSqlMapInstance();
	}

	public List<AvgScoreDTO> find_totalRank() {
		List<AvgScoreDTO> list = null;

		try {
			list = sqlMap.queryForList("company_rank.find_totalRank");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}

	public List<AvgScoreDTO> find_possibilityRank() {
		List<AvgScoreDTO> list = null;

		try {
			list = sqlMap.queryForList("company_rank.find_possibilityRank");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}

	public List<AvgScoreDTO> find_welSalRank() {
		List<AvgScoreDTO> list = null;

		try {
			list = sqlMap.queryForList("company_rank.find_welSalRank");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}

	public List<AvgScoreDTO> find_balanceRank() {
		List<AvgScoreDTO> list = null;

		try {
			list = sqlMap.queryForList("company_rank.find_balanceRank");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}

	public List<AvgScoreDTO> find_cultureRank() {
		List<AvgScoreDTO> list = null;

		try {
			list = sqlMap.queryForList("company_rank.find_cultureRank");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}

	public List<AvgScoreDTO> find_managerRank() {
		List<AvgScoreDTO> list = null;

		try {
			list = sqlMap.queryForList("company_rank.find_managerRank");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}

}
