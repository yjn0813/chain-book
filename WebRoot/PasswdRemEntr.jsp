<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>密码重置</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" media="screen,projection,tv"
			href="css/home.css" />
<script type="text/javascript">
	
	function allIsNull(){
		var pwd=document.updatePasswordForm.PW.value;
		var repwd=document.updatePasswordForm.PW_CFM.value;
		if(pwd==""){
			alert("请输入确认密码！");
			document.updatePasswordForm.PW.focus();
			return false;
		}
		if(repwd==""){
			alert("请输入确认密码！");
			document.updatePasswordForm.PW_CFM.focus();
			return false;
		}
		if(pwd!=repwd){
			alert("2次密码不一致，请重新输入！");
			document.updatePasswordForm.PW.value="";
			document.updatePasswordForm.PW_CFM.value="";
			document.updatePasswordForm.PW.focus();
			return false;
		}
		document.updatePasswordForm.submit();
		return true;
	}
</script>
  </head>
  
  <body bgcolor="#FFFFCC">
  <div id="header">
			<h1 id="logo">
				&nbsp;
				<a href="http://localhost:8080/chain%20book/HomePage.jsp"><img
						src="images/logo_header.png" /> </a>
			</h1>
			<div id="utility">
			<table>
			<tr id="japenese">
				<td>
						<a href="japenese.do"><img src="images/japenese.png"
								onmouseover="this.src='images/japenese2.png'"
								onmouseout="this.src='images/japenese.png'" alt="日文" width="55"
								height="17" /> </a>
					</td>
				
				</tr>
				<tr id="chinese">

					<td>
						<a href="chinese.do"><img src="images/chinese.png"
								onmouseover="this.src='images/chinese2.png'"
								onmouseout="this.src='images/chinese.png'" alt="中文" width="55"
								height="17" /> </a>
					</td>
				</tr>
				
			</table>
			</div>
			<div id="flash">
				<ul style="list-style-type: none">
					<li id="flash">
						<embed src="images/flash.swf" width="203" height="64" type="application/x-shockwave-flash">
					</li>
				</ul>
			</div>
		</div>
		
		<h1><img src="../images/parts/pgs/pt_new_fin.gif" alt="密码重置" /></h1><div id="left2">
    <form action="updatePassword.do" method="post" name="updatePasswordForm">
		<table>
			 <div class="conf_t clr">
                <table>
                    <tr>
                        <th>新密码</th>

                        <td class="tab01" style="">
                        	<input type="password" class="password inputArea" name="PW" value="" maxlength="20"><span class="note">※半角英文或数字6字以上20字以内</span>
</td>
                    </tr>
                    <tr>
                        <th>确认密码</th>

                        <td class="tab01" style="">
                        	<input type="password" class="password inputArea" name="PW_CFM" value="" maxlength="20"><span class="note">※半角英文或数字6字以上20字以内</span>
</td>
                    </tr>
                </table>
                <tr>
				<td colspan="2" align="center">
				<input type="button" value="重置" onclick="allIsNull()"/></td>
			</tr>
			</form>
		</div>
		<HR id="bottom-line" align="center" width=980 color=#F4A460 SIZE=1>
		<div id="bottom">      
              <table>
              <tr id="book-ico">
              <td><img alt="book-ico" src="images/book-ico.png">
              </tr>
              <tr>
              <td id="bottom-text1"><a href=""><img alt="bottom-text1" src="images/bottom-text1.png"></td>
              <td id="bottom-text2"><a href=""><img alt="bottom-text2" src="images/bottom-text2.png"></td>
              <td id="bottom-text3"><a href=""><img alt="bottom-text3" src="images/bottom-text3.png"></td>
              </tr>
              </table>
       </div>  
  </body>
</html>
