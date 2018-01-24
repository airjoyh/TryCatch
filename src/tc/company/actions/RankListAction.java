package tc.company.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import tc.company.dao.ComListDAO;
import tc.review.dto.AvgScoreDTO;

public class RankListAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("RankListAction >>> excute()");
		
		ComListDAO dao = new ComListDAO();
		request.setAttribute("total", dao.find_totalRank());
		request.setAttribute("possibility", dao.find_possibilityRank());
		/*List<AvgScoreDTO> list_possi = dao.find_possibilityRank();
		for(int i=0; i<list_possi.size(); i++) {
			System.out.println(list_possi.get(i).getRank());
		}*/
		
		request.setAttribute("welSal", dao.find_welSalRank());
		request.setAttribute("balance", dao.find_balanceRank());
		request.setAttribute("culture", dao.find_cultureRank());
		request.setAttribute("manager", dao.find_managerRank());
		
		
		return mapping.findForward("rankList");
	}
}
