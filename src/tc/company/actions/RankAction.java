package tc.company.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import tc.company.dao.ComListDAO;
import tc.company.dao.ComRankDAO;
import tc.review.dto.AvgScoreDTO;

public class RankAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("RankListAction >>> excute()");
		
		ComRankDAO rankdao = new ComRankDAO();
		request.setAttribute("total", rankdao.find_totalRank());
		request.setAttribute("possibility", rankdao.find_possibilityRank());
		/*List<AvgScoreDTO> list_possi = dao.find_possibilityRank();
		for(int i=0; i<list_possi.size(); i++) {
			System.out.println(list_possi.get(i).getRank());
		}*/
		
		request.setAttribute("welSal", rankdao.find_welSalRank());
		request.setAttribute("balance", rankdao.find_balanceRank());
		request.setAttribute("culture", rankdao.find_cultureRank());
		request.setAttribute("manager", rankdao.find_managerRank());
		
		
		return mapping.findForward("rankList");
	}
}
