<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="Busyness.*"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>增加图书</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

		<style type="text/css">
#down {
	position: absolute;
	left: 230px;
}
</style>
		<script type="text/javascript">
//添加时检查输入项
	function allIsNull(){
		var bookid=document.addBooksForm.bookid.value;
		var bookname=document.addBooksForm.bookname.value;
		var chainprice=document.addBooksForm.chainprice.value;
		var price=document.addBooksForm.price.value;
		var author=document.addBooksForm.author.value;
		var press=document.addBooksForm.press.value;
		var descript=document.addBooksForm.descript.value;
		var bookamount=document.addBooksForm.bookamount.value;
		if(bookid==""){
			alert("请输入图书号！");
			document.addBooksForm.bookid.focus();
			return false;
		}
		if(bookname==""){
			alert("请输入图书名！");
			document.addBooksForm.bookname.focus();
			return false;
		}
		if(chainprice==""){
			alert("请输入Chain Price！");
			document.addBooksForm.chainprice.focus();
			return false;
		}
		if(price==""){
			alert("请输入定价！");
			document.addBooksForm.price.focus();
			return false;
		}
	    if(author==""){
			alert("请输入作者！");
			document.addBooksForm.author.focus();
			return false;
		}
		if(descript==""){
			alert("请输入简介！");
			document.addBooksForm.categoryname.focus();
			return false;
		}
		if(press==""){
			alert("请输入出版社！");
			document.addBooksForm.press.focus();
			return false;
		}
		if(bookamount==""){
			alert("请输入图书数量！");
			document.addBooksForm.bookamount.focus();
			return false;
		}
		document.addBooksForm.submit();
		return true;
	}
	</script>
	</head>

	<body>
		<div id=down>
			<html:form action="addBook.do" method="post" enctype="multipart/form-data">
				<table bordercolor="#FFA07A">

					<tr>
						<td align="center" width="60px" bgcolor="#FFA07A">
							图书号
						</td>
						<td align="center">
							<input type="text" readonly
								style="border-width: 1pt; border-style: dashed; border-color: red"
								name="bookid" value='<%=BaseBusyness.getStringID()%>'>
						</td>
					</tr>
					<tr>
						<td align="center" width="60px" bgcolor="#FFD39B">
							分类名
						</td>
						<td align="center">
							<select name="categoryname">
								<option value="历史、军事" />
									历史、军事
									<option value="政治、哲学" />
										政治、哲学
										<option value="法律、心理" />
											法律、心理
											<option value="影视艺术、摄影" />
												影视艺术、摄影
												<option value="教程与考级" />
													教程与考级
													<option value="教材、教辅" />
														教材、教辅
														<option value="工具书" />
															工具书
															<option value="散文、传记、戏剧" />
																散文、传记、戏剧
																<option value="诗词和诗歌" />
																	诗词和诗歌
							</select>
						</td>
					</tr>
					<tr>
						<td align="center" width="60px" bgcolor="#FFA07A">
							图书名
						</td>
						<td align="center">
							<input type="text" name="bookname" maxlength="50" />
						</td>
					</tr>
					<tr>
						<td align="center" width="100px" bgcolor="#FFD39B">
							图书封面
						</td>
						<td align="center">
							<html:file property="file"></html:file>
						</td>
					</tr>
					<tr>
						<td align="center" width="80px" bgcolor="#FFA07A">
							Chain Price
						</td>
						<td align="center">
							<input type="text" name="chainprice" maxlength="10" size="3" />
							元
						</td>
					</tr>
					<tr>
						<td align="center" width="60px" bgcolor="#FFD39B">
							定价
						</td>
						<td align="center">
							<input type="text" name="price" maxlength="10" size="3" />
							元
						</td>
					</tr>

					<tr>
						<td align="center" width="60px" bgcolor="#FFA07A">
							作者
						</td>
						<td align="center">
							<input type="text" name="author" maxlength="20" />
						</td>
					</tr>


					<tr>
						<td align="center" width="60px" bgcolor="#FFD39B">
							出版社
						</td>
						<td align="center">
							<input type="text" name="press" maxlength="20" />
						</td>
					</tr>
					<tr>
						<td align="center" width="60px" bgcolor="#FFA07A">
							简介
						</td>
						<td align="center">
							<textarea rows="10" cols="50" name="descript"></textarea>
						</td>
					</tr>
<tr>
						<td align="center" width="60px" bgcolor="#FFD39B">
							分类号
						</td>
						<td align="center">
							<select name="categoryid">
								<option value="0" />
									0
									<option value="1" />
										1
										<option value="2" />
											2
											<option value="3" />
												3
												<option value="4" />
													4
													<option value="5" />
														5
														<option value="6" />
															6
															<option value="7" />
																7
																<option value="8" />
																	8
							</select>
						</td>
					</tr>
					<tr>
						<td align="center" width="60px" bgcolor="#FFA07A">
							图书数量
						</td>
						<td align="center">
							<input type="text" name="bookamount" maxlength="10"/>
						</td>
					</tr>
					<tr>
						<td>
							<input type="button" onclick="allIsNull()" value="添加" />
						</td>
						<td>
							<input type="reset" value="重置" />
						</td>
					</tr>
				</table>
			</html:form>
		</div>

	</body>
</html>
