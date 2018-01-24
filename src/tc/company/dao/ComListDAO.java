package tc.company.dao;

import java.sql.SQLException;
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

	public List<AvgScoreDTO> find_totalList(int page, int displayRecord){
		int end = page * displayRecord; // page*5
		int start = end - (displayRecord - 1); // end-4
		
		List<AvgScoreDTO> list = null;
		
		try {
			Map<String, Object> map = new HashMap<>();
			map.put("start", start);
			map.put("end", end);
			
			list = sqlMap.queryForList("company_list.find_totalList",map);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	
	public List<AvgScoreDTO> find_possibilityList(int page, int displayRecord){
		int end = page * displayRecord; // page*5
		int start = end - (displayRecord - 1); // end-4
		
		List<AvgScoreDTO> list = null;
		
		try {
			Map<String, Object> map = new HashMap<>();
			map.put("start", start);
			map.put("end", end);
			
			list = sqlMap.queryForList("company_list.find_possibilityList",map);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	
	public List<AvgScoreDTO> find_welSalList(int page, int displayRecord){
		int end = page * displayRecord; // page*5
		int start = end - (displayRecord - 1); // end-4
		
		List<AvgScoreDTO> list = null;
		
		try {
			Map<String, Object> map = new HashMap<>();
			map.put("start", start);
			map.put("end", end);
			
			list = sqlMap.queryForList("company_list.find_welSalList",map);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	
	
	public List<AvgScoreDTO> find_balanceList(int page, int displayRecord){
		int end = page * displayRecord; // page*5
		int start = end - (displayRecord - 1); // end-4
		
		List<AvgScoreDTO> list = null;
		
		try {
			Map<String, Object> map = new HashMap<>();
			map.put("start", start);
			map.put("end", end);
			
			list = sqlMap.queryForList("company_list.find_balanceList",map);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	
	public List<AvgScoreDTO> find_cultureList(int page, int displayRecord){
		int end = page * displayRecord; // page*5
		int start = end - (displayRecord - 1); // end-4
		
		List<AvgScoreDTO> list = null;
		
		try {
			Map<String, Object> map = new HashMap<>();
			map.put("start", start);
			map.put("end", end);
			
			list = sqlMap.queryForList("company_list.find_cultureList",map);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	
	public List<AvgScoreDTO> find_managerList(int page, int displayRecord){
		int end = page * displayRecord; // page*5
		int start = end - (displayRecord - 1); // end-4
		
		List<AvgScoreDTO> list = null;
		
		try {
			Map<String, Object> map = new HashMap<>();
			map.put("start", start);
			map.put("end", end);
			
			list = sqlMap.queryForList("company_list.find_managerList",map);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

}
