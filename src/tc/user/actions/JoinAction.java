package tc.user.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import tc.user.dao.UserInfoDAO;
import tc.user.dto.UserInfoDTO;
import tc.user.forms.JoinActionForm;

public class JoinAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("JoinAction >>> excute()");

		ActionForward forward = null;
		JoinActionForm jaform = (JoinActionForm) form;
		String user_id = jaform.getUser_id();
		String user_pass = jaform.getUser_pass();
		String user_name = jaform.getUser_name();
		String user_email = jaform.getUser_email();
		String user_phone = jaform.getUser_phone1() + "-" + jaform.getUser_phone2() + "-" + jaform.getUser_phone3();
		String user_addr = jaform.getUser_addr();
		String user_prio = jaform.getUser_prio();
		//JoinActionForm을 거쳐서 받은 데이터
		
		System.out.println("JoinAction:" + user_id);
		UserInfoDTO userinfodto = new UserInfoDTO(user_id, user_pass, user_name, user_email, user_phone, user_addr,
				user_prio);//빈즈에 넣고 

		UserInfoDAO userinfodao = new UserInfoDAO();

		if (userinfodao.insert(userinfodto)) {//insert가 됬다면
			System.out.println("JoinAction>>>insert");

			response.setContentType("text/html;charset=UTF-8");//한글을 사용하기 위하면 인코딩
            response.getWriter().print("<script>alert('회원가입이 완료되었습니다.');window.close()</script>");
            //alert()띄우고 종료(joinForm에 있는 자바스크립트에서 window.close()를 하면 액션이 실행이 안되었고
            //insert가 된 후에 '회원가입이 완료되었습니다'라는 메시지창을 띄우는 것이 순서상 맞음.
		}

		return null;//이동할 곳이 없음. 어차피 회원가입창 끌거임!
	}

}
