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
		//JoinActionForm�� ���ļ� ���� ������
		
		System.out.println("JoinAction:" + user_id);
		UserInfoDTO userinfodto = new UserInfoDTO(user_id, user_pass, user_name, user_email, user_phone, user_addr,
				user_prio);//��� �ְ� 

		UserInfoDAO userinfodao = new UserInfoDAO();

		if (userinfodao.insert(userinfodto)) {//insert�� ��ٸ�
			System.out.println("JoinAction>>>insert");

			response.setContentType("text/html;charset=UTF-8");//�ѱ��� ����ϱ� ���ϸ� ���ڵ�
            response.getWriter().print("<script>alert('ȸ�������� �Ϸ�Ǿ����ϴ�.');window.close()</script>");
            //alert()���� ����(joinForm�� �ִ� �ڹٽ�ũ��Ʈ���� window.close()�� �ϸ� �׼��� ������ �ȵǾ���
            //insert�� �� �Ŀ� 'ȸ�������� �Ϸ�Ǿ����ϴ�'��� �޽���â�� ���� ���� ������ ����.
		}

		return null;//�̵��� ���� ����. ������ ȸ������â ������!
	}

}
