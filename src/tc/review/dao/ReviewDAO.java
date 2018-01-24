package tc.review.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import iba.conf.MySqlMapClient;
import tc.review.dto.AvgScoreDTO;
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

	public Map<String, Object> selectPage(String company_id,int page, int displayRecord) {
		Map<String, Object> listMap = new HashMap<>();

		int end = page * displayRecord; // page*5
		int start = end - (displayRecord - 1); // end-4

		List<ReviewDTO> list = null;// 후기 리스트
		List<Integer> reply_cnt_list = new ArrayList<>();// 후기 댓글 갯수 리스트
		try {
			Map<String, Object> map = new HashMap<>();
			map.put("company_id", company_id);
			map.put("start", start);
			map.put("end", end);

			list = sqlMap.queryForList("review.selectPage", map);
			for (int i = 0; i < list.size(); i++) {// 후기 리스트 포문이 돌때
				reply_cnt_list
						.add((Integer) sqlMap.queryForObject("review_reply.selectCount", list.get(i).getReview_no()));
				// 후기 댓글 리스트에 review_no와 똑같이 add
			}

			listMap.put("list", list); // 리스트 맵에 키값으로 저장
			listMap.put("reply_cnt_list", reply_cnt_list); // 리스트 맵에 키값으로 저장
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listMap;
	}// selectAll

	public int selectCount(String company_id) {
		int count = 0;
		try {
			count = (Integer) sqlMap.queryForObject("review.selectCount",company_id);
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

	public AvgScoreDTO selectAvg(String company_id) {
		AvgScoreDTO dto = null;

		try {
			dto = (AvgScoreDTO) sqlMap.queryForObject("review.selectAvg", company_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return dto;
	}

	public double selectAvgAll(String company_id) {
		double avg_all = 0.0;

		try {

			//System.out.println("sqlMap="+sqlMap+", company_id="+company_id);
			Object ob = sqlMap.queryForObject("review.selectAvgAll", company_id);
			//System.out.println("ob="+ob);
			if(ob!=null)//null로 출력되지 않으면 --> 만약 null로 출력되면 디폴트 값인 0.0이 나온다.
			   avg_all = (double)ob; //sqlMap.queryForObject("review.selectAvgAll", company_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return avg_all;
	}

	public boolean updateCount(int review_no) {

		try {
			int t = sqlMap.update("review.updateCount", review_no);
			if (t > 0) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return false;
	}

	public String selectId(int review_no) {
		String id = null;

		try {
			id = (String) sqlMap.queryForObject("review.selectId", review_no);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return id;
	}

	public boolean update(ReviewDTO reviewdto) {

		try {
			int t = sqlMap.update("review.update", reviewdto);
			if (t > 0) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return false;
	}

	public boolean delete(int review_no) {
		try {
			int t = sqlMap.delete("review.delete", review_no);
			if (t == 1)
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}// delete
}
