package tc.company.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import iba.conf.MySqlMapClient;
import tc.review.dto.AvgScoreDTO;

public class ComListDAO {
	private SqlMapClient sqlMap;

	public ComListDAO() {
		sqlMap = MySqlMapClient.getSqlMapInstance();
	}

	

}
