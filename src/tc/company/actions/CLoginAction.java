package tc.company.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import tc.company.dao.ComInfoDAO;

public class CLoginAction extends Action{
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
	   System.out.println("CLoginAction>>execute()");
		
	   String login_id=  request.getParameter("login_id");
	   String login_pass= request.getParameter("login_pass");
	    
	   System.out.println(login_id);
	   System.out.println(login_pass);
	   ComInfoDAO dao = new ComInfoDAO();
	    if(dao.selectLogin(login_id, login_pass)) {
	    	HttpSession session= request.getSession();
	    	session.setAttribute("com_loginState", "login");
	        session.setAttribute("com_login_id", login_id);
	    	
	    	request.setAttribute("login","success");
	    	System.out.println("success");
	    }else {
	    	request.setAttribute("login", "fail");
	    	System.out.println("fail");
	    }
	   
		return mapping.findForward("success");
	}

}
