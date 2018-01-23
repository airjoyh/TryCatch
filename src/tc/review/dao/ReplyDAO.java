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

	public boolean insert(ReplyDTO replydto) {// ¥Ò±€√ﬂ∞°
		try {
			sqlMap.insert("review_reply.insert", replydto);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}// insert

	public List<ReplyDTO> selectAll(int review_no) {// ¿¸√º ¥Ò±€ ∏ÆΩ∫∆Æ
		List<ReplyDTO> list = null;

		try {
			list = sqlMap.queryForList("review_reply.selectAll", review_no);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}

	public boolean update(ReplyDTO replydto) {// ¥Ò±€ºˆ¡§

		try {
			int t = sqlMap.update("review_reply.update", replydto);
			if (t > 0) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return false;
	}

	public boolean delete(int reply_no) {// ¥Ò±€ªË¡¶

		try {
			int t = sqlMap.delete("review_reply.delete", reply_no);
			if (t > 0) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return false;
	}

	public int selectCount(int review_no) {
		int count = 0;
		try {
			count = (Integer) sqlMap.queryForObject("review_reply.selectCount",review_no);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return count;
	}

}
