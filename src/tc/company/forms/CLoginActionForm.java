package tc.company.forms;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

public class CLoginActionForm extends ActionForm{
   private String login_id;
   private String login_pass;
   
public String getLogin_id() {
	return login_id;
}
public void setLogin_id(String login_id) {
	this.login_id = login_id;
}
public String getLogin_pass() {
	return login_pass;
}
public void setLogin_pass(String login_pass) {
	this.login_pass = login_pass;
}
	
	@Override
		public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
		  System.out.println("CLoginActionForm>>validate()");
		  System.out.println("�α��ξ��̵�:"+login_id+"�α��κ��:"+login_pass);
		  
		  ActionErrors errs = new ActionErrors();
		
		  
		  return errs;
		}
}
