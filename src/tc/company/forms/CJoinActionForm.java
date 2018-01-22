package tc.company.forms;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

public class CJoinActionForm extends ActionForm {

	private String company_id;
	private String company_pass;
	private String company_name;
	private String company_year;
	private String company_line;
	private String skill_java;
	private String skill_jquery;
	private String skill_python;
	private String skill_xml;
	private String skill_css;
	private String skill_pro;
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

	public String getSkill_java() {
		return skill_java;
	}

	public void setSkill_java(String skill_java) {
		this.skill_java = skill_java;
	}

	public String getSkill_jquery() {
		return skill_jquery;
	}

	public void setSkill_jquery(String skill_jquery) {
		this.skill_jquery = skill_jquery;
	}

	public String getSkill_python() {
		return skill_python;
	}

	public void setSkill_python(String skill_python) {
		this.skill_python = skill_python;
	}

	public String getSkill_xml() {
		return skill_xml;
	}

	public void setSkill_xml(String skill_xml) {
		this.skill_xml = skill_xml;
	}

	public String getSkill_css() {
		return skill_css;
	}

	public void setSkill_css(String skill_css) {
		this.skill_css = skill_css;
	}

	public String getSkill_pro() {
		return skill_pro;
	}

	public void setSkill_pro(String skill_pro) {
		this.skill_pro = skill_pro;
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
	public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {

		System.out.println("JoinActionForm >> validate()");
		
		System.out.println("스킬 자바: "+ skill_java);
		System.out.println("스킬 제이쿼리: "+ skill_jquery);
		System.out.println("스킬 파이썬: "+ skill_python);
		
		ActionErrors errs = new ActionErrors();

		if (!company_id.matches("^[a-zA-Z0-9]{6,15}$")) {
			errs.add("noJoin", new ActionMessage("join", "아이디는 6~15자리 영문 숫자 조합입니다."));

		} else if (company_pass.equals("")) {
			errs.add("noJoin", new ActionMessage("join", "비밀번호를 입력하시오."));

		} else if (company_name.equals("")) {
			errs.add("noJoin", new ActionMessage("join", "기업명을 입력하시오."));

		} else if (company_year.equals("")) {
			errs.add("noJoin", new ActionMessage("join", "기업 설립년도를 입력하시오."));

		} else if (company_line.equals("==선택==")) {
			errs.add("noJoin", new ActionMessage("join", "산업군을 선택하시오."));

		} else if (skill_java == null && skill_jquery == null && skill_css == null && skill_pro == null
				&& skill_python == null && skill_xml == null) {
			
			errs.add("noJoin", new ActionMessage("join", "요구하는 스킬을 선택하시오."));

		} else if (company_size.equals("")|| !company_size.matches("^[0-9]{1,7}$")) {
			errs.add("noJoin", new ActionMessage("join", "기업 규모를 입력하시오."));

		} else if (company_turnover.equals("")|| !company_turnover.matches("^[0-9]{1,14}$")) {
			errs.add("noJoin", new ActionMessage("join", "매출액을 입력하시오."));

		} else if (company_number.equals("")|| !company_number.matches("^[0-9]{5,15}$")) {
			errs.add("noJoin", new ActionMessage("join", "사업자 등록번호를 입력하시오."));

		} else if (company_addr.equals("")) {
			errs.add("noJoin", new ActionMessage("join", "기업 주소를 입력하시오."));

		} else if (company_site.equals("")) {
			errs.add("noJoin", new ActionMessage("join", "기업 사이트를 입력하시오."));

		} else if (company_intro.equals("")) {
			errs.add("noJoin", new ActionMessage("join", "기업 소개를 입력하시오."));

		} else if (company_hireNumber.equals("")||!company_hireNumber.matches("^[0-9]{1,5}$")) {
			errs.add("noJoin", new ActionMessage("join", "채용할 인원수를 입력하시오."));

		} else if (manager_name.equals("")) {
			errs.add("noJoin", new ActionMessage("join", "담당자 이름을 입력하시오."));

		} else if (manager_email.equals("") || !manager_email.matches("^[a-zA-Z0-9]+@[a-zA-Z]+\\.[a-zA-Z]+$")) {
			errs.add("noJoin", new ActionMessage("join", "잘못된 이메일 형식입니다."));

		} else if (team_name.equals("")) {
			errs.add("noJoin", new ActionMessage("join", "소속팀 이름을 입력하시오."));

		} else if (manager_tel.equals("")|| !manager_tel.matches("^[0-9]{9,15}$")) {
			errs.add("noJoin", new ActionMessage("join", "담당자 전화번호를 입력하시오."));
		}

		return errs;
	}
}
