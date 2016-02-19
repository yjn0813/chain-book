<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改图书页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
//验证图书名是否输入
function allIsNull(){
	var bookname=document.updateForm.bookname.value;
	var chainprice=document.updateForm.chainprice.value;
	var price=document.updateForm.price.value;
	var author=document.updateForm.author.value;
	var press=document.updateForm.press.value;
	var descript=document.updateForm.descript.value;
	var bookamount=document.updateForm.bookamount.value;
	if(bookname==null||bookname.length==0){
		alert("请输入图书名！");
		document.updateForm.bookname.focus();
		return false;
	}
	if(chainprice==null||chainprice.length==0){
		alert("请输入Chain Price！");
		document.updateForm.chainprice.focus();
		return false;
	}
	if(price==null||price.length==0){
		alert("请输入定价！");
		document.updateForm.price.focus();
		return false;
	}
    if(author==null||author.length==0){
		alert("请输入作者！");
		document.updateForm.author.focus();
		return false;
	}
	if(press==null||press.length==0){
		alert("请输入出版社！");
		document.updateForm.press.focus();
		return false;
	}
	if(descript==null||descript.length==0){
		alert("请输入简介！");
		document.updateForm.descript.focus();
		return false;
	}
	if(bookamount==null||bookamount.length==0){
		alert("请输入图书数量！");
		document.updateForm.bookamount.focus();
		return false;
	}
		document.updateForm.submit();
		return true;
	}
	</script>
  </head>
  
  <body>
    <html:form action="updateBook.do" method="post" enctype="multipart/form-data">
<table border=1>
		<caption><font size=4 face=华文新魏>图书信息修改</font></caption>
		<tr>
			<td align="center" width="60px" bgcolor="#FFA07A">图书号</td>
			<td><input type="text" readonly 
				style="border-width: 1pt; border-style: dashed; border-color: red" 
				name="bookid" value="${requestScope.adetailbook.bookid}"/></td>
		</tr>
		<tr>
			<td align="center" width="60px" bgcolor="#FFD39B">分类名</td>
			<td>
				<select name="categoryname" >
					<option value="历史、军事" <c:if test="${requestScope.adetailbook.categoryname=='历史、军事'}"> selected </c:if> />历史、军事
					<option value="政治、哲学" <c:if test="${requestScope.adetailbook.categoryname=='政治、哲学'}"> selected </c:if> />政治、哲学
					<option value="法律、心理" <c:if test="${requestScope.adetailbook.categoryname=='法律、心理'}"> selected </c:if> />法律、心理
					<option value="影视艺术、摄影" <c:if test="${requestScope.adetailbook.categoryname=='影视艺术、摄影'}"> selected </c:if> >影视艺术、摄影
					<option value="教程与考级" <c:if test="${requestScope.adetailbook.categoryname=='教程与考级'}"> selected </c:if> />教程与考级
					<option value="教材、教辅" <c:if test="${requestScope.adetailbook.categoryname=='教材、教辅'}"> selected </c:if> />教材、教辅
					<option value="工具书" <c:if test="${requestScope.adetailbook.categoryname=='工具书'}"> selected </c:if> />工具书
					<option value="散文、传记、戏剧" <c:if test="${requestScope.adetailbook.categoryname=='散文、传记、戏剧'}"> selected </c:if> />散文、传记、戏剧
					<option value="诗词和诗歌" <c:if test="${requestScope.adetailbook.categoryname=='诗词和诗歌'}"> selected </c:if> />诗词和诗歌
				</select>
			</td>
		</tr>
		<tr>
			<td align="center" width="60px" bgcolor="#FFA07A">图书名</td>
			<td><input type="text" name="bookname" maxlength="20" value="${requestScope.adetailbook.bookname}"/><font color="red">*</font></td>
		</tr>
		<tr>
			<td align="center" width="60px" bgcolor="#FFD39B">图书封面</td>
			<td><html:file property="file"></html:file></td>
		</tr>
		
		
		<tr>
			<td align="center" width="80px" bgcolor="#FFA07A">Chain Price</td>
			<td><input type="text" name="chainprice" maxlength="10" value="${requestScope.adetailbook.chainprice}"/>元</td>
		</tr>
		
		<tr>
			<td align="center" width="60px" bgcolor="#FFD39B">定价</td>
			<td><input type="text" name="price" maxlength="20" value="${requestScope.adetailbook.price}"/>元</td>
		</tr>
		
	    <tr>
			<td align="center" width="60px" bgcolor="#FFA07A">作者</td>
			<td><input type="text" name="author" maxlength="20" value="${requestScope.adetailbook.author}"/></td>
		</tr>
		
		<tr>
			<td align="center" width="60px" bgcolor="#FFD39B">出版社</td>
			<td><input type="text" name="press" maxlength="50" value="${requestScope.adetailbook.press}"/></td>
		</tr>
		<tr>
			<td align="center" width="60px" bgcolor="#FFA07A">简介</td>
			<td><textarea rows="10" cols="50" name="descript">${requestScope.adetailbook.descript}</textarea></td>
		</tr>
		<tr>
			<td align="center" width="60px" bgcolor="#FFD39B">分类号</td>
			<td>
				<select name="categoryid" >
					<option value="0" <c:if test="${requestScope.adetailbook.categoryid=='0'}"> selected </c:if> />0
					<option value="1" <c:if test="${requestScope.adetailbook.categoryid=='1'}"> selected </c:if> />1
					<option value="2" <c:if test="${requestScope.adetailbook.categoryid=='2'}"> selected </c:if> />2
					<option value="3" <c:if test="${requestScope.adetailbook.categoryid=='3'}"> selected </c:if> />3
					<option value="4" <c:if test="${requestScope.adetailbook.categoryid=='4'}"> selected </c:if> />4
					<option value="5" <c:if test="${requestScope.adetailbook.categoryid=='5'}"> selected </c:if> />5
					<option value="6" <c:if test="${requestScope.adetailbook.categoryid=='6'}"> selected </c:if> />6
					<option value="7" <c:if test="${requestScope.adetailbook.categoryid=='7'}"> selected </c:if> />7
					<option value="8" <c:if test="${requestScope.adetailbook.categoryid=='8'}"> selected </c:if> />8
				</select>
			</td>
		</tr>
		<tr>
			<td align="center" width="60px" bgcolor="#FFA07A">图书数量</td>
			<td><input type="text" name="bookamount" maxlength="20" value="${requestScope.adetailbook.bookamount}"/></td>
		</tr>
		
		<tr>
			<td colspan="2" align="center"><input type="button" onclick="allIsNull()" value="修改"/></td>
		</tr>
	</table>
</html:form>
  </body>
</html>
