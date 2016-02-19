package Busyness;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import struts.form.LoginForm;
import struts.form.MemberAddForm;

import struts.form.RegistForm;


public class MemberBusyness extends BaseBusyness{
	//判断用户ID是否可用
	public boolean isIDnull(RegistForm u){
		boolean b=false;
		Connection con=getOneCon();
		PreparedStatement pst=null;
		ResultSet rs=null;
		try {
			pst=con.prepareStatement("select * from uTable where userid=?");
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
	
	//注册会员
	public boolean registMember(RegistForm u){
		boolean b=false;
		Connection con=getOneCon();
		PreparedStatement pst=null;
		try {
			pst=con.prepareStatement("insert into utable values(?,?)");
			pst.setString(1, u.getID());
			pst.setString(2, u.getPW());
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
	
	//会员登录
	public boolean loginMember(LoginForm u){
		boolean b=false;
		Connection con=getOneCon();
		PreparedStatement pst=null;
		ResultSet rs=null;
		try {
			pst=con.prepareStatement("select * from utable where userid=? and password=?");
			pst.setString(1, u.getID());
			pst.setString(2, u.getPW());
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
	
	//管理员登陆
	public boolean loginAdmin(LoginForm u)
    {
        boolean b = false;
        Connection con = getOneCon();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try
        {
            pst = con.prepareStatement("select * from adminuser where adminid=? and adminpass=?");
            pst.setString(1, u.getID());
            pst.setString(2, u.getPW());
            rs = pst.executeQuery();
            if(rs.next())
                b = true;
            else
                b = false;
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }finally{
        close(rs);
        close(pst);
        close(con);
    }
        return b;
    }
	
	//添加会员详细信息
	public boolean memberInfo(MemberAddForm u){
		boolean b = false;
        Connection con = getOneCon();
        PreparedStatement pst = null;
        try {
			pst = con.prepareStatement("insert into userinfo values(?,?,?,?,?,?,?,?,?,?,?)");
			pst.setString(1,u.getNM1());
			pst.setString(2, u.getNM2());
			pst.setString(3, u.getZIP_CD());
			pst.setString(4, u.getADDR1());
			pst.setString(5, u.getADDR2());
			pst.setString(6, u.getADDR3());
			pst.setString(7, u.getTEL1());
			pst.setString(8, u.getTEL2());
			pst.setString(9, u.getJOB());
			pst.setString(10, u.getSex());
			pst.setString(11, u.getID());
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

