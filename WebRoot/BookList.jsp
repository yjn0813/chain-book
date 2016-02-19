<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<link rel="stylesheet" media="screen,projection,tv"
			href="css/home.css" />

		<style type="text/css">
#above {
	position: absolute;
	text-indent: 100px;
	left: -10px;
	top:120px;
}

#bottom-line {
	position: absolute;
	top: 1600px;
}

#bottom {
	position: absolute;
	top: 1650px;
	left: 160px;
}

#book-ico {
	position: absolute;
	top: -10px;
	left: 288px;
}

#bottom-text1 {
	position: absolute;
	top: 50px;
	left: 160px;
}

#bottom-text2 {
	position: absolute;
	top: 50px;
	left: 280px;
}

#bottom-text3 {
	position: absolute;
	top: 50px;
	left: 400px;
}
</style>
	</head>

	<font face="方正准圆简体">
		<body bgcolor="#FFFFCC">

			<div id="header">
				<h1 id="logo">
					&nbsp;
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
				<br />
				<div id="flash">
					<ul style="list-style-type: none">
						<li id="flash">
							<embed src="images/flash.swf" width="203" height="64">
						</li>
					</ul>
				</div>
			</div>

			<div id="above">

				<table>
					<tr>
						<c:forEach var="books" items="${requestScope.booklist}">
							<td>
								<a href="showABook.do?bookid=${books.bookid}"><img
										src="files/${books.bookpic}" width="200" height="300">
								</a>
							</td>

						</c:forEach>
					</tr>

				</table>

			</div>

			<div>
				<HR id="bottom-line" align="center" width=980 color=#F4A460 SIZE=1>
			</div>
			<div id="bottom">
				<table>
					<tr id="book-ico">
						<td>
							<img alt="book-ico" src="images/book-ico.png">
					</tr>
					<tr>
						<td id="bottom-text1">
							<a href="bottom1.jsp"><img alt="bottom-text1"
									src="images/bottom-text1.png">
							</a>
						</td>
						<td id="bottom-text2">
							<a href="bottom2.jsp"><img alt="bottom-text2"
									src="images/bottom-text2.png">
							</a>
						</td>
						<td id="bottom-text3">
							<a href="bottom3.jsp"><img alt="bottom-text3"
									src="images/bottom-text3.png">
							</a>
						</td>
					</tr>
				</table>
			</div>

		</body> </font>
</html>
