package tc.user.forms;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.chain.commands.servlet.ValidateActionForm;

import com.sun.xml.internal.bind.v2.model.core.ID;

public class LoginActionForm extends ActionForm {
	private String login_id;
	private String login_pass;

	public String getLogin_id() {
		return login_id;
	}

	public void setLogin_id(String login_id) {
		this.login_id = login_id;
	}

	public String getLogin_pass() {
		return login_pass;
	}

	public void setLogin_pass(String login_pass) {
		this.login_pass = login_pass;
	}

	@Override
	public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
		System.out.println("LoginActionForm >>> validate()");

		System.out.println("로그인 아이디: "+login_id+"/로그인 비밀번호: "+login_pass);

		ActionErrors errs = new ActionErrors();
		
		/*if(login_id.length()==0 || !login_id.matches("^[a-zA-z0-9]{6,15}$")) {
			errs.add("noLogin", new ActionMessage("login", "아이디는 6~15자리 영문 숫자 조합입니다."));
		
		}else if(login_pass.length()==0) {
			errs.add("noLogin", new ActionMessage("login", "비밀번호를 입력하시오."));
		
		}*/

		return errs;
	}

}
