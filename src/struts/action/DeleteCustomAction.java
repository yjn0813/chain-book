/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import Busyness.AdminBusyness;

/** 
 * MyEclipse Struts
 * Creation date: 06-17-2013
 * 
 * XDoclet definition:
 * @struts.action
 * @struts.action-forward name="Fail" path="/queryCustom.do"
 * @struts.action-forward name="Success" path="/queryCustom.do?flag=del"
 */
public class DeleteCustomAction extends Action {
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
		String id = request.getParameter("id");
        AdminBusyness ub = new AdminBusyness();
        ub.deleteUser(id);
        return mapping.findForward("Success");
	}
}