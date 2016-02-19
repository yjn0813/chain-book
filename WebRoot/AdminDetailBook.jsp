<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理员查询一本图书详情</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <table border=1>
			<caption>
				<font size=4 face=华文新魏>图书信息</font>
			</caption>
			<tr>
				<td>图书号</td>
				<td>${requestScope.adetailbook.bookid}&nbsp;</td>
			</tr>

			<tr>
				<td>分类名</td>
				<td>${requestScope.adetailbook.categoryname}&nbsp;</td>
			</tr>
			<tr>
				<td>图书名</td>
				<td>${requestScope.adetailbook.bookname}&nbsp;</td>
			</tr>
			<tr>
				<td>图书封面</td>
				<td><img width="100px" src="files/${requestScope.adetailbook.bookpic}"/>&nbsp;</td>
			</tr>

			<tr>
				<td>Chain Price</td>
				<td>${requestScope.adetailbook.chainprice}&nbsp;</td>
			</tr>

			<tr>
				<td>定价</td>
				<td>${requestScope.adetailbook.price}&nbsp;</td>
			</tr>

			<tr>
				<td>作者</td>
				<td>${requestScope.adetailbook.author}&nbsp;</td>
			</tr>

			<tr>
				<td>出版社</td>
				<td>${requestScope.adetailbook.press}&nbsp;</td>
			</tr>
            <tr>
				<td>简介</td>
				<td>${requestScope.adetailbook.descript}&nbsp;</td>
			</tr>
			<tr>
				<td>分类号</td>
				<td>${requestScope.adetailbook.categoryid}&nbsp;</td>
			</tr>
			<tr>
				<td>图书数量</td>
				<td>${requestScope.adetailbook.bookamount}&nbsp;</td>
			</tr>
			
		</table>
  </body>
</html>
