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
		//idCheckActionForm�� ���ļ� ���� ������
		//idCheckActionForm���� �ɸ��� �̵����Ͱ� null�� �Ѿ�´�.
		
		
		System.out.println("IdCheckAction: "+user_id);
		
		UserInfoDAO userinfodao = new UserInfoDAO();
		
		if(userinfodao.selectId(user_id)) {//���̵� �����Ѵٸ� --> �ߺ��Ǵ� ���̵� �ִٸ�
			System.out.println("�ߺ��Ǵ� ���̵�");			
			
			request.setAttribute("duplicate", "����� �� ���� ���̵��Դϴ�.");//idCheckResponse.jsp���� ���� ������
		}else {
			System.out.println("�ᵵ �Ǵ� ���̵�");
			
			request.setAttribute("duplicate", "��밡���� ���̵��Դϴ�.");//idCheckResponse.jsp���� ���� ������
		}
		
		
		return mapping.findForward("success");//�̵�
	}
	
}
