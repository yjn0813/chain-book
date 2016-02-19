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
    
    <title>查看用户</title>
    
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
    left:230px;
}
</style>
  </head>
  
  <body>
  <div id=down>
  <table bordercolor="#FFA07A">
     <tr bgcolor="#FFA07A">
        <td align="center" width="60px">用户ID</td>
        <td align="center" width="60px">所在省份</td>
        <td align="center" width="60px">所在城市</td>
        <td align="center" width="60px">现住址</td>
        <td align="center" width="60px">区号</td>
        <td align="center" width="60px">联系电话</td>
        <td align="center" width="60px">职业</td>
     </tr>
  
  <c:forEach var="custom" items="${requestScope.customlist}"><!-- 找关键字（customlist） -->
  <tr>
  <td>${custom.ID}</td>
  <td>${custom.add1}</td>
  <td>${custom.add2}</td>
  <td>${custom.add3}</td>
  <td>${custom.tel1}</td>
  <td>${custom.tel2}</td>
  <td>${custom.job}</td>
  </tr>
  </c:forEach>

  </table>
  </div>
  </body>
</html>
