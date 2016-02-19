<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登陆Chain Book</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" media="screen,projection,tv"
			href="css/home.css" />

<style type="text/css">
    #login-banner{
	    position:absolute;
	    top:90px;
	    left: 35px;
    }
	#member{
		position:absolute;
		text-align:left;
		top:150px;
		left:35px;
	}
	#new_member{
		position:absolute;
		text-align:right;
		width: 600pt;
		height: 600pt;
		top:210px;
	}
</style>

<script type="text/javascript">
	//检查用户名和密码是否为空
	function allIsNull(){
		var id=document.loginForm.ID.value;
		var pwd=document.loginForm.PW.value;
		if(id==""){
			alert("<bean:message key="ID"/>");
			document.loginForm.ID.focus();
			return false;
		}
		if(pwd==""){
			alert("<bean:message key="passwordInput1"/>");
			document.loginForm.PW.focus();
			return false;
		}
		document.loginForm.submit();
		return true;
	}
	
	//刷新验证码
	function refreshCode(){
       document.getElementById("code").src = "checkCodeImg.jsp?t="+Math.random();
    }
</script>
  </head>
  
  <body bgcolor="#FFFFCC">
  <div>
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
						<embed src="images/flash.swf" width="203" height="64" type="application/x-shockwave-flash">
					</li>
				</ul>
			</div>
		</div>
		
    	<div>
<!-- 登陆 -->
	<h1 id="login-banner"><img src=<bean:message key="login-banner"/> alt="登陆"/></h1>
		<div id="member">
			<h2><bean:message key="register"/></h2>
	<html:form method="post" action="login.do">
			<div>
				<p><bean:message key="message1"/></p>
				
				<div>
					<table>
						<tr>
							<th><bean:message key="mail"/></th>
							
							<td><input type="text" name="ID" value="" maxlength="20"/>
							</td>
						</tr>
						<tr>
							<th><bean:message key="password"/></th>
							
							<td><input type="password" name="PW" value="" maxlength="20"/>
							</td>
							</tr>
						<tr>
    				<td><bean:message key="checkcode"/></td>
    				<td>
    					<html:text property="checkcode" maxlength="4"/>
    				</td>
    			</tr>	
    			
    			<tr>
                    <td><img id="code" src="checkCodeImg.jsp"/></td>
                    <td><a href="javascript:refreshCode();"><bean:message key="refreshcheck"/></a></td>
                </tr>
					</table>
				</div>
				<div><input type="image" src=<bean:message key="login-button2"/>
				onmouseover="this.src='<bean:message key="login-button1"/>'"
				onmouseout="this.src='<bean:message key="login-button2"/>'"
				alt="登陆" onclick="allIsNull()"/>
				</div>
			</div>
	</html:form>
	<font color=red>
	<html:errors/><br>
	</font>
		</div>
<!--// 登陆 //-->
<!-- 注册 -->
		<div id="new_member">
			<h2><bean:message key="unregister"/></h2>
			<div>
				<p><a href="Regist.jsp"><bean:message key="regist"/></a><bean:message key="message2"/><br/>
				（<bean:message key="regist"/><span style="color:#CC0000;"><bean:message key="free"/></span>。）</p>
				<div>
				<input type="image" src=<bean:message key="regist-button2"/>
				onmouseover="this.src='<bean:message key="regist-button1"/>'"
				onmouseout="this.src='<bean:message key="regist-button2"/>'"
				alt="会员注册" onClick="location.href='Regist.jsp'" />
				</div>
			</div>
		</div>
<!--// 注册 //-->
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
						</td>              </tr>
              </table>
       </div>  
  </body>
</html:html>
