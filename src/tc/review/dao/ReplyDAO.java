package tc.review.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import iba.conf.MySqlMapClient;
import tc.review.dto.ReplyDTO;

public class ReplyDAO {
	SqlMapClient sqlMap;
	
	public ReplyDAO() {
		sqlMap = MySqlMapClient.getSqlMapInstance();
	}
	
	public boolean insert(ReplyDTO replydto) {// 댓글추가
		try {
			sqlMap.insert("review_reply.insert", replydto);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}// insert
	
	public List<ReplyDTO> selectAll(int review_no) {// 전체 댓글 리스트
		List<ReplyDTO> list = null;

		try {
			list = sqlMap.queryForList("review_reply.selectAll",review_no);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}
	
}
