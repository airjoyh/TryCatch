package tc.company.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class CLoginCheckAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Object com_loginState = request.getSession().getAttribute("com_loginState");
		if(com_loginState==null || !com_loginState.equals("login")) {
			response.getWriter().print("fail");			
		}else {
			response.getWriter().print("login");	
		}
		return null;
	}
	
}