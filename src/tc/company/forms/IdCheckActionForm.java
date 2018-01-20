package tc.company.forms;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

public class IdCheckActionForm extends ActionForm{

	private String company_id;	
	
	public String getCompany_id() {
		return company_id;
	}

	public void setCompany_id(String company_id) {
		this.company_id = company_id;
	}

	@Override
	public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
		System.out.println("IdCheckActionForm>>validate()");
		System.out.println(company_id);
		
		 ActionErrors errs= new ActionErrors();
		 if(!company_id.matches("^[a-zA-Z0-9]{6,15}$")) {
			 errs.add("noId", new ActionMessage("idCheck","아이디는 6~15자리 영문 숫자 조합입니다."));
		 }
		 
		return errs;
	}
}

