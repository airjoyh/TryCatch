package tc.user.dto;

public class UserInfoDTO {
	private String user_id;
	private String user_pass;
	private String user_name;
	private String user_email;
	private String user_phone;
	private String user_addr;
	private String user_prio;

	public UserInfoDTO() {
		// TODO Auto-generated constructor stub
	}

	public UserInfoDTO(String user_id, String user_pass, String user_name, String user_email, String user_phone,
			String user_addr, String user_prio) {
		super();
		this.user_id = user_id;
		this.user_pass = user_pass;
		this.user_name = user_name;
		this.user_email = user_email;
		this.user_phone = user_phone;
		this.user_addr = user_addr;
		this.user_prio = user_prio;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pass() {
		return user_pass;
	}

	public void setUser_pass(String user_pass) {
		this.user_pass = user_pass;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_phone() {
		return user_phone;
	}

	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}

	public String getUser_addr() {
		return user_addr;
	}

	public void setUser_addr(String user_addr) {
		this.user_addr = user_addr;
	}

	public String getUser_prio() {
		return user_prio;
	}

	public void setUser_prio(String user_prio) {
		this.user_prio = user_prio;
	}

	
}
