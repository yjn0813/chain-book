package Busyness;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Entity.Member;

public class MemberBusyness extends BaseBusyness{
	//判断用户ID是否可用
	public boolean isIDnull(Member u){
		boolean b=false;
		Connection con=getOneCon();
		PreparedStatement pst=null;
		ResultSet rs=null;
		try {
			pst=con.prepareStatement("select * from MemberTable where ID=?");
			pst.setString(1, u.getID());
			rs=pst.executeQuery();
			if(rs.next()){
				b=false;
			}else{
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
	//注册
	public boolean registUser(Member u){
		boolean b=false;
		Connection con=getOneCon();
		PreparedStatement pst=null;
		try {
			pst=con.prepareStatement("insert into MemberTable values(?,?)");
			pst.setString(1, u.getID());
			pst.setString(2, u.getPWD());
			int n=pst.executeUpdate();
			if(n>0){
				b=true;
			}else{
				b=false;
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
	//登录
	public boolean loginUser(Member u){
		boolean b=false;
		Connection con=getOneCon();
		PreparedStatement pst=null;
		ResultSet rs=null;
		try {
			pst=con.prepareStatement("select * from MemberTable where MemberName=? and PassWord =?");
			pst.setString(1, u.getID());
			pst.setString(2, u.getPWD());
			rs=pst.executeQuery();
			if(rs.next()){
				b=true;
			}else{
				b=false;
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
}
