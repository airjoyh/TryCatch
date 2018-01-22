package tc.review.dto;

import java.sql.Date;

public class ReplyDTO {
	private int reply_no;
	private String reply_contents;
	private int review_no;
	private Date reply_wdate;
	private String user_id;

	public ReplyDTO() {
		// TODO Auto-generated constructor stub
	}

	public ReplyDTO(int reply_no, String reply_contents, int review_no, Date reply_wdate, String user_id) {
		super();
		this.reply_no = reply_no;
		this.reply_contents = reply_contents;
		this.review_no = review_no;
		this.reply_wdate = reply_wdate;
		this.user_id = user_id;
	}

	public int getReply_no() {
		return reply_no;
	}

	public void setReply_no(int reply_no) {
		this.reply_no = reply_no;
	}

	public String getReply_contents() {
		return reply_contents;
	}

	public void setReply_contents(String reply_contents) {
		this.reply_contents = reply_contents;
	}

	public int getReview_no() {
		return review_no;
	}

	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}

	public Date getReply_wdate() {
		return reply_wdate;
	}

	public void setReply_wdate(Date reply_wdate) {
		this.reply_wdate = reply_wdate;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	@Override
	public String toString() {
		return "ReplyDTO [reply_no=" + reply_no + ", reply_contents=" + reply_contents + ", review_no=" + review_no
				+ ", reply_wdate=" + reply_wdate + ", user_id=" + user_id + "]";
	}

}
