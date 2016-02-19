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
		
		<div id="pageBody">

			<div id="mainBnr">
				<div class="slides_container">

					<a href="showABook.do?bookid=20130607173905125" onclick=javascript:_gaq.push(['_trackEvent', 'link', 'game', 'dmmd_re_cafe' ]);;
><img
							src="images/top-img01.jpg" alt="" width="500" height="276" /> </a>
					<a href="showABook.do?bookid=20130607174006334" onclick=javascript:_gaq.push(['_trackEvent', 'link', 'game', 'dmmd_re' ]);;
><img
							src="images/top-img02.jpg" alt="" width="500" height="276" /> </a>
					<a href="showABook.do?bookid=20130607182143247" onclick=javascript:_gaq.push(['_trackEvent', 'link', 'event',
			'chiralnight130706' ]);;
><img
							src="images/top-img03.jpg" alt="" width="500" height="276" /> </a>
					<a href="showABook.do?bookid=20130607190156874" onclick=javascript:_gaq.push(['_trackEvent', 'link', 'event',
			'chiralnight130706' ]);;
><img
							src="images/top-img04.jpg" alt="" width="500" height="276" /> </a>
					<a href="showABook.do?bookid=20130618231555727" onclick=javascript:_gaq.push(['_trackEvent', 'link', 'event',
			'chiralnight130706' ]);;
><img
							src="images/top-img05.jpg" alt="" width="500" height="276" /> </a>

				</div>

				<p id="slidesPrev">
					<a href="#" class="prev"><img src="images/btn_mainbnr_prev.png"
							alt="" width="60" height="60" class="over" /> </a>
				</p>
				<p id="slidesNext">
					<a href="#" class="next"><img src="images/btn_mainbnr_next.png"
							alt="" width="60" height="60" class="over" /> </a>
				</p>
				<table>
				<tr>
				<td id="welcome"><font size="3"><strong>欢迎您！${sessionScope.user.ID}</strong></font></td>
			
				</tr>
				<tr>
				<td id="exit"><a href="exitMember.do"><font size="3"><strong>注销</strong></font></a></td>
				</tr>
					<tr>
					
						<td id="login-button">
							<a href="Login.jsp"><img alt="会员登录" src="images/login-button1.gif"
									onmouseout="this.src='images/login-button1.gif'"
									onmouseover="this.src='images/login-button2.gif'"> </a>
						</td>
					</tr>
					<tr>
						<td id="regist-button">
							<a href="Regist.jsp"><img alt="新会员注册" src="images/regist-button1.gif"
									onmouseout="this.src='images/regist-button1.gif'"
									onmouseover="this.src='images/regist-button2.gif'"> </a>
						</td>
					</tr>
					<tr>
						<td id="search">
							<form method="get" name="search_form" class="searchForm"
								action="">
								<img alt="SearchImg" src="images/SearchImg.png">
								<select name="classify">
									<option value="">
										所有分类
									</option>
									<option value="12">
										书籍
									</option>
									<option value="11">
										小说
									</option>
									<option value="31">
										漫画
									</option>
									<option value="71">
										杂志
									</option>
								</select>
								<input type="text" size="20" name="q" maxlength="100"
									id="tField" tabindex="2" value="">
						
								<div id="btn_del" style="display: block;">
									<img border="0" src="images/search-clear.gif"
										alt="clear">
									
								</div>
								<a href=""><img alt="search-button" src="images/search-button2.gif" onmouseout="this.src='images/search-button2.gif'"
									onmouseover="this.src='images/search-button1.gif'"></a> 
								


							</form>
						</td>
					</tr>
				</table>
			</div>

			<div id="list-item">
				<ul style="list-style-type: none">
					<li>
						<a href="Books.jsp"><img src="images/list-item01.png"
							onmouseover="this.src='images/list-item11.png'"
							onmouseout="this.src='images/list-item01.png'"></a>
					</li>
					<li>
						<a href="novels.jsp"><img src="images/list-item02.png"
							onmouseover="this.src='images/list-item22.png'"
							onmouseout="this.src='images/list-item02.png'"></a>
					</li>
					<li>
						<a href="comics.jsp"><img src="images/list-item03.png"
							onmouseover="this.src='images/list-item33.png'"
							onmouseout="this.src='images/list-item03.png'"></a>
					</li>
					<li>
						<a href="magazines.jsp"><img src="images/list-item04.png"
							onmouseover="this.src='images/list-item44.png'"
							onmouseout="this.src='images/list-item04.png'"></a>
					</li>
				</ul>
				
			</div>
			
		</div>
		<div id="bookrank">
		<ol>
		<li><a href="showABook.do?bookid=20130607190156874">遇见未知的自己</a></li>&nbsp;
		<li><a href="showABook.do?bookid=20130607174006334">制空权时代</a></li>&nbsp;
		<li><a href="showABook.do?bookid=20130607174126532">台湾四百年</a></li>&nbsp;
		<li><a href="showABook.do?bookid=20130607173905125">蒋介石与现代中国</a></li>&nbsp;
		<li><a href="showABook.do?bookid=20130607182143247">香蕉哲学</a></li>&nbsp;
		<li><a href="showABook.do?bookid=20130607180123648">邓小平时代</a></li>&nbsp;
		<li><a href="showABook.do?bookid=20130617133717031">重口味心理学</a></li>&nbsp;
		<li><a href="showABook.do?bookid=20130618231555727">看电影的艺术</a></li>&nbsp;
		<li><a href="showABook.do?bookid=20130618234630043">国际商务英语函电</a></li>&nbsp;
		<li><a href="showABook.do?bookid=20130618232001174">自然光人像摄影指南</a></li>
		</ol>
		
		</div>
		
		<div id="hotbooks">
		<div id="hotbook1">
		<a href="showABook.do?bookid=20130617133717031"><img src="files/29.jpg" width="130" height="190"/></a>
		</div>
		<div id="hotbook2">
		<a href="showABook.do?bookid=20130617160836930"><img src="files/30.jpg" width="130" height="190"/></a>
		</div>
		<div id="hotbook3">
		<a href="showABook.do?bookid=20130607190156874"><img src="files/22.jpg" width="130" height="190"/></a>
		</div>		
		</div>
		<div id="cheapbooks">
		<div id="cheapbook1">
		<a href="showABook.do?bookid=20130607173905125"><img src="files/11.jpg" width="130" height="190"/></a>
		</div>
		<div id="cheapbook2">
		<a href="showABook.do?bookid=20130618232001174"><img src="files/20130630002302738.jpg" width="130" height="190"/></a>
		</div>
		<div id="cheapbook3">
		<a href="showABook.do?bookid=20130607182143247"><img src="files/20130630002836313.jpg" width="130" height="190"/></a>
		</div>		
		</div>
		<HR id="bottom-line" align="center" width=980 color=#F4A460 SIZE=1>
		<div id="bottom">      
              <table>
              <tr id="book-ico">
              <td><img alt="book-ico" src="images/book-ico.png">
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


	</body>
	</font>
</html>
