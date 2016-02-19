<%@ page language="java" import="java.util.*" import="struts.form.*"
	pageEncoding="utf-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	LoginForm userid = (LoginForm) session.getAttribute("user");
	String isLogin = "";
	if (userid == null) {
		isLogin = "no";
	} else {
		isLogin = "yes";
	}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<link rel="stylesheet" media="screen,projection,tv"
			href="css/home.css" />

		<style type="text/css">
#detail1 {
	position: absolute;
	text-indent: 75px;
	top:100px;
}

#detail2 {
	position: absolute;
	text-indent: 350px;
	top: 100px;
}

#detail3 {
	position: absolute;
	background: url(images/yyy.jpg) no-repeat;
	width: 400px;
	height: 200px;
	text-indent: 60px;
	top: 110px;
	left: 355px;
}

#detail4 {
	position: absolute;
	text-indent: 350px;
	top: 450px;
}

#detail5 {
	position: absolute;
	z-index: 1;
	left: 355px;
	top: 500px;
}

#bottom-line {
	position: absolute;
	top: 730px;
}

#bottom {
	position: absolute;
	top: 480px;
	left: 160px;
}

#bottom-text1 {
	position: absolute;
	left: 160px;
	top: 370px;
}

#bottom-text2 {
	position: absolute;
	left: 280px;
	top: 370px;
}

#bottom-text3 {
	position: absolute;
	left: 400px;
	top: 370px;
}

#book-ico {
	position: absolute;
	top: 300px;
	left: 288px;
}
</style>
		<script type="text/javascript">
	function checkcart(id,bookamount){
		
			var mkrum=document.getElementById("mkrum").value;
			
			if(mkrum==null||mkrum.length==0){
				alert("请输入购买数量!");
				document.getElementById("mkrum").focus();
				return false;
			}
			//数字验证
			if(!mkrum.match(/^[0-9]+$/)){
				alert("购买数量为正整型数字!");
				document.getElementById("mkrum").focus();
				return false;
			}
			if(Number(mkrum)==0){
				mkrum=1;
				document.getElementById("mkrum").value=1;
			}
			if(Number(mkrum)>bookamount){
				alert("购买数量超出库存!");
				document.getElementById("mkrum").focus();
				return false;
			}
			window.location.href="cart.do?bookid="+id+"&mkrum="+mkrum;
			return true;
		}
		
		function notLogin(){
			alert("请登录！");
			window.location.href="Login.jsp";
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
				<div id="flash">
					<ul style="list-style-type: none">
						<li id="flash">
							<embed src="images/flash.swf" width="203" height="64">
						</li>
					</ul>
				</div>
			</div>
			<div id="detail1">
				<table>

					<tr>

						<td>
							<img src="files/${requestScope.adetailbook.bookpic}" width="200"
								height="300">
						</td>
					</tr>
				</table>
			</div>
			<div id="detail2">
				<table>
					<tr>
						<td>
							<font color="#8B0000" size="4"><b>书名：${requestScope.adetailbook.bookname}</b>
							</font>
						</td>
					</tr>

					<tr>
						<td>
							<font color="#CD0000" size="5">Chain
								Price：¥${requestScope.adetailbook.chainprice}</font>
						</td>
					</tr>
					<tr>
						<td>
							<font id="price" color="#8B0000" size="4"><b id="price">定价：¥${requestScope.adetailbook.price}</b>
							</font>
						</td>
					</tr>

					<tr id="detail3">
						<td>
							${requestScope.adetailbook.descript}
						</td>
					</tr>
				</table>
			</div>

			<div id="detail4">
				<table>
					<tr>
						<td>
							<font color="#8B0000" size="4"><b>我要购： <input
										type="text" id="mkrum" size="1" value="1"> 件</b> <font
								size="3">（库存：${requestScope.adetailbook.bookamount}件）</font> </font>
						</td>

					</tr>
				</table>
			</div>
			<div id="detail5">
				<table>
					<tr>
						<td>
							<%
								if (isLogin == "yes") {
							%>

							<a
								onclick="checkcart('${requestScope.adetailbook.bookid}',${requestScope.adetailbook.bookamount})">
								<%
									} else {
								%> <a onclick="notLogin()"> <%
 	}
 %> <img src="images/cart.png" width="160" height="27"> </a>
						</td>
					</tr>
				</table>
			</div>
			<HR id="bottom-line" align="center" width=950 color=#F4A460 SIZE=1>
			<div id="bottom">
				<table>
					<tr id="book-ico">
						<td>
							<img alt="book-ico" src="images/book-ico.png">
					</tr>
					<tr>
						<td id="bottom-text1">
							<a href="bottom1.jsp"><img alt="bottom-text1"
									src="images/bottom-text1.png"> </a>
						</td>
						<td id="bottom-text2">
							<a href="bottom2.jsp"><img alt="bottom-text2"
									src="images/bottom-text2.png"> </a>
						</td>
						<td id="bottom-text3">
							<a href="bottom3.jsp"><img alt="bottom-text3"
									src="images/bottom-text3.png"> </a>
						</td>
					</tr>
				</table>
			</div>

		</body> </font>

</html>
