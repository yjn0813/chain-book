<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册完成</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" media="screen,projection,tv"
			href="css/home.css" />
	<style type="text/css">
	#contents #left2 {
		float: left;
		width: 680px;
		border-style: none;
		padding-left: 15px;
		padding-top: 20px;
		margin-bottom: 60px;
}
	</style>
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
		
		<!--contents-->
	<div id="contents">
		<!--main-->
		<h1><img src="../images/parts/pgs/pt_new_fin.gif" alt="注册完成" /></h1><div id="left2">
			<div id="und_t">
			<h2 class="main_l">注册完成。</h2>
				<p class="lead">感谢您的注册，已发送确认邮件。</p>
				<p class="lead">继续添加<a href="../member/BMmMemberAddrEntry.jsp">会员详细信息</a>，让购物变得更轻松。</p>
			</div>
			<div id="link_area">
				<div class="link_l"><a href="http://localhost:8080/chain%20book/HomePage.jsp">返回主页</a><br>
				<p class="link_rs">Chain Book Online TOP Page</p></div>
			</div>
		</div>
			</div>
  </body>
</html>
