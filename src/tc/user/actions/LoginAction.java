package tc.user.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;

import tc.user.dao.UserInfoDAO;
import tc.user.dto.UserInfoDTO;
import tc.user.forms.LoginActionForm;

public class LoginAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("LoginAction >> excute()");
		// LoginActionForm laform = (LoginActionForm) form;
		// --> 로그인액션폼을 거치게 만들었으나 쓸모가없음.
		// 어차피 로그인액션은 아이디와 비밀번호가 일치하는지 아닌지만 판별해줄거기 때문에 유효성검사가 필요 없음!

		String login_id = request.getParameter("login_id");
		String login_pass = request.getParameter("login_pass");
		// 로그인폼에서 login_id,login_pass에 입력된 값을 가져온다.

		System.out.println(login_id + ", " + login_pass);

		UserInfoDAO userinfodao = new UserInfoDAO();

		if (userinfodao.selectLogin(login_id, login_pass)) {// 아이디와 비밀번호가 일치한다면.
			HttpSession session = request.getSession();
			session.setAttribute("loginState", "login");// 세션을 login상태로 만들어준다.
			session.setAttribute("login_id", login_id); //로그인한 아이디를 세션으로 유지
			UserInfoDTO dto = userinfodao.selectUp(login_id);
			System.out.println("["+dto.getUser_prio()+"]");
			session.setAttribute("upinfo", dto);
			
			request.setAttribute("login", "success");// loginCheckResponse.jsp에서 받을 데이터, ajax

		} else {
			request.setAttribute("login", "fail");// loginCheckResponse.jsp에서 받을 데이터, ajax

		}

		return mapping.findForward("success");//이동
	}

}
