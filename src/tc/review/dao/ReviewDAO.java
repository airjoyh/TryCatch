package tc.review.dao;

import java.sql.SQLException;

import com.ibatis.sqlmap.client.SqlMapClient;

import iba.conf.MySqlMapClient;
import tc.review.dto.ReviewDTO;

public class ReviewDAO {
	private SqlMapClient sqlMap;
	
	public ReviewDAO() {
		sqlMap = MySqlMapClient.getSqlMapInstance();
	}
	
	public boolean insert(ReviewDTO reviewdto) {
		
		try {
			sqlMap.insert("review.insert", reviewdto);
			return true;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}
}
