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
    
    <title>查看图书</title>
    
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
        <td align="center" width="60px">图书号</td>
        <td align="center" width="200px">图书名</td>
        <td align="center" width="120px">分类名</td>
        <td align="center" width="60px">操作</td>
     
     </tr>
     <c:forEach var="book" items="${requestScope.booklist}">
     <tr>
        <td align="center">${book.bookid}</td>
        <td align="center">${book.bookname}</td>
        <td align="center">${book.categoryname}</td>
        
      	<td><a href="adminDetailBook.do?bookid=${book.bookid}" target="_blank">查看详情</a></td>
     </tr>
     </c:forEach>
  </table>
  </div>
  </body>
</html>
