package tc.review.actions;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import tc.review.dao.ReviewDAO;
import tc.review.dto.ReviewDTO;

public class ReviewAction extends Action {

	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("ReviewAction >>> excute()");
		
		String action = request.getParameter("action");
		ActionForward forward = null;
		HttpSession session = request.getSession();
		
		if(action==null || action.equals("list")) {
			forward = mapping.findForward("list");
		}else if(action.equals("inputForm")) {
			String loginState=(String) session.getAttribute("loginState");
			System.out.println("loginState="+loginState);
			
			if(loginState==null || !loginState.equals("login")) {
				System.out.println("로그인 안했을때");
				response.setContentType("text/html;charset=UTF-8");
				response.getWriter().print("<script>alert('로그인하신 후에 이용 가능합니다.');</script>");		
				//이 알림이 안뜨고 페이지가 이동된다.
				
				//request.setAttribute("loginIng", "noLogin");
				
				forward = mapping.findForward("fail");
				
			}else {
				System.out.println("로그인 했을때");
				forward = mapping.findForward("inputForm");			
			}
		}else if(action.equals("insert")) {
			//int review_no;
			String review_writer = request.getParameter("writer");
			String review_title = request.getParameter("title");
			//int review_count;
			String review_possibility= request.getParameter("possibility");
			String review_welSal = request.getParameter("welSal");
			String review_balance = request.getParameter("balance");
			String review_culture = request.getParameter("culture");
			String review_manager = request.getParameter("manager");
			String review_strong = request.getParameter("strong");
			String review_weak = request.getParameter("weak");
			String review_toCEO = request.getParameter("toCEO");
			String company_id = request.getParameter("company_id");
			//Date review_wdate;
			String login_id = (String) session.getAttribute("login_id");
			
			System.out.println(review_writer+", "+review_title+", "+review_strong+", "+review_weak+", "+review_toCEO);
			System.out.println(review_possibility+", "+review_welSal+", "+review_balance+", "+review_culture+ ", "+review_manager);
			System.out.println(company_id+", "+login_id);
			
			ReviewDTO dto = new ReviewDTO(0, review_writer, review_title, 0,
					Integer.parseInt(review_possibility), Integer.parseInt(review_welSal), 
					Integer.parseInt(review_balance), Integer.parseInt(review_culture), 
					Integer.parseInt(review_manager), review_strong, review_weak, 
					review_toCEO, company_id, null, login_id);
			ReviewDAO dao = new ReviewDAO();
			
			if(dao.insert(dto)) {
				response.setContentType("text/html;charset=UTF-8");//한글을 사용하기 위하면 인코딩
	            response.getWriter().print("<script>alert('글쓰기가 완료되었습니다.');</script>");
			
	            forward = mapping.findForward("insert");
			}
			//request.setAttribute("list", dao.selectAll());
			
		}
		
		
		return forward;
	}
	
}
