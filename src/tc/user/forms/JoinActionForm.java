package tc.user.forms;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

public class JoinActionForm extends ActionForm {
	private String user_id;
	private String user_pass;
	private String user_name;
	private String user_phone;
	private String user_email;
	private String user_addr;
	private String user_prio;

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

	@Override
	public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
		System.out.println("JoinActionForm >>> validate()");

		System.out.println(user_id + ", " + user_pass + ", " + user_name + ", " + user_phone);
		System.out.println(user_email + ", " + user_addr + ", " + user_prio);

		ActionErrors errs = new ActionErrors();

		if (!user_id.matches("^[a-zA-Z0-9]{6,15}$")) {
			errs.add("noJoin", new ActionMessage("join", "아이디는 6~15자리 영문 숫자 조합입니다."));
			System.out.println(">>>>1");
		} else if (user_pass.equals("")) {
			errs.add("noJoin", new ActionMessage("join", "비밀번호를 입력하시오."));
			System.out.println(">>>>2");

		} else if (user_name.length() == 0) {
			errs.add("noJoin", new ActionMessage("join", "이름을 입력하시오."));
			System.out.println(">>>>3");

		} else if (user_phone.matches("/(01[0|1|6|9|7])[-](\\d{3}|\\d{4})[-](\\d{4}$)/")) {
			errs.add("noJoin", new ActionMessage("join", "잘못된 핸드폰 번호 형식입니다."));
			System.out.println(">>>>4");

		} else if (user_email == null || !user_email.matches("^[a-zA-Z0-9]+@[a-zA-Z]+\\.[a-zA-Z]+$")) {
			errs.add("noJoin", new ActionMessage("join", "잘못된 이메일 형식입니다."));
			System.out.println(">>>>5");

		} else if (user_prio.equals("원하는 기업조건을 선택하세요")) {
			errs.add("noJoin", new ActionMessage("join", "우선순위를 선택해주세요."));
			System.out.println(">>>>6");

		}

		return errs;
	}
}
