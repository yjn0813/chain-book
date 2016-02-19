/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;

import Busyness.MemberBusyness;
import struts.form.LoginForm;

/** 
 * MyEclipse Struts
 * Creation date: 06-13-2013
 * 
 * XDoclet definition:
 * @struts.action path="/login" name="loginForm" scope="request"
 * @struts.action-forward name="Fail" path="/Login.jsp"
 * @struts.action-forward name="Success" path="/HomePage.jsp"
 * @struts.action-forward name="Admin" path="/AdminMain.jsp"
 */
public class LoginAction extends Action {
	/*
	 * Generated Methods
	 */

	/** 
	 * Method execute
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		LoginForm loginForm = (LoginForm) form;
		MemberBusyness mb=new MemberBusyness();
		if(mb.loginMember(loginForm)){
			HttpSession session=request.getSession(true);
			session.setAttribute("user", loginForm);
			return mapping.findForward("Success");//Success为逻辑名称，到struts-config找
		}else if(mb.loginAdmin(loginForm)){
			HttpSession session=request.getSession(true);
			session.setAttribute("user", loginForm);
			return mapping.findForward("Admin");
		}else{
			ActionMessages errors=new ActionMessages();
			ActionMessage error=new ActionMessage("nameORpassword","");//nameorpassword资源属性文件里的
			errors.add("nameORpassworderror",error);//nameorpassworderror在JSP中property用
			this.saveErrors(request, errors);
			return mapping.findForward("Fail");
		}
	}
}