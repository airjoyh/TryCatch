package tc.company.actions;

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
		int displayRecord = 5; // ���������� �������� ��
		ComListDAO dao = new ComListDAO();
		
		String pageStr = request.getParameter("page");
		if (pageStr == null) {// ������ ������ ���� ��
			page = 1;
		} else {
			page = Integer.parseInt(pageStr);
		}

		int totalRecord = dao.selectCount();// �� ��ȸ�� ��
		int totalPage = totalRecord / displayRecord;// 32/10 --> 3������
		// 23 = 115/5
		// 23 = 116/5

		int startPage = page / displayRecord * displayRecord + 1; // page/5*5+1
		int endPage = startPage + (displayRecord - 1); // startPage+4
		if (endPage > totalPage) {
			endPage = totalPage + 1;
			if (totalRecord % displayRecord == 0) {// �� �¾ƶ�������
				endPage = totalPage;
			}
		}

		if (totalRecord % displayRecord > 0) {// �������� ���� ��
			totalPage++;// 4������
		}
		
		if(action.equals("total")) {
			System.out.println("action=total");
			
			request.setAttribute("action", "total");
			request.setAttribute("list", dao.find_totalList(page, displayRecord));
			request.setAttribute("page", page);	
			request.setAttribute("totalPage", totalPage);
			request.setAttribute("startPage", startPage);
			request.setAttribute("endPage", endPage);
			
			forward = mapping.findForward("list");
			
		}else if(action.equals("possibility")) {
			request.setAttribute("action", "possibility");
			request.setAttribute("list", dao.find_possibilityList(page, displayRecord));
			request.setAttribute("page", page);	
			request.setAttribute("totalPage", totalPage);
			request.setAttribute("startPage", startPage);
			request.setAttribute("endPage", endPage);
			
			forward = mapping.findForward("list");
			
		}else if(action.equals("welSal")) {
			request.setAttribute("action", "welSal");
			request.setAttribute("list", dao.find_welSalList(page, displayRecord));
			request.setAttribute("page", page);	
			request.setAttribute("totalPage", totalPage);
			request.setAttribute("startPage", startPage);
			request.setAttribute("endPage", endPage);
			
			forward = mapping.findForward("list");
			
		}else if(action.equals("balance")) {
			request.setAttribute("action", "balance");
			request.setAttribute("list", dao.find_balanceList(page, displayRecord));
			request.setAttribute("page", page);	
			request.setAttribute("totalPage", totalPage);
			request.setAttribute("startPage", startPage);
			request.setAttribute("endPage", endPage);
			
			forward = mapping.findForward("list");
			
		}else if(action.equals("culture")) {
			request.setAttribute("action", "culture");
			request.setAttribute("list", dao.find_cultureList(page, displayRecord));
			request.setAttribute("page", page);	
			request.setAttribute("totalPage", totalPage);
			request.setAttribute("startPage", startPage);
			request.setAttribute("endPage", endPage);
			
			forward = mapping.findForward("list");
			
		}else if(action.equals("manager")) {
			request.setAttribute("action", "manager");
			request.setAttribute("list", dao.find_managerList(page, displayRecord));
			request.setAttribute("page", page);	
			request.setAttribute("totalPage", totalPage);
			request.setAttribute("startPage", startPage);
			request.setAttribute("endPage", endPage);
			
			forward = mapping.findForward("list");
			
		}
		
		return forward;
	}
	
}
