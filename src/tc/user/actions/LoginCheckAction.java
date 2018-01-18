package tc.user.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class LoginCheckAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Object loginState = request.getSession().getAttribute("loginState");
		if(loginState==null || !loginState.equals("login")) {
			response.getWriter().print("fail");			
		}else {
			response.getWriter().print("login");	
		}
		return null;
	}
	
}
