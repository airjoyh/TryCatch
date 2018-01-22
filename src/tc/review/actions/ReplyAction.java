package tc.review.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import tc.review.dao.ReplyDAO;
import tc.review.dto.ReplyDTO;

public class ReplyAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("ReplyAction >>> execute()");
		String action = request.getParameter("action");
		ActionForward forward = null;
		HttpSession session = request.getSession();
		
		if(action==null) {
			action="list";//�׼� �⺻��:list
			//System.out.println("action=null or list");
		}
		ReplyDAO dao = new ReplyDAO();
		
		switch(action) {//NullPointerException�߻�
		   case "list": //if(action==null || action.equals("list"))
		   {
			   System.out.println("action=list");
			   String review_no = request.getParameter("no");
			   System.out.println("�Խñ� ��ȣ: "+review_no);
			   List<ReplyDTO> list = dao.selectAll(Integer.parseInt(review_no));
			   request.setAttribute("list", list);
			   forward = mapping.findForward("list");
		   }
			   break;
		   case "insert": 
		   {
			   System.out.println("action=insert");
			   //int reply_no;
			   String reply_contents = request.getParameter("content");
			   String review_no = request.getParameter("no");
			   //Date reply_wdate;
			   String login_id = (String) session.getAttribute("login_id");
			    
			   ReplyDTO dto = new ReplyDTO(0, reply_contents, Integer.parseInt(review_no), null, login_id);
			   System.out.println(dto);
			   if(dao.insert(dto)) {
				   request.setAttribute("msg", "����Է� ����!!");
			   }else {
				   request.setAttribute("msg", "����Է½���!!");
			   }
			   
			   forward = mapping.findForward("insert");
			   
			    /*response.setContentType("text/html;charset=UTF-8");
			    response.getWriter().print("��ۼ���!!"); */
		   }  
		   		break;
		   case "update"://���� ��û
		   {
			   /*Reply reply = new Reply();
			   reply.setNo(Integer.parseInt(request.getParameter("no")));
			   reply.setName(request.getParameter("name"));
			   reply.setContent(request.getParameter("content"));
			   
			   if(dao.update(reply)) {
				   request.setAttribute("msg", "��ۼ��� ����!!");
			   }else {
				   
				   request.setAttribute("msg", "��ۼ��� ����!!");
			   }
			   forward = mapping.findForward("result");*/
		   }   
			   break;
		   case "delete":
		   {
			   /*int no = Integer.parseInt(request.getParameter("no"));
			   
			   if(dao.delete(no)) {
				   request.setAttribute("msg", "��� ���� ����!");
			   }else {
				   request.setAttribute("msg", "��� ���� ����!");
				   
			   }
			   forward = mapping.findForward("result");*/
		   }
			   break;
		}//switch
		
		
		return forward;
	}
}
