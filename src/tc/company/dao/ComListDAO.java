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
	
	public AvgScoreDTO findTotalRank() {
		AvgScoreDTO dto = null;

		try {
			dto = (AvgScoreDTO) sqlMap.queryForList("company_list");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return dto;
	}
}	
