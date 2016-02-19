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
	<script type="text/javascript">
	function checkDel(id){
  			if(window.confirm("是否删除 ？")){
  				window.location.href="deleteCustom.do?id="+id;
  			}
  		}
  	</script>
	
  <style type="text/css">
#down{
    position: absolute;
    left:230px;
}
</style>
  </head>
  
  <body>
  <div id=down>
  <form action="deleteCustom" name="deleteCustomForm" method="post">
  <table bordercolor="#FFA07A">
     <tr bgcolor="#FFA07A">
        <td align="center" width="60px">用户ID</td>
        <td align="center" width="60px">操作</td>
     </tr>
     <c:forEach var="custom" items="${requestScope.customlist}">
     <tr>
        <td align="center">${custom.ID}</td>
        <td align="center"><a href="javascript:checkDel('${custom.ID}')">删除</a></td>
     </tr> 
     </c:forEach>
  </table>
  </form>
  </div>
  </body>
</html>
