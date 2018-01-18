package tc.user.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import tc.user.dao.UserInfoDAO;
import tc.user.forms.IdCheckActionForm;

public class IdCheckAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("IdCheckAction >>> excute()");
			
		IdCheckActionForm icaform = (IdCheckActionForm) form;
		
		String user_id = icaform.getUser_id();
		//idCheckActionForm을 거쳐서 받은 데이터
		//idCheckActionForm에서 걸리면 이데이터가 null로 넘어온다.
		
		
		System.out.println("IdCheckAction: "+user_id);
		
		UserInfoDAO userinfodao = new UserInfoDAO();
		
		if(userinfodao.selectId(user_id)) {//아이디가 존재한다면 --> 중복되는 아이디가 있다면
			System.out.println("중복되는 아이디");			
			
			request.setAttribute("duplicate", "사용할 수 없는 아이디입니다.");//idCheckResponse.jsp에서 받을 데이터
		}else {
			System.out.println("써도 되는 아이디");
			
			request.setAttribute("duplicate", "사용가능한 아이디입니다.");//idCheckResponse.jsp에서 받을 데이터
		}
		
		
		return mapping.findForward("success");//이동
	}
	
}
