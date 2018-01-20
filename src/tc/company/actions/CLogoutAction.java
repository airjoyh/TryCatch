package tc.company.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.valves.rewrite.RewriteCond;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class CLogoutAction extends Action {
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		System.out.println("LogoutAction >>excute()");
		HttpSession session= request.getSession();
		session.invalidate();
		
		response.setContentType("text/html;charsset=UTF-8");
		response.getWriter().print("<script>alert('로그아웃되었습니다.');window.close();</script>");
		
		
		return null;
	}

}
