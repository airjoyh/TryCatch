package tc.user.forms;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

public class IdCheckActionForm extends ActionForm {
	private String user_id;

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	@Override
	public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {

		System.out.println("IdCheckActionForm >>> validate()");
		System.out.println(user_id);

		ActionErrors errs = new ActionErrors();
		if (!user_id.matches("^[a-zA-Z0-9]{6,15}$")) {
			errs.add("noId", new ActionMessage("idCheck", "아이디는 6~15자리 영문 숫자 조합입니다."));
			System.out.println(">>>>1");
		}

		return errs;
	}

}
