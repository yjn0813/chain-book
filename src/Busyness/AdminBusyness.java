package Busyness;

import java.sql.*;
import java.util.ArrayList;

import struts.form.UpdateForm;
import struts.form.addBooksForm;

import Entity.BookDetail;
import Entity.Member;
import Entity.Order;
public class AdminBusyness extends BaseBusyness{
	//添加图书信息
	public boolean addBook(addBooksForm abf,String bp){
		boolean b=false;
		Connection con=getOneCon();
		PreparedStatement pst=null;
		try {
			pst=con.prepareStatement("insert into bookinfo values(?,?,?,?,?,?,?,?,?,?,?)");
			pst.setString(1, abf.getBookid());
			pst.setString(2, abf.getCategoryname());
			pst.setString(3, abf.getBookname());
			pst.setString(4, bp);
			pst.setString(5, abf.getPrice());
			pst.setString(6, abf.getChainprice());
			pst.setString(7, abf.getPress());
			pst.setString(8, abf.getAuthor());
			pst.setString(9, abf.getDescript());
			pst.setString(10,abf.getCategoryid());
			pst.setInt(11,abf.getBookamount());
			int n=pst.executeUpdate();
			if(n>0){
				b=true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close(pst);
			close(con);
		}
		return b;
	}
	//查询全部图书信息
	public ArrayList<BookDetail> getDetailBooks(){
		ArrayList<BookDetail> bd=new ArrayList<BookDetail>();
		Connection con=getOneCon();
		PreparedStatement pst=null;
		ResultSet rs=null;
		try {
			pst=con.prepareStatement("select bookid,bookname,categoryname from bookinfo");
			rs=pst.executeQuery();
			while(rs.next()){
				BookDetail b=new BookDetail();
				b.setBookid(rs.getString(1));
				b.setBookname(rs.getString(2));
				b.setCategoryname(rs.getString(3));
				
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
	//查询一个图书信息
	public BookDetail getABookDetail (String bookid){
		BookDetail  bd=new BookDetail ();
		Connection con=getOneCon();
		PreparedStatement pst=null;
		ResultSet rs=null;
		try {
			pst=con.prepareStatement("select * from bookinfo where bookid=?");
			pst.setString(1, bookid);
			rs=pst.executeQuery();
			while(rs.next()){
				bd.setBookid(rs.getString(1));
				bd.setCategoryname(rs.getString(2));
				bd.setBookname(rs.getString(3));
				bd.setBookpic(rs.getString(4));
				bd.setPrice(rs.getString(5));
				bd.setChainprice(rs.getString(6));
				bd.setPress(rs.getString(7));
				bd.setAuthor(rs.getString(8));
				bd.setDescript(rs.getString(9));
				bd.setCategoryid(rs.getString(10));
				bd.setBookamount(rs.getInt(11));
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

	//删除图书信息
	public boolean deleteBook(String bookid){
		boolean b=false;
		Connection con=getOneCon();
		PreparedStatement pst=null;
	try {
		pst=con.prepareStatement("delete from bookinfo where bookid=?");
		pst.setString(1, bookid);
		int n=pst.executeUpdate();
		if(n>0){
			b=true;
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally{
		close(pst);
		close(con);
	}
	return b;
}

	//修改图书信息
	public boolean updateBook(UpdateForm f,String bp){
		boolean b=false;
		Connection con=getOneCon();
		PreparedStatement pst=null;
		try {
			
			pst=con.prepareStatement("update bookinfo set categoryname=?,bookname=?,bookpic=?,price=?,chainprice=?,press=?,author=?,descript=?,categoryid=?,bookamount=? where bookid=?");
	
			pst.setString(1, f.getCategoryname());
			pst.setString(2, f.getBookname());
			pst.setString(3, bp);
			pst.setString(4, f.getPrice());
			pst.setString(5, f.getChainprice());
			pst.setString(6, f.getPress());
			pst.setString(7, f.getAuthor());
			pst.setString(8, f.getDescript());
			pst.setString(9, f.getCategoryid());
			pst.setInt(10, f.getBookamount());
			pst.setString(11, f.getBookid());
			int n=pst.executeUpdate();
			if(n>0){
				b=true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close(pst);
			close(con);
		}
		return b;
	}
	
	//查询用户信息
	public ArrayList<Member> getAllUser(){
		ArrayList<Member> m=new ArrayList<Member>();
		Connection con=getOneCon();
		PreparedStatement pst=null;
		ResultSet rs=null;
		try {
			pst=con.prepareStatement("select add1,add2,add3,tel1,tel2,job,userid from userinfo");
			rs=pst.executeQuery();
			while(rs.next()){
				Member f=new Member();
				f.setAdd1(rs.getString(1));
				f.setAdd2(rs.getString(2));
				f.setAdd3(rs.getString(3));
				f.setTel1(rs.getString(4));
				f.setTel2(rs.getString(5));
				f.setJob(rs.getString(6));
				f.setID(rs.getString(7));
				m.add(f);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close(rs);
			close(pst);
			close(con);
		}
		return m;
	}

	//删除用户信息
	public boolean deleteUser(String id){
		boolean b=false;
		Connection con=getOneCon();
		PreparedStatement pst=null;
		try {
			pst=con.prepareStatement("delete from utable where userid=?");
			pst.setString(1, id);
			int n=pst.executeUpdate();
			if(n>0){
				b=true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close(pst);
			close(con);
		}
		return b;
	}
	
	//查询全部订单信息
	public ArrayList<Order> getAllOrders(){
			
			ArrayList<Order> al=new ArrayList<Order>();
			Connection con=getOneCon();
			PreparedStatement pst=null;
			ResultSet rs=null;
			
			try {
				pst=con.prepareStatement("select * from orderinfo");
				rs=pst.executeQuery();
				while(rs.next()){
					Order o=new Order();
					o.setOrderid(rs.getString(1));
					o.setUserid(rs.getString(2));
					o.setAmount(rs.getString(3));
					o.setOrderstatus(rs.getString(4));
					o.setAddtime(rs.getString(5));
					al.add(o);
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
		//查询订单详细信息
	public Order getDetailOrder(String orderid){
		Order o=new Order();
		Connection con=getOneCon();
		PreparedStatement pst=null;
		ResultSet rs=null;
		try {
			pst=con.prepareStatement("select * from orderdetail where orderid=?");
			pst.setString(1, orderid);
			rs=pst.executeQuery();
			while(rs.next()){
				o.setOrderid(rs.getString(1));
				o.setBookid(rs.getString(2));
				o.setBookname(rs.getString(3));
				o.setBookpic(rs.getString(4));
				o.setChainprice(rs.getString(5));
				o.setShoppingnum(rs.getString(6));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close(rs);
			close(pst);
			close(con);
		}
		
		return o;
	} 



	//删除订单信息
	public boolean deleteOrder(String orderid){
	    boolean b=false;
		
		Connection con=getOneCon();
		PreparedStatement pst=null;
		try {
			pst=con.prepareStatement("delete from orderinfo where orderid=?");
			pst.setString(1, orderid);
			
			int n=pst.executeUpdate();
			if(n>0){
				b=true;
			}
			
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
