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

import Busyness.BookBusyness;

public class DeleteCartAction extends Action {
	
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession(true);
		String sessionid=session.getId();
		BookBusyness bb=new BookBusyness();
		String bookid=request.getParameter("bookid");
		String flag=request.getParameter("flag");
		if("delcart".equals(flag)){
			bb.updateCartStatus(sessionid);//删除购物车
			bb.updateCartDetailStatus(sessionid);
			
		}bb.deleteBooks(sessionid, bookid);//删除购物车中商品
		return mapping.findForward("success");
		
	}
}