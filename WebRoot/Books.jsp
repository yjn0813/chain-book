<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

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
#updown {
	position: absolute;
	top:120px;
	left: 20px;
	
}


#up {
	position: absolute;
	color: #8B1A1A;
	text-indent: 100px;
	top: 60px;
	float: left;
}

#bottom-line {
	position: absolute;
	top: 450px;
}

#bottom {
	position: absolute;
	top: 480px;
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
			<div id="updown">
				<img src="images/classify-banner.png" width="948" height="265">


				<div id="up">

					<table>

						<tr>
							<td>
								<font size="5" color="#8B0000">~人文社科~</font>
							</td>
							<td>
								<font size="5" color="#8B0000">~艺术~</font>
							</td>
							<td>
								<font size="5" color="#8B0000">~教辅教材~</font>
							</td>
						</tr>

						<tr>
							<td>
								<a href="showDetailBooks.do?categoryid=0">历史、军事</a>
							</td>
							<td>
								<a href="showDetailBooks.do?categoryid=3">影视艺术、摄影</a>
							</td>

							<td>
								<a href="showDetailBooks.do?categoryid=4">教材、教辅</a>
							</td>
						</tr>
						<tr>
							<td>
								<a href="showDetailBooks.do?categoryid=1">政治、哲学</a>
							</td>
							<td>
								<a href="showDetailBooks.do?categoryid=5">教程与考级</a>
							</td>
							<td>
								<a href="showDetailBooks.do?categoryid=6">工具书</a>
							</td>
						</tr>
						<tr>
							<td>
								<a href="showDetailBooks.do?categoryid=2">法律、心理</a>
							</td>

						</tr>
						<tr>
							<td>
								<font size="5" color="#8B0000">~文学~</font>
							</td>

						</tr>
						<tr>
							<td>
								<a href="showDetailBooks.do?categoryid=7">散文、传记、戏剧</a>
							</td>

						</tr>
						<tr>
							<td>
								<a href="showDetailBooks.do?categoryid=8">诗词和诗歌</a>
							</td>

						</tr>

					</table>
				</div>
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
