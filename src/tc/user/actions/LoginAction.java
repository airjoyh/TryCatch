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
		// --> �α��ξ׼����� ��ġ�� ��������� ���𰡾���.
		// ������ �α��ξ׼��� ���̵�� ��й�ȣ�� ��ġ�ϴ��� �ƴ����� �Ǻ����ٰű� ������ ��ȿ���˻簡 �ʿ� ����!

		String login_id = request.getParameter("login_id");
		String login_pass = request.getParameter("login_pass");
		// �α��������� login_id,login_pass�� �Էµ� ���� �����´�.

		System.out.println(login_id + ", " + login_pass);

		UserInfoDAO userinfodao = new UserInfoDAO();

		if (userinfodao.selectLogin(login_id, login_pass)) {// ���̵�� ��й�ȣ�� ��ġ�Ѵٸ�.
			HttpSession session = request.getSession();
			session.setAttribute("loginState", "login");// ������ login���·� ������ش�.
			session.setAttribute("login_id", login_id); //�α����� ���̵� �������� ����
			UserInfoDTO dto = userinfodao.selectUp(login_id);
			System.out.println("["+dto.getUser_prio()+"]");
			session.setAttribute("upinfo", dto);
			
			request.setAttribute("login", "success");// loginCheckResponse.jsp���� ���� ������, ajax

		} else {
			request.setAttribute("login", "fail");// loginCheckResponse.jsp���� ���� ������, ajax

		}

		return mapping.findForward("success");//�̵�
	}

}
