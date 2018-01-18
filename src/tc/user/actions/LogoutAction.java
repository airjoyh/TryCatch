package tc.user.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class LogoutAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		System.out.println("LogoutAction >>> excute()");
		HttpSession session = request.getSession();
		session.invalidate();//������ �����Ų��.
		
		response.setContentType("text/html;charset=UTF-8");
		response.getWriter().print("<script>alert('�α׾ƿ��Ǿ����ϴ�.');window.close();</script>");
		
		return mapping.findForward("logout");
	}
	
}
