<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'orderconfirm.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" media="screen,projection,tv"
			href="css/home.css" />
<script type="text/javascript">
	function submitorder(){
		if(window.confirm("是否真的提交订单，提交后不可再修改订单信息！")){
			document.forms[0].submit();
			return true;
		}
		
		return false;
	}
 </script> 
 <style type="text/css">
 #title{
 position: absolute;
 top:-50px;
 left:550px;
 }
 #flowBox{
 	position: absolute;
    width:99%;
	top:200px;
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
   <div id="flowBox">
   <center id="title"><font size="5"><strong>订单确认画面</strong></font></center>
   <form action="submitorder.do" method="post">
    
             <table width="99%" align="center" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd">
            <tr>
              <th bgcolor="#ffffff">图书名</th>
              <th bgcolor="#ffffff">购买数量</th>
              <th bgcolor="#ffffff">小计</th>
              
            </tr>  
            <c:forEach var="cartbooks" items="${requestScope.cartbooks}">
            <tr>
              <td bgcolor="#ffffff" align="center">
                  ${cartbooks.bookname}
              </td>
              <td align="center" bgcolor="#ffffff">
                ${cartbooks.shoppingnum}
              </td>
            
              <td align="right" bgcolor="#ffffff">￥&nbsp;${cartbooks.singlsum}&nbsp;元 </td>
            </tr>
            
       	   	</c:forEach>
       	  <tr>
       	  		<td bgcolor="#ffffff" colspan="6">
       	 			应付款 
       	 			<font class="pricetype">￥&nbsp;${requestScope.tatol}</font>  	
              </td>
          </tr>   	
        </table> 
        <div align="center" style="margin:8px auto;">
       		 <img style="cursor:pointer;"  onclick="submitorder()" src="images/confirm.png" />
    	</div> 
    	<input type="hidden" name="amount" value="${requestScope.tatol}"/>
    </form>
</div>
  </body>
  </font>
</html>
