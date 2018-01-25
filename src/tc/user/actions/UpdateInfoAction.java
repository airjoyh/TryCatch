package tc.user.actions;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import tc.user.dao.UserInfoDAO;
import tc.user.dto.UserInfoDTO;

public class UpdateInfoAction extends Action{
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
    		HttpServletResponse response) throws Exception {
    	//String login_id = request.getParameter("login_id");
    	HttpSession session = request.getSession();
    	  String login_id= (String) session.getAttribute("login_id");
		UserInfoDAO userinfodao = new UserInfoDAO();
			UserInfoDTO dto = userinfodao.selectUp(login_id);

    	//return "{\"user_id\":\""+dto.getUser_id()+"\"}";//{"user_id":"gildong","user_pass":"1234"}
		 response.setContentType("text/html;charset=UTF-8");	
		 PrintWriter out =	response.getWriter();
	     out.print(("{'user_id':'"+dto.getUser_id()+"',"+
	             "'user_pass':'"+dto.getUser_pass()+"',"+
	             "'user_name':'"+dto.getUser_name()+"',"+
	             "'user_email':'"+dto.getUser_email()+"',"+
	             "'user_phone':'"+dto.getUser_phone()+"',"+
	             "'user_addr':'"+dto.getUser_addr()+"',"+
	             "'user_prio':'"+dto.getUser_prio()+"'}").replace("'", "\""));
	     //{"user_id":"gildong","user_pass":"1234"}
	     return null;
    }
} 
