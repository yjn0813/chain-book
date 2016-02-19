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


		<script src="http://www.google.com/jsapi"></script>
		<script>google.load("jquery", "1.4");</script>

		<link rel="stylesheet" media="screen,projection,tv"
			href="css/home.css" />
		<script src="js/jquery.slides.min.js"></script>
		<script src="js/home.js"></script>
		<script type="text/javascript" language="text/javascript">
		window.onload = function() {
   if(document.getElementById("tField") && document.getElementById("btn_del")){
       searchBoxChecker();
   }
}

function searchBoxChecker(){
	ShowBtn_del();
	document.getElementById("tField").onkeyup = function(){
		ShowBtn_del();
	}
	
	document.getElementById("btn_del").onclick = function(){
		document.getElementById("tField").value = "";
		document.getElementById("tField").focus();
		ShowBtn_del();
		delKwd();
	}
}

function ShowBtn_del() {

	var textLength = document.getElementById("tField").value;
	var btn_delete = document.getElementById("btn_del");
	if ( textLength != "" ) {
		btn_delete.style.display = "block";
	} else {
		btn_delete.style.display = "none";
	}
}
		
		</script>
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
								onmouseout="this.src='images/japenese.png'" alt="日文" width="55"
								height="17" /> </a>
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
			<div id="flash">
				<ul style="list-style-type: none">
					<li id="flash">
						<embed src="images/flash.swf" width="203" height="64">
					</li>
				</ul>
			</div>
		</div>
		<div>
		Chain Book网上书店是中国首个由大连外国语大学学生研发并投入实际应用的图书销售网站。完善的售后服务与极佳的用户体验平台，使之非常受广大年轻消费者欢迎。
Chain Book人始终致力于会员制直销模式的图书发行通路的建设。同时，我们也通过与海内外著名出版机构和著名作家、学者之间的合作，努力推荐出版最新、最有价值并深受广大读者喜爱的一流的图书。
Chain Book网上书店共设热门书籍排行展示、精选书籍分类查找、特价优惠书籍、网站相关信息公告，以及相关网上书店的友情链接等模块。
Chain Book网上书店的发展目标是：在中国的现实环境下，为读者购书提供最大程度的便利，我们要为爱书人提供一个能够享受淘书乐趣的地方，花很少的钱却能淘到自己想要却在他处找不到的好书。Chain Book网上书店今后必将以一种崭新的姿态崛起于海内外华文出版界，为弘扬民族文化、振兴中国出版事业做出贡献。
		
		</div>
		<HR id="bottom-line" align="center" width=980 color=#F4A460 SIZE=1>
		<div id="bottom">      
              <table>
              <tr id="book-ico">
              <td><img alt="book-ico" src="images/book-ico.png">
              </tr>
              <tr>
              <td id="bottom-text1"><a href=""><img alt="bottom-text1" src="images/bottom-text1.png"></td>
              <td id="bottom-text2"><a href=""><img alt="bottom-text2" src="images/bottom-text2.png"></td>
              <td id="bottom-text3"><a href=""><img alt="bottom-text3" src="images/bottom-text3.png"></td>
              </tr>
              </table>
       </div>       


	</body>
	</font>
</html>
		