package tc.company.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import tc.company.dao.ComInfoDAO;
import tc.company.forms.IdCheckActionForm;

public class IdCheckAction extends Action {

	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
	
		System.out.println("IdCheckAction>>execute()");
		ActionForward forward= null;
		IdCheckActionForm icaform=(IdCheckActionForm) form;
        String company_id= icaform.getCompany_id();
        System.out.println("IdCheckAction: "+company_id);
		
        ComInfoDAO dao = new ComInfoDAO();
        if(dao.selectId(company_id)) {
        	System.out.println("중복된 아이디");
        	
        	request.setAttribute("duplicate","사용할 수 없는 아이디입니다.");
        }else {
        	System.out.println("사용가능 아이디");

        	request.setAttribute("duplicate","사용가능한 아이디입니다.");
        	
        }
		
		return mapping.findForward("success");
	}
}
