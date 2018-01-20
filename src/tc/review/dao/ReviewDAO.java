package tc.review.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	public List<ReviewDTO> selectPage(int page, int displayRecord) {
		
		int end = page * displayRecord; //page*10
		int start = end - (displayRecord-1); //end-9

		List<ReviewDTO> list = null;
		try {
			Map<String, Integer> map = new HashMap<>();
			map.put("start", start);
			map.put("end", end);

			list = sqlMap.queryForList("review.selectPage", map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}// selectAll
	
	public int selectCount() {
		int count = 0;
		try {
			count = (Integer) sqlMap.queryForObject("review.selectCount");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;

	}
	
	public ReviewDTO select(int review_no) {
		ReviewDTO reviewdto = null;
		try {
			reviewdto = (ReviewDTO) sqlMap.queryForObject("review.select", review_no);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return reviewdto;
	}// select
	
	public boolean updateCount(int review_no) {
		
		try {
			int t = sqlMap.update("review.updateCount", review_no);
			if(t>0) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}
}
