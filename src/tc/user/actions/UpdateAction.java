package tc.user.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import tc.user.dao.UserInfoDAO;
import tc.user.dto.UserInfoDTO;

public class UpdateAction extends Action{
	   @Override
	   public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
	         HttpServletResponse response) throws Exception {
	      System.out.println("JoinUpdateAction >>> execute()");
	      String action=request.getParameter("action");
	      ActionForward forward= null;
	   
	       
	       UserInfoDAO dao = new UserInfoDAO();
	       UserInfoDTO upinfo = new UserInfoDTO();
	    
	         if(action==null||action.equals("update")) {
	          System.out.println(request.getParameter("up_pass"));
	          String up_pass= request.getParameter("up_pass");
	          String up_name= request.getParameter("up_name");
	          String up_email= request.getParameter("up_email");
	          String up_phone= request.getParameter("up_phone");
	          String up_addr= request.getParameter("up_addr");
	          String up_prio= request.getParameter("up_prio");
	          
	          upinfo.setUser_pass(up_pass);
	          upinfo.setUser_name(up_name);
	          upinfo.setUser_email(up_email);
	          upinfo.setUser_phone(up_phone);
	          upinfo.setUser_addr(up_addr);
	          upinfo.setUser_prio(up_prio);
	          
	          dao.update(upinfo);
	          
	          response.setContentType("text/html;charset=UTF-8");
	          response.getWriter().print("<script>alert('수정이 완료되었습니다.');$('#joinUpModal').modal('hide');</script>");
	          
	          forward= mapping.findForward("update");
	       }
	       
	       return forward;       
	   }
}