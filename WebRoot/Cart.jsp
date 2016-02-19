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
    
    <title>购物车</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" media="screen,projection,tv"
			href="css/home.css" />

<script type="text/javascript">
    function checkDel(bookid)
  		{
  			if(window.confirm("真的删除吗？")){
  				window.location.href="deleteCart.do?bookid="+bookid;
  				return true;
  			}
  			
  		}
  		
  		 function checkDelall(delcart)
  		{
  			if(window.confirm("真的清空吗？")){
  				window.location.href="deleteCart.do?flag="+delcart;
  				return true;
  			}
  			
  		}
  		
  </script>		
<style type="text/css">
	#title{
	position: absolute;
	top:-80px;
	left:10px;
	}
#flowBox{
    position: absolute;
    width:99%;
	top:150px;
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
  
    <h1 id="title"><span>购物车商品列表</span></h1>
           <table id="box" width="99%" align="center" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd">
            <tr>
              <th bgcolor="#ffffff">商品名称</th>
              <th bgcolor="#ffffff">Chain Price</th>
              <th bgcolor="#ffffff">购买数量</th>
              <th bgcolor="#ffffff">小计</th>
              <th bgcolor="#ffffff">操作</th>
            </tr>  
           <c:forEach var="cartbooks" items="${requestScope.cartbooks}">
            <tr>
              <td bgcolor="#ffffff" align="center">
                    <a href="showABook.do?bookid=${cartbooks.bookid}" ><img style="width: 100px;height: 150px;"
					 src="files/${cartbooks.bookpic}" border="0" title="${cartbooks.bookname}" /></a><br>
                    <a style="text-decoration:none;" href="showABook.do?goodsid=${cartbooks.bookid}"  class="f6" >${cartbooks.bookname}</a>
              </td>
         
              <td align="center" bgcolor="#ffffff">${cartbooks.chainprice}</td>
              <td align="center" bgcolor="#ffffff">
                ${cartbooks.shoppingnum}
              </td>
              <td align="center" bgcolor="#ffffff">￥&nbsp;${cartbooks.singlsum}&nbsp;元 </td>
              <td align="center" bgcolor="#ffffff">
                <a style="text-decoration:none;" href="javascript:checkDel('${cartbooks.bookid}')" class="f6" title="删除">删除</a>
              </td>
            </tr>
       	   	</c:forEach>
          </table>
          <table width="99%" align="center" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd">
            <tr>  
              <td bgcolor="#ffffff">
             		购物金额总计(不含运费) <font class="pricetype">￥&nbsp;${requestScope.tatol}&nbsp;元</font>
              </td>
              <td align="right" bgcolor="#ffffff">
                <a href="javascript:checkDelall('delcart')"><img alt="clearCart" src="images/clearCart.png"></a>
            </tr>
          </table>
        <table width="99%" align="center" border="0" cellpadding="5" cellspacing="0" bgcolor="#dddddd">
          <tr>
            <td bgcolor="#ffffff"><a href="Books.jsp"><img src="images/continue.png" alt="continue" /></a></td>
            <td bgcolor="#ffffff" align="right">
            <a href="orderconfirm.do"><img src="images/checkout.png" alt="checkout" /></a>
            </td>
          </tr>
        </table>
        
  </div>
  </body>
  </font>

