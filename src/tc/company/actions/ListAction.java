package tc.company.actions;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import tc.company.dao.ComListDAO;


public class ListAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("ListAction >>> execute()");
		String action = request.getParameter("action");
		ActionForward forward = null;
		int page=0; // = Integer.parseInt(pageStr);
		int displayRecord = 5; // 한페이지에 보여지는 수
		ComListDAO dao = new ComListDAO();
		
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
		
		if(action.equals("total")) {
			System.out.println("action=total");
			request.setAttribute("action", "total");
			
			Map<String, Object>  listMap = dao.find_totalList(page, displayRecord);
			System.out.println(listMap.get("review_cnt_list"));
			request.setAttribute("list", listMap.get("list"));
			request.setAttribute("review_cnt", listMap.get("review_cnt_list"));
			request.setAttribute("page", page);	
			request.setAttribute("totalPage", totalPage);
			request.setAttribute("startPage", startPage);
			request.setAttribute("endPage", endPage);
			
			forward = mapping.findForward("list");
			
		}else if(action.equals("possibility")) {
			System.out.println("action=possibility");
			request.setAttribute("action", "possibility");
			
			Map<String, Object>  listMap = dao.find_possibilityList(page, displayRecord);
			System.out.println(listMap.get("review_cnt_list"));
			request.setAttribute("list", listMap.get("list"));
			request.setAttribute("review_cnt", listMap.get("review_cnt_list"));
			request.setAttribute("page", page);	
			request.setAttribute("totalPage", totalPage);
			request.setAttribute("startPage", startPage);
			request.setAttribute("endPage", endPage);
			
			forward = mapping.findForward("list");
			
		}else if(action.equals("welSal")) {
			System.out.println("action=welSal");
			request.setAttribute("action", "welSal");
			
			Map<String, Object>  listMap = dao.find_welSalList(page, displayRecord);
			System.out.println(listMap.get("review_cnt_list"));
			request.setAttribute("list", listMap.get("list"));
			request.setAttribute("review_cnt", listMap.get("review_cnt_list"));
			request.setAttribute("page", page);	
			request.setAttribute("totalPage", totalPage);
			request.setAttribute("startPage", startPage);
			request.setAttribute("endPage", endPage);
			
			forward = mapping.findForward("list");
			
		}else if(action.equals("balance")) {
			System.out.println("action=balance");
			request.setAttribute("action", "balance");
			
			Map<String, Object>  listMap = dao.find_balanceList(page, displayRecord);
			System.out.println(listMap.get("review_cnt_list"));
			request.setAttribute("list", listMap.get("list"));
			request.setAttribute("review_cnt", listMap.get("review_cnt_list"));
			request.setAttribute("page", page);	
			request.setAttribute("totalPage", totalPage);
			request.setAttribute("startPage", startPage);
			request.setAttribute("endPage", endPage);
			
			forward = mapping.findForward("list");
			
		}else if(action.equals("culture")) {
			System.out.println("action=culture");
			request.setAttribute("action", "culture");
			
			Map<String, Object>  listMap = dao.find_cultureList(page, displayRecord);
			System.out.println(listMap.get("review_cnt_list"));
			request.setAttribute("list", listMap.get("list"));
			request.setAttribute("review_cnt", listMap.get("review_cnt_list"));
			request.setAttribute("page", page);	
			request.setAttribute("totalPage", totalPage);
			request.setAttribute("startPage", startPage);
			request.setAttribute("endPage", endPage);
			
			forward = mapping.findForward("list");
			
		}else if(action.equals("manager")) {
			System.out.println("action=manager");
			request.setAttribute("action", "manager");
			
			Map<String, Object>  listMap = dao.find_managerList(page, displayRecord);
			System.out.println(listMap.get("review_cnt_list"));
			request.setAttribute("list", listMap.get("list"));
			request.setAttribute("review_cnt", listMap.get("review_cnt_list"));
			request.setAttribute("page", page);	
			request.setAttribute("totalPage", totalPage);
			request.setAttribute("startPage", startPage);
			request.setAttribute("endPage", endPage);
			
			forward = mapping.findForward("list");
		}
		
		return forward;
	}
	
}
