<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'orderdone.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" media="screen,projection,tv"
			href="css/home.css" />
<style type="text/css">
#done{
position: absolute;
top:150px;
left: 100px;
}
</style>
  </head>
  
  <body>
    <font face="方正准圆简体">
		<body bgcolor="#FFFFCC">

			<div id="header">
				<h1 id="logo">&nbsp;&nbsp; 
					<a href="http://localhost:8080/chain%20book/HomePage.jsp"><img
							src="images/logo_header.png" /> </a>
				</h1>
				<div id="utility">
					<table>
						<tr id="japenese">
							<td>
								<a href="japenese.do"><img src="images/japenese.png"
										onmouseover="this.src='images/japenese2.png'"
										onmouseout="this.src='images/japenese.png'" alt="日文"
										width="55" height="17" /> </a>
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
							<embed src="images/flash.swf" width="203" height="64">
						</li>
					</ul>
				</div>
			</div>
			<br/><br/>
    <h2 id="done" style="text-align:center; height:30px; line-height:30px;">感谢您在Chain Book购物！您的订单已提交成功，
         	请记住您的订单号: <font style="color:red" size='5'>${requestScope.orderid}</font></h2>
  </body>
  </font>
</html>
