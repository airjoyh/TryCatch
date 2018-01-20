package tc.review.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import tc.review.dao.ReviewDAO;
import tc.review.dto.ReviewDTO;

public class ReviewUpDelAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("ReviewUpDelAction >>> execute()");

		String action = request.getParameter("action");
		ActionForward forward = null;
		ReviewDAO dao = new ReviewDAO();

		if (action.equals("upForm")) {
			String review_no = request.getParameter("no");

			ReviewDTO reviewdto = dao.select(Integer.parseInt(review_no));

			request.setAttribute("review", reviewdto);

			forward = mapping.findForward("upForm");

		} else if (action.equals("update")) {
			String review_no = request.getParameter("no");
			String review_title = request.getParameter("title");
			String review_strong = request.getParameter("strong");
			String review_weak = request.getParameter("weak");
			String review_toCEO = request.getParameter("toCEO");
			String review_possibility = request.getParameter("possibility");
			String review_welSal = request.getParameter("welSal");
			String review_balance = request.getParameter("balance");
			String review_culture = request.getParameter("culture");
			String review_manager = request.getParameter("manager");

			ReviewDTO reviewdto = new ReviewDTO();
			reviewdto.setReview_no(Integer.parseInt(review_no));
			reviewdto.setReview_title(review_title);
			reviewdto.setReview_strong(review_strong);
			reviewdto.setReview_weak(review_weak);
			reviewdto.setReview_toCEO(review_toCEO);
			reviewdto.setReview_possibility(Integer.parseInt(review_possibility));
			reviewdto.setReview_welSal(Integer.parseInt(review_welSal));
			reviewdto.setReview_balance(Integer.parseInt(review_balance));
			reviewdto.setReview_culture(Integer.parseInt(review_culture));
			reviewdto.setReview_manager(Integer.parseInt(review_manager));

			System.err.println(reviewdto);

			if (dao.update(reviewdto)) {
				request.setAttribute("msg", "게시글이 수정되었습니다.");

			} else {
				request.setAttribute("msg", "게시글 수정 실패!");

			}

			forward = mapping.findForward("update");
		}else if(action.equals("delete")) {
			String review_no = request.getParameter("no");
			
			if(dao.delete(Integer.parseInt(review_no))) {
				request.setAttribute("msg", "게시글이 삭제되었습니다");
			}else {
				request.setAttribute("msg", "게시글 삭제 실패!");
			}
			forward = mapping.findForward("delete");
		}

		return forward;

	}
}
