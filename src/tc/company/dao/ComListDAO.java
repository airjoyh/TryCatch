package tc.company.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import iba.conf.MySqlMapClient;
import tc.review.dto.AvgScoreDTO;

public class ComListDAO {
	private SqlMapClient sqlMap;

	public ComListDAO() {
		sqlMap = MySqlMapClient.getSqlMapInstance();
	}

	public Map<String, Object> find_totalList(int page, int displayRecord) {
		Map<String, Object> listMap = new HashMap<>();

		int end = page * displayRecord; // page*5
		int start = end - (displayRecord - 1); // end-4

		List<AvgScoreDTO> list = null;
		List<Integer> review_cnt_list = new ArrayList<>();// 후기 갯수 리스트
		try {
			Map<String, Object> map = new HashMap<>();
			map.put("start", start);
			map.put("end", end);

			list = sqlMap.queryForList("company_list.find_totalList", map);
			for (int i = 0; i < list.size(); i++) {// 기업 리스트 포문이 돌때
				review_cnt_list.add(
						(Integer) sqlMap.queryForObject("company_list.selectReviewCount", list.get(i).getCompany_id()));
				System.out.println("dao의 company_id=" + list.get(i).getCompany_id());
				// 후기 댓글 리스트에 review_no와 똑같이 add
			}

			listMap.put("list", list); // 리스트 맵에 키값으로 저장
			listMap.put("review_cnt_list", review_cnt_list); // 리스트 맵에 키값으로 저장

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return listMap;
	}

	public Map<String, Object> find_possibilityList(int page, int displayRecord) {
		Map<String, Object> listMap = new HashMap<>();

		int end = page * displayRecord; // page*5
		int start = end - (displayRecord - 1); // end-4

		List<AvgScoreDTO> list = null;
		List<Integer> review_cnt_list = new ArrayList<>();// 후기 갯수 리스트
		try {
			Map<String, Object> map = new HashMap<>();
			map.put("start", start);
			map.put("end", end);

			list = sqlMap.queryForList("company_list.find_possibilityList", map);
			for (int i = 0; i < list.size(); i++) {// 기업 리스트 포문이 돌때
				review_cnt_list.add(
						(Integer) sqlMap.queryForObject("company_list.selectReviewCount", list.get(i).getCompany_id()));
				System.out.println("dao의 company_id=" + list.get(i).getCompany_id());
				// 후기 댓글 리스트에 review_no와 똑같이 add
			}

			listMap.put("list", list); // 리스트 맵에 키값으로 저장
			listMap.put("review_cnt_list", review_cnt_list); // 리스트 맵에 키값으로 저장

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return listMap;
	}

	public Map<String, Object> find_welSalList(int page, int displayRecord) {
		Map<String, Object> listMap = new HashMap<>();

		int end = page * displayRecord; // page*5
		int start = end - (displayRecord - 1); // end-4

		List<AvgScoreDTO> list = null;
		List<Integer> review_cnt_list = new ArrayList<>();// 후기 갯수 리스트
		try {
			Map<String, Object> map = new HashMap<>();
			map.put("start", start);
			map.put("end", end);

			list = sqlMap.queryForList("company_list.find_welSalList", map);
			for (int i = 0; i < list.size(); i++) {// 기업 리스트 포문이 돌때
				review_cnt_list.add(
						(Integer) sqlMap.queryForObject("company_list.selectReviewCount", list.get(i).getCompany_id()));
				System.out.println("dao의 company_id=" + list.get(i).getCompany_id());
				// 후기 댓글 리스트에 review_no와 똑같이 add
			}

			listMap.put("list", list); // 리스트 맵에 키값으로 저장
			listMap.put("review_cnt_list", review_cnt_list); // 리스트 맵에 키값으로 저장

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return listMap;
	}

	public Map<String, Object> find_balanceList(int page, int displayRecord) {
		Map<String, Object> listMap = new HashMap<>();

		int end = page * displayRecord; // page*5
		int start = end - (displayRecord - 1); // end-4

		List<AvgScoreDTO> list = null;
		List<Integer> review_cnt_list = new ArrayList<>();// 후기 갯수 리스트
		try {
			Map<String, Object> map = new HashMap<>();
			map.put("start", start);
			map.put("end", end);

			list = sqlMap.queryForList("company_list.find_balanceList", map);
			for (int i = 0; i < list.size(); i++) {// 기업 리스트 포문이 돌때
				review_cnt_list.add(
						(Integer) sqlMap.queryForObject("company_list.selectReviewCount", list.get(i).getCompany_id()));
				System.out.println("dao의 company_id=" + list.get(i).getCompany_id());
				// 후기 댓글 리스트에 review_no와 똑같이 add
			}

			listMap.put("list", list); // 리스트 맵에 키값으로 저장
			listMap.put("review_cnt_list", review_cnt_list); // 리스트 맵에 키값으로 저장

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return listMap;
	}

	public Map<String, Object> find_cultureList(int page, int displayRecord) {
		Map<String, Object> listMap = new HashMap<>();

		int end = page * displayRecord; // page*5
		int start = end - (displayRecord - 1); // end-4

		List<AvgScoreDTO> list = null;
		List<Integer> review_cnt_list = new ArrayList<>();// 후기 갯수 리스트
		try {
			Map<String, Object> map = new HashMap<>();
			map.put("start", start);
			map.put("end", end);

			list = sqlMap.queryForList("company_list.find_cultureList", map);
			for (int i = 0; i < list.size(); i++) {// 기업 리스트 포문이 돌때
				review_cnt_list.add(
						(Integer) sqlMap.queryForObject("company_list.selectReviewCount", list.get(i).getCompany_id()));
				System.out.println("dao의 company_id=" + list.get(i).getCompany_id());
				// 후기 댓글 리스트에 review_no와 똑같이 add
			}

			listMap.put("list", list); // 리스트 맵에 키값으로 저장
			listMap.put("review_cnt_list", review_cnt_list); // 리스트 맵에 키값으로 저장

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return listMap;
	}

	public Map<String, Object> find_managerList(int page, int displayRecord) {
		Map<String, Object> listMap = new HashMap<>();

		int end = page * displayRecord; // page*5
		int start = end - (displayRecord - 1); // end-4

		List<AvgScoreDTO> list = null;
		List<Integer> review_cnt_list = new ArrayList<>();// 후기 갯수 리스트
		try {
			Map<String, Object> map = new HashMap<>();
			map.put("start", start);
			map.put("end", end);

			list = sqlMap.queryForList("company_list.find_managerList", map);
			for (int i = 0; i < list.size(); i++) {// 기업 리스트 포문이 돌때
				review_cnt_list.add(
						(Integer) sqlMap.queryForObject("company_list.selectReviewCount", list.get(i).getCompany_id()));
				System.out.println("dao의 company_id=" + list.get(i).getCompany_id());
				// 후기 댓글 리스트에 review_no와 똑같이 add
			}

			listMap.put("list", list); // 리스트 맵에 키값으로 저장
			listMap.put("review_cnt_list", review_cnt_list); // 리스트 맵에 키값으로 저장

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return listMap;
	}
	
	public int selectCount() {
		int count = 0;
		try {
			count = (Integer) sqlMap.queryForObject("company_list.selectCount");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;

	}

}
