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
		<table>
		<tr>
		 <td>购物演示

第一步 选择商品（放入截图）
第二步 把商品放入购物车
第三步 进入购物车商品列表，确定购买
第四步 去付款中心，登录或注册
第五步 确认收货信息，提交订单
第六步 订购成功，生成订单
		 
		 </td>
		</tr>
		</table>
		<table>
		<tr>
		 <td>常见问题

Q:注册需要填写自己的真实姓名吗？能否重复注册？
A:您好，因为图书邮寄的收件人是以此姓名为标准，注册后不能更改，注册时一定要准确填写真实姓名。同时，由于提供试用的图书数量有限，为了让更多的读者有机会获得赠送，一人只能注册一次。

Q:我填写的个人资料会不会保密？
A:您好，我们保证不对外公开或向第三方提供单个用户的注册资料，请您放心使用。

Q:订单提交成功后还可以修改收货信息吗？
A:您好，非常抱歉Chain Book网上书店当前暂不支持订单页面直接修改收货信息，请您下单前仔细核对您的收货地址、姓名、电话，以保证商品准确无误送达，请您谅解。

Q:订单提交成功后商品降价了，可以退给我差价吗？
A:您好，Chain Book网上书店商品随市场价格的波动而每日都有部分调整，请您届时关注本网站，第一时间获得优惠活动信息，更实惠，感谢您的关注！

Q:订单已经提交，什么时候可以发货？
A:您好，订单提交成功后，我们会尽快发货。

Q:签收时发现商品包装破损，该如何处理？
A:您好，商品签收时如包装有破损，请您直接拒收；商品签收后如商品本身存在质量问题，请您直接联系本网站18845651172服务热线进行详询，将有专业售后人员为您解决。


		 
		 </td>
		</tr>
		</table>
		<table>
		<tr>
		 <td>投诉与建议

您在购物过程中，遇到任何问题，都可以联系我们，我们拥有一批热情认真的客服代表专门为您解决问题，您的来信和来电也将进一步促进我们更好地为您服务，我们采取的是限期处理、分级管理的原则，以便更好地处理您的问题。我们深信，您的投诉与建议也是您对我们99网上书城关怀的最佳体现，我们全体工作人员将以最坦诚的方式对待您的每一次投诉和每一个建议。

		 
		 </td>
		</tr>
		</table>
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
		