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
    
    <title>删除图书</title>
    
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
  			var n=document.deleteBookForm.deletebookid.length;
  			var count=0;
  			for(var i=0;i<n;i++){
  				if(!document.deleteBookForm.deletebookid[i].checked){
  					count++;
  				}else{
  					break;
  				}
  			}
  			if(n>1){
  				//所有的图书都没有选择
  				if(count==n){
  					alert("请选择要删除的图书！");
  	  				count=0;
  	  				return false;
  					
  				}
  			}else{
  				//就一个图书并且还没有选择
  	  			if(!document.deleteBookForm.deletebookid.checked){
  	  					alert("请选择要删除的图书！");
  	  					return false;
  	  			}
  			}
  			
  			if(window.confirm("真的删除吗？")){
  				document.deleteBookForm.submit();
  				return true;
  			}
  			return false;
  		}
  		function checkDel(bookid){
  		if(window.confirm("是否删除这本图书？")){
  			window.location.href="deleteBook.do?bookid="+bookid;
  		}
  		
  	}
  	
  </script>
  </head>
  
  <body>
  <form action="deleteBook.do" name="deleteBookForm" method="post">
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
        
      	<td><a href="javascript:checkDel('${book.bookid}')">删除</a></td>
     </tr>
     </c:forEach>
  </table>
  </form>
  </body>
</html>
