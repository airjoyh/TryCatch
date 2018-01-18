package tc.review.dto;

import java.sql.Date;

public class ReviewDTO {
	private int review_no;
	private String review_writer;
	private String review_title;
	private int review_count;
	private int review_possibility;
	private int review_welSal;
	private int review_balance;
	private int review_culture;
	private int review_manager;
	private String review_strong;
	private String review_weak;
	private String review_toCEO;
	private String company_id;
	private Date review_wdate;
	private String user_id;

	public ReviewDTO() {
		// TODO Auto-generated constructor stub
	}

	public ReviewDTO(int review_no, String review_writer, String review_title, int review_count, int review_possibility,
			int review_welSal, int review_balance, int review_culture, int review_manager, String review_strong,
			String review_weak, String review_toCEO, String company_id, Date review_wdate, String user_id) {
		super();
		this.review_no = review_no;
		this.review_writer = review_writer;
		this.review_title = review_title;
		this.review_count = review_count;
		this.review_possibility = review_possibility;
		this.review_welSal = review_welSal;
		this.review_balance = review_balance;
		this.review_culture = review_culture;
		this.review_manager = review_manager;
		this.review_strong = review_strong;
		this.review_weak = review_weak;
		this.review_toCEO = review_toCEO;
		this.company_id = company_id;
		this.review_wdate = review_wdate;
		this.user_id = user_id;
	}

	public int getReview_no() {
		return review_no;
	}

	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}

	public String getReview_writer() {
		return review_writer;
	}

	public void setReview_writer(String review_writer) {
		this.review_writer = review_writer;
	}

	public String getReview_title() {
		return review_title;
	}

	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}

	public int getReview_count() {
		return review_count;
	}

	public void setReview_count(int review_count) {
		this.review_count = review_count;
	}

	public int getReview_possibility() {
		return review_possibility;
	}

	public void setReview_possibility(int review_possibility) {
		this.review_possibility = review_possibility;
	}

	public int getReview_welSal() {
		return review_welSal;
	}

	public void setReview_welSal(int review_welSal) {
		this.review_welSal = review_welSal;
	}

	public int getReview_balance() {
		return review_balance;
	}

	public void setReview_balance(int review_balance) {
		this.review_balance = review_balance;
	}

	public int getReview_culture() {
		return review_culture;
	}

	public void setReview_culture(int review_culture) {
		this.review_culture = review_culture;
	}

	public int getReview_manager() {
		return review_manager;
	}

	public void setReview_manager(int review_manager) {
		this.review_manager = review_manager;
	}

	public String getReview_strong() {
		return review_strong;
	}

	public void setReview_strong(String review_strong) {
		this.review_strong = review_strong;
	}

	public String getReview_weak() {
		return review_weak;
	}

	public void setReview_weak(String review_weak) {
		this.review_weak = review_weak;
	}

	public String getReview_toCEO() {
		return review_toCEO;
	}

	public void setReview_toCEO(String review_toCEO) {
		this.review_toCEO = review_toCEO;
	}

	public String getCompany_id() {
		return company_id;
	}

	public void setCompany_id(String company_id) {
		this.company_id = company_id;
	}

	public Date getReview_wdate() {
		return review_wdate;
	}

	public void setReview_wdate(Date review_wdate) {
		this.review_wdate = review_wdate;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

}
