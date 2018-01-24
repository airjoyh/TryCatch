package tc.review.dto;

public class AvgScoreDTO {
	private String company_id;
	private String company_name;
	private String company_size;
	private String company_turnover;
	private String company_line;
	private int rank;
	private double avg_possibility;
	private double avg_welSal;
	private double avg_balance;
	private double avg_culture;
	private double avg_manager;
	private double avg_all;

	public AvgScoreDTO() {
		// TODO Auto-generated constructor stub
	}

	public AvgScoreDTO(String company_id, String company_name, String company_size, String company_turnover,
			String company_line, int rank, double avg_possibility, double avg_welSal, double avg_balance,
			double avg_culture, double avg_manager, double avg_all) {
		super();
		this.company_id = company_id;
		this.company_name = company_name;
		this.company_size = company_size;
		this.company_turnover = company_turnover;
		this.company_line = company_line;
		this.rank = rank;
		this.avg_possibility = avg_possibility;
		this.avg_welSal = avg_welSal;
		this.avg_balance = avg_balance;
		this.avg_culture = avg_culture;
		this.avg_manager = avg_manager;
		this.avg_all = avg_all;
	}

	public String getCompany_id() {
		return company_id;
	}

	public void setCompany_id(String company_id) {
		this.company_id = company_id;
	}

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public String getCompany_size() {
		return company_size;
	}

	public void setCompany_size(String company_size) {
		this.company_size = company_size;
	}

	public String getCompany_turnover() {
		return company_turnover;
	}

	public void setCompany_turnover(String company_turnover) {
		this.company_turnover = company_turnover;
	}

	public String getCompany_line() {
		return company_line;
	}

	public void setCompany_line(String company_line) {
		this.company_line = company_line;
	}

	public int getRank() {
		return rank;
	}

	public void setRank(int rank) {
		this.rank = rank;
	}

	public double getAvg_possibility() {
		return avg_possibility;
	}

	public void setAvg_possibility(double avg_possibility) {
		this.avg_possibility = avg_possibility;
	}

	public double getAvg_welSal() {
		return avg_welSal;
	}

	public void setAvg_welSal(double avg_welSal) {
		this.avg_welSal = avg_welSal;
	}

	public double getAvg_balance() {
		return avg_balance;
	}

	public void setAvg_balance(double avg_balance) {
		this.avg_balance = avg_balance;
	}

	public double getAvg_culture() {
		return avg_culture;
	}

	public void setAvg_culture(double avg_culture) {
		this.avg_culture = avg_culture;
	}

	public double getAvg_manager() {
		return avg_manager;
	}

	public void setAvg_manager(double avg_manager) {
		this.avg_manager = avg_manager;
	}

	public double getAvg_all() {
		return avg_all;
	}

	public void setAvg_all(double avg_all) {
		this.avg_all = avg_all;
	}

	@Override
	public String toString() {
		return "AvgScoreDTO [company_id=" + company_id + ", company_name=" + company_name + ", company_size="
				+ company_size + ", company_turnover=" + company_turnover + ", company_line=" + company_line + ", rank="
				+ rank + ", avg_possibility=" + avg_possibility + ", avg_welSal=" + avg_welSal + ", avg_balance="
				+ avg_balance + ", avg_culture=" + avg_culture + ", avg_manager=" + avg_manager + ", avg_all=" + avg_all
				+ "]";
	}

}
