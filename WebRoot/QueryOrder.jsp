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
    
    <title>查看订单</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
  <style type="text/css">
#down{
    position: absolute;
    left:1px;
}
</style>
  </head>
  
  <body>
  <div id=down>
  <table bordercolor="#FFA07A">
     <tr bgcolor="#FFA07A">
        <td align="center" width="100px">订单号</td>
        <td align="center" width="100px">用户名</td>
        <td align="center" width="100px">商品总价</td>
        <td align="center" width="100px">订单状态</td>
        <td align="center" width="100px">订单生成时间</td>

     </tr>
     <c:forEach var="orderlist" items="${requestScope.orderlist}">
     <tr>
        <td align="center">${orderlist.orderid}</td>
        <td align="center">${orderlist.userid}</td>
        <td align="center">${orderlist.amount}</td>
        <td align="center">${orderlist.orderstatus}</td>
        <td align="center">${orderlist.addtime}</td>
        
     </tr>
    </c:forEach>
  </table>
  </div>
  </body>
</html>
