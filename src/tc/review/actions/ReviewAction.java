package tc.review.actions;

import java.sql.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import tc.review.dao.ReplyDAO;
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
		int page=0; // = Integer.parseInt(pageStr);
		int displayRecord = 5; // 한페이지에 보여지는 수

		if (action == null || action.equals("list")) {
			System.out.println("action=null or list");
			String pageStr = request.getParameter("page");


			if (pageStr == null) {// 페이지 정보가 없을 때
				page = 1;
			} else {
				page = Integer.parseInt(pageStr);
			}

			ReviewDAO dao = new ReviewDAO();
			int totalRecord = dao.selectCount();// 총 조회된 수
			int totalPage = totalRecord / displayRecord;// 32/10 --> 3페이지
			// 23 = 115/5
			// 23 = 116/5

			int startPage = page / displayRecord * displayRecord + 1; // page/5*5+1
			int endPage = startPage + (displayRecord - 1); // startPage+4
			if (endPage > totalPage) {
				endPage = totalPage + 1;
				if (totalRecord % displayRecord == 0) {// 딱 맞아떨어질때
					endPage = totalPage;
				}
			}

			if (totalRecord % displayRecord > 0) {// 나머지가 있을 때
				totalPage++;// 4페이지
			}

			//req.setAttribute("list", dao.selectAll());// 3-2 전체 데이터
			Map<String, Object>  listMap = dao.selectPage(page, displayRecord);
			
			request.setAttribute("list", listMap.get("list")); //listMap에 있는 키값 셋
			request.setAttribute("reply_cnt", listMap.get("reply_cnt_list")); //listMap에 있는 키값 셋
			request.setAttribute("page", page);	
			request.setAttribute("totalPage", totalPage);
			request.setAttribute("startPage", startPage);
			request.setAttribute("endPage", endPage);
			
			
			forward = mapping.findForward("list");

		} else if (action.equals("inputForm")) {
			System.out.println("action=inputForm");
			String loginState = (String) session.getAttribute("loginState");
			System.out.println("loginState=" + loginState);

			if (loginState == null || !loginState.equals("login")) {
				System.out.println("로그인 안했을때");
				
				response.setContentType("text/html;charset=UTF-8");
				response.getWriter().print("<script>alert('로그인하신 후에 이용 가능합니다.');</script>");
				// 이 알림이 안뜨고 페이지가 이동된다. --> 해결함. but 위의 두줄은 필요없음
				
				
				forward = mapping.findForward("noLogin");

			} else {
				System.out.println("로그인 했을때");
				forward = mapping.findForward("inputForm");
			}
		} else if (action.equals("insert")) {
			System.out.println("action=insert");
			// int review_no;
			String review_writer = request.getParameter("writer");
			String review_title = request.getParameter("title");
			// int review_count;
			String review_possibility = request.getParameter("possibility");
			String review_welSal = request.getParameter("welSal");
			String review_balance = request.getParameter("balance");
			String review_culture = request.getParameter("culture");
			String review_manager = request.getParameter("manager");
			String review_strong = request.getParameter("strong");
			String review_weak = request.getParameter("weak");
			String review_toCEO = request.getParameter("toCEO");
			String company_id = request.getParameter("company_id");
			// Date review_wdate;
			String login_id = (String) session.getAttribute("login_id");

			System.out.println(review_writer + ", " + review_title + ", " + review_strong + ", " + review_weak + ", "
					+ review_toCEO);
			System.out.println(review_possibility + ", " + review_welSal + ", " + review_balance + ", " + review_culture
					+ ", " + review_manager);
			System.out.println(company_id + ", " + login_id);

			ReviewDTO dto = new ReviewDTO(0, review_writer, review_title, 0, Integer.parseInt(review_possibility),
					Integer.parseInt(review_welSal), Integer.parseInt(review_balance), Integer.parseInt(review_culture),
					Integer.parseInt(review_manager), review_strong, review_weak, review_toCEO, company_id, null,
					login_id);
			ReviewDAO dao = new ReviewDAO();

			if (dao.insert(dto)) {
				response.setContentType("text/html;charset=UTF-8");// 한글을 사용하기 위하면 인코딩
				response.getWriter().print("<script>alert('글쓰기가 완료되었습니다.');</script>");
				//굳이 할필요 없을듯

				forward = mapping.findForward("insert");
			}
			
			String pageStr = request.getParameter("page");
			if (pageStr == null) {// 페이지 정보가 없을 때
				page = 1;
			} else {
				page = Integer.parseInt(pageStr);
			}

			int totalRecord = dao.selectCount();// 총 조회된 수
			int totalPage = totalRecord / displayRecord;// 32/10 --> 3페이지
			// 23 = 115/5
			// 23 = 116/5

			int startPage = page / displayRecord * displayRecord + 1; // page/5*5+1
			int endPage = startPage + (displayRecord - 1); // startPage+4
			if (endPage > totalPage) {
				endPage = totalPage + 1;
				if (totalRecord % displayRecord == 0) {// 딱 맞아떨어질때
					endPage = totalPage;
				}
			}

			if (totalRecord % displayRecord > 0) {// 나머지가 있을 때
				totalPage++;// 4페이지
			}

			//req.setAttribute("list", dao.selectAll());// 3-2 전체 데이터
			request.setAttribute("list", dao.selectPage(page, displayRecord));// 3-2 특정페이지 데이터
			request.setAttribute("page", page);	
			request.setAttribute("totalPage", totalPage);
			request.setAttribute("startPage", startPage);
			request.setAttribute("endPage", endPage);
			
			request.setAttribute("list", dao.selectPage(page, displayRecord));

		} else if(action.equals("select")) {
			String review_no = request.getParameter("no");
			System.out.println("action=select");
			System.out.println(review_no);
			
			ReviewDAO dao = new ReviewDAO();

			if(dao.updateCount(Integer.parseInt(review_no))) {
				ReviewDTO reviewdto = dao.select(Integer.parseInt(review_no));
				request.setAttribute("review", reviewdto);
			}
			
			forward = mapping.findForward("select");
		}

		return forward;
	}

}
