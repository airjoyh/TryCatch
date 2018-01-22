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
	
	public boolean insert(ReplyDTO replydto) {// ����߰�
		try {
			sqlMap.insert("review_reply.insert", replydto);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}// insert
	
	public List<ReplyDTO> selectAll(int review_no) {// ��ü ��� ����Ʈ
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
