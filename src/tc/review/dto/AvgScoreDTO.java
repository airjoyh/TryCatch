package tc.review.dto;

public class AvgScoreDTO {

	private double avg_possibility;
	private double avg_welSal;
	private double avg_balance;
	private double avg_culture;
	private double avg_manager;

	public AvgScoreDTO() {
		// TODO Auto-generated constructor stub
	}

	public AvgScoreDTO(double avg_possibility, double avg_welSal, double avg_balance, double avg_culture,
			double avg_manager) {
		super();
		this.avg_possibility = avg_possibility;
		this.avg_welSal = avg_welSal;
		this.avg_balance = avg_balance;
		this.avg_culture = avg_culture;
		this.avg_manager = avg_manager;
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

	@Override
	public String toString() {
		return "AvgScoreDTO [avg_possibility=" + avg_possibility + ", avg_welSal=" + avg_welSal + ", avg_balance="
				+ avg_balance + ", avg_culture=" + avg_culture + ", avg_manager=" + avg_manager + "]";
	}

}
