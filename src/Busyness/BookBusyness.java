package Busyness;

import java.sql.*;
import java.util.ArrayList;

import struts.form.LoginForm;

import Entity.BookDetail;
import Entity.CartBooks;
import Entity.Order;

public class BookBusyness extends BaseBusyness{
	//用户查询分类下的图书
	public ArrayList<BookDetail> showDetailBooks(String categoryid){
		ArrayList<BookDetail> bd=new ArrayList<BookDetail>();
		Connection con=getOneCon();
		PreparedStatement pst=null;
		ResultSet rs=null;
		try {
			pst=con.prepareStatement("select bookpic,bookid from bookinfo where categoryid=?");
			pst.setString(1, categoryid);
			rs=pst.executeQuery();
			while(rs.next()){
				BookDetail b=new BookDetail();
				b.setBookpic(rs.getString(1));
				b.setBookid(rs.getString(2));
				bd.add(b);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close(rs);
			close(pst);
			close(con);
		}
		return bd;
	}
	public boolean isexit(String bookid,String sessionid){
		boolean b=false;
		Connection con=getOneCon();
		PreparedStatement pst=null;
		ResultSet rs=null;
		try {
			pst=con.prepareStatement("select * from cartTable ct,cartDetail cd" +
					" where ct.sessionid=?" +
					" and ct.isorder='0'" +
					" and cd.sessionid=ct.sessionid" +
					" and cd.bookid=?");
			pst.setString(1, sessionid);
			pst.setString(2, bookid);
			rs=pst.executeQuery();
			if(rs.next()){
				b=true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close(rs);
			close(pst);
			close(con);
		}		
		return b;
	}
	public boolean isCartexit(String sessionid){
		boolean b=false;
		Connection con=getOneCon();
		PreparedStatement pst=null;
		ResultSet rs=null;
		try {
			pst=con.prepareStatement("select * from cartTable" +
					" where sessionid=?" +
					" and isorder='0'");
			pst.setString(1, sessionid);
			rs=pst.executeQuery();
			if(rs.next()){
				b=true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close(rs);
			close(pst);
			close(con);
		}		
		return b;
	}
	public boolean updatecart(String bookid,String sessionid,int mkrum){
		boolean b=false;
		Connection con=getOneCon();
		PreparedStatement pst=null;
		
		try {
			pst=con.prepareStatement("update cartDetail set" +
					" shoppingnum=shoppingnum+?" +
					" where bookid=? and sessionid =?");
			pst.setInt(1, mkrum);
			pst.setString(2, bookid);
			pst.setString(3, sessionid);
			int i=pst.executeUpdate();
			if(i>0)
				b=true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			
			close(pst);
			close(con);
		}		
		return b;
	}
	public boolean addcart(String bookid,String sessionid,int mkrum){
		boolean b=false;
		Connection con=getOneCon();
		PreparedStatement pst=null;
		
		try {
			pst=con.prepareStatement("insert into cartDetail(" +
					"	sessionid," +
					"	bookid," +
					"	bookname," +
					"	bookpic," +
					"	chainprice," +
					"	shoppingnum " +
					"	) " +
					" select '" +sessionid+"',"+
					" 	 bookid,bookname,bookpic,chainprice,"+mkrum+" from bookinfo"+
					  " where bookid='" +bookid+"'"
					);
		
			int i=pst.executeUpdate();
			if(i>0)
				b=true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			
			close(pst);
			close(con);
		}		
		return b;
	}
	public boolean createcart(String sessionid,LoginForm u){
		boolean b=false;
		Connection con=getOneCon();
		PreparedStatement pst=null;
		
		try {
			pst=con.prepareStatement("insert into cartTable(" +
					"	sessionid," +
					"	userid," +
					"	isorder," +
					"	createtime)" +
					" 	values(?,?,?,sysdate) " 
					);
			pst.setString(1, sessionid);
			pst.setString(2, u.getID());
			pst.setString(3, "0");
			int i=pst.executeUpdate();
			if(i>0)
				b=true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			
			close(pst);
			close(con);
		}		
		return b;
	}
public ArrayList<CartBooks> getCartAllBooks(String sessionid){
		
		ArrayList<CartBooks> al=new ArrayList<CartBooks>();
		
		Connection con=getOneCon();
		PreparedStatement pst=null;
		ResultSet rs=null;
		
		try {
			pst=con.prepareStatement("select " +
					"	cd.bookid,cd.bookname,cd.bookpic,cd.chainprice,cd.shoppingnum,cd.shoppingnum*cd.chainprice, tt.total" +
					"	from cartTable ct, cartDetail cd," +
					" (select sum(cd.shoppingnum*cd.chainprice) as total from " +
					"  cartTable ct, cartDetail cd " +
					" where ct.sessionid=? and ct.isorder='0' and cd.sessionid=ct.sessionid " +
					") tt" +
					" where ct.sessionid=? and ct.isorder='0' and cd.sessionid=ct.sessionid " );
			pst.setString(1, sessionid);
			pst.setString(2, sessionid);
			rs=pst.executeQuery();
			while(rs.next()){
				CartBooks cb=new CartBooks();
				cb.setBookid(rs.getString(1));
				cb.setBookname(rs.getString(2));
				cb.setBookpic(rs.getString(3));
				cb.setChainprice(rs.getString(4));
				cb.setShoppingnum(rs.getString(5));
				cb.setSinglsum(rs.getString(6));
				cb.setTotal(rs.getString(7));
				al.add(cb);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close(rs);
			close(pst);
			close(con);
		}
		return al;
	}
public boolean addOrder(String sessionid,String amount,String orderid,LoginForm u){
	boolean b=false;
	Connection con=getOneCon();
	PreparedStatement pst=null;
	
	try {
		pst=con.prepareStatement("insert into orderinfo values(?,?,?,?,SYSDATE)");
		pst.setString(1, orderid);
		pst.setString(2, u.getID());
		pst.setString(3, amount);
		pst.setString(4, "0");
		
		int i=pst.executeUpdate();
		if(i>0)
			b=true;
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally{
		
		close(pst);
		close(con);
	}		
	return b;
}
public boolean addOrderDetail(String sessionid,String orderid){
	boolean b=false;
	Connection con=getOneCon();
	PreparedStatement pst=null;
	
	try {
		pst=con.prepareStatement("insert into orderDetail(" +
				"	orderid," +
				"	bookid," +
				"	bookname," +
				"	bookpic," +
				"	chainprice," +
				"	shoppingnum " +
				"	) " +
				" select '" +orderid+"',"+
				" 	 cd.bookid,cd.bookname,cd.bookpic,cd.chainprice,cd.shoppingnum from cartDetail cd,cartTable ct"+
				  " where ct.sessionid='" +sessionid+"'  and cd.sessionid=ct.sessionid  and ct.isorder='0'"
				);
		int i=pst.executeUpdate();
		if(i>0)
			b=true;
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally{
		
		close(pst);
		close(con);
	}		
	return b;
}
public boolean updateCartStatus(String sessionid){
	boolean b=false;
	Connection con=getOneCon();
	PreparedStatement pst=null;
	
	try {
		pst=con.prepareStatement("delete from  cartTable  where sessionid=? ");
		pst.setString(1, sessionid);
		int i=pst.executeUpdate();
		if(i>0)
			b=true;
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally{
		
		close(pst);
		close(con);
	}		
	return b;
}	
public boolean updateCartDetailStatus(String sessionid){
	boolean b=false;
	Connection con=getOneCon();
	PreparedStatement pst=null;
	
	try {
		pst=con.prepareStatement("delete from cartDetail where sessionid=?");
		pst.setString(1, sessionid);
		int i=pst.executeUpdate();
		if(i>0)
			b=true;
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally{
		
		close(pst);
		close(con);
	}		
	return b;
}	

public void deleteBooks(String sessionid,String bookid)
{
	
	PreparedStatement pst=null;
	Connection con=getOneCon();
	try {
		String sql="delete from cartDetail where sessionid=? and bookid=?";
		pst=con.prepareStatement(sql);
		pst.setString(1, sessionid);
		pst.setString(2, bookid);
		pst.executeUpdate();
	
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	finally
	{
		close(pst);
		close(con);
	}
}
public boolean updateBooksNum(int mkrum,String bookid ){
	boolean b=false;
	Connection con=getOneCon();
	PreparedStatement pst=null;
	
	try {
		pst=con.prepareStatement("update  bookinfo  set bookamount=bookamount-? where bookid = ? ");
		pst.setInt(1, mkrum);
		pst.setString(2, bookid);
		int i=pst.executeUpdate();
		if(i>0)
			b=true;
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally{
		
		close(pst);
		close(con);
	}		
	return b;
}	
	}

