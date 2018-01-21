package tc.company.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import tc.company.dao.ComInfoDAO;
import tc.company.dto.ComInfoDTO;
import tc.company.forms.CJoinActionForm;

public class CJoinAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		ActionForward forward = null;
		CJoinActionForm cjaform=(CJoinActionForm) form;
		String company_id =cjaform.getCompany_id();
		String company_pass= cjaform.getCompany_pass();
		String company_name= cjaform.getCompany_name();
		String company_year= cjaform.getCompany_year();
		String company_line= cjaform.getCompany_line();
		String company_skill= cjaform.getSkill_java()+"/"+
							cjaform.getSkill_jquery()+"/"+
							cjaform.getSkill_python()+"/"+
							cjaform.getSkill_xml()+"/"+
							cjaform.getSkill_css()+"/"+
							cjaform.getSkill_pro();
		String company_size= cjaform.getCompany_size();
		String company_turnover= cjaform.getCompany_turnover();
		String company_number= cjaform.getCompany_number();
		String company_addr= cjaform.getCompany_addr();
		String company_site= cjaform.getCompany_site();
		String company_intro= cjaform.getCompany_intro();
		String company_hireNumber= cjaform.getCompany_hireNumber();
		String manager_name= cjaform.getManager_name();
		String manager_email= cjaform.getManager_email();
		String team_name= cjaform.getTeam_name();
		String manager_tel=cjaform.getManager_tel();
		
		ComInfoDTO cominfodto= new ComInfoDTO(company_id,company_pass,company_name,company_year,company_line,company_skill,company_size
				,company_turnover,company_number,company_addr,company_site,company_intro,company_hireNumber,manager_name
				,manager_email,team_name,manager_tel);
		ComInfoDAO cominfodao= new ComInfoDAO();
		 if(cominfodao.insert(cominfodto)) {
			 System.out.println("joinAction>>insert");
		  response.setContentType("text/html;charset=UTF-8");
		  response.getWriter().print("<script>alert('회원가입이 완료되었습니다.');$('#joinModal').modal('hide');</script>");
	 }
		 /*
		 String[] company_skills = company_skill.split("/");
		 for
		 if(company_skills[i]==null) {
			 
		 }*/
		 
		return mapping.findForward("insert");
	}
}

