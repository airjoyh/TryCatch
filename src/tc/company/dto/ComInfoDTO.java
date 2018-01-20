package tc.company.dto;

public class ComInfoDTO {

	   private String company_id;    
	   private String company_pass;    
	   private String company_name;   
	   private String company_year;   
	   private String company_line;   
	   private String company_skill;   
	   private String company_size;   
	   private String company_turnover;    
	   private String company_number;   
	   private String company_addr;   
	   private String company_site;    
	   private String company_intro;    
	   private String company_hireNumber;  
	   private String manager_name; 
	   private String manager_email;    
	   private String team_name;   
	   private String manager_tel;
	   
	   public ComInfoDTO() {
	
	}

	public ComInfoDTO(String company_id, String company_pass, String company_name, String company_year,
			String company_line, String company_skill, String company_size, String company_turnover,
			String company_number, String company_addr, String company_site, String company_intro,
			String company_hireNumber, String manager_name, String manager_email, String team_name,
			String manager_tel) {
		super();
		this.company_id = company_id;
		this.company_pass = company_pass;
		this.company_name = company_name;
		this.company_year = company_year;
		this.company_line = company_line;
		this.company_skill = company_skill;
		this.company_size = company_size;
		this.company_turnover = company_turnover;
		this.company_number = company_number;
		this.company_addr = company_addr;
		this.company_site = company_site;
		this.company_intro = company_intro;
		this.company_hireNumber = company_hireNumber;
		this.manager_name = manager_name;
		this.manager_email = manager_email;
		this.team_name = team_name;
		this.manager_tel = manager_tel;
	}

	public String getCompany_id() {
		return company_id;
	}

	public void setCompany_id(String company_id) {
		this.company_id = company_id;
	}

	public String getCompany_pass() {
		return company_pass;
	}

	public void setCompany_pass(String company_pass) {
		this.company_pass = company_pass;
	}

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public String getCompany_year() {
		return company_year;
	}

	public void setCompany_year(String company_year) {
		this.company_year = company_year;
	}

	public String getCompany_line() {
		return company_line;
	}

	public void setCompany_line(String company_line) {
		this.company_line = company_line;
	}

	public String getCompany_skill() {
		return company_skill;
	}

	public void setCompany_skill(String company_skill) {
		this.company_skill = company_skill;
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

	public String getCompany_number() {
		return company_number;
	}

	public void setCompany_number(String company_number) {
		this.company_number = company_number;
	}

	public String getCompany_addr() {
		return company_addr;
	}

	public void setCompany_addr(String company_addr) {
		this.company_addr = company_addr;
	}

	public String getCompany_site() {
		return company_site;
	}

	public void setCompany_site(String company_site) {
		this.company_site = company_site;
	}

	public String getCompany_intro() {
		return company_intro;
	}

	public void setCompany_intro(String company_intro) {
		this.company_intro = company_intro;
	}

	public String getCompany_hireNumber() {
		return company_hireNumber;
	}

	public void setCompany_hireNumber(String company_hireNumber) {
		this.company_hireNumber = company_hireNumber;
	}

	public String getManager_name() {
		return manager_name;
	}

	public void setManager_name(String manager_name) {
		this.manager_name = manager_name;
	}

	public String getManager_email() {
		return manager_email;
	}

	public void setManager_email(String manager_email) {
		this.manager_email = manager_email;
	}

	public String getTeam_name() {
		return team_name;
	}

	public void setTeam_name(String team_name) {
		this.team_name = team_name;
	}

	public String getManager_tel() {
		return manager_tel;
	}

	public void setManager_tel(String manager_tel) {
		this.manager_tel = manager_tel;
	}

	@Override
	public String toString() {
		return "ComInfoDTO [company_id=" + company_id + ", company_pass=" + company_pass + ", company_name="
				+ company_name + ", company_year=" + company_year + ", company_line=" + company_line
				+ ", company_skill=" + company_skill + ", company_size=" + company_size + ", company_turnover="
				+ company_turnover + ", company_number=" + company_number + ", company_addr=" + company_addr
				+ ", company_site=" + company_site + ", company_intro=" + company_intro + ", company_hireNumber="
				+ company_hireNumber + ", manager_name=" + manager_name + ", manager_email=" + manager_email
				+ ", team_name=" + team_name + ", manager_tel=" + manager_tel + "]";
	}
   
}
