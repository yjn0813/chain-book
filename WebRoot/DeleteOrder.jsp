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
    
    <title>删除订单</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript">
  		function confirmDelete(){
  			var n=document.deleteOrderForm.deleteorderid.length;
  			var count=0;
  			for(var i=0;i<n;i++){
  				if(!document.deleteOrderForm.deleteorderid[i].checked){
  					count++;
  				}else{
  					break;
  				}
  			}
  			if(n>1){
  				//所有的订单都没有选择
  				if(count==n){
  					alert("请选择要删除的订单！");
  	  				count=0;
  	  				return false;
  					
  				}
  			}else{
  				//就一个订单并且还没有选择
  	  			if(!document.deleteOrderForm.deleteorderid.checked){
  	  					alert("请选择要删除的订单！");
  	  					return false;
  	  			}
  			}
  			
  			if(window.confirm("真的删除吗？")){
  				document.deleteOrderForm.submit();
  				return true;
  			}
  			return false;
  		}
  		function checkDel(orderid){
  		if(window.confirm("是否删除这个订单？")){
  			window.location.href="deleteOrder.do?orderid="+orderid;
  		}
  		
  	}
  	
  </script>
  </head>
  
  <body>
  <form action="deleteOrder.do" name="deleteOrderForm" method="post">
   <table bordercolor="#FFA07A">
     <tr bgcolor="#FFA07A">
        <td align="center" width="60px">订单序号</td>
        <td align="center" width="100px">用户名</td>
        <td align="center" width="100px">商品总价</td>
        <td align="center" width="100px">订单状态</td>
        <td align="center" width="100px">订单生成时间</td>
        <td align="center" width="60px">操作</td>
     
     </tr>
     <c:forEach var="order" items="${requestScope.orderlist}">
     <tr>
        <td align="center">${order.orderid}</td>
        <td align="center">${order.userid}</td>
        <td align="center">${order.amount}</td>
        <td align="center">${order.orderstatus}</td>
        <td align="center">${order.addtime}</td>
      	<td><a href="javascript:checkDel('${order.orderid}')">删除</a></td>
     </tr>
     </c:forEach>
  </table>
  </form>
  </body>
</html>
