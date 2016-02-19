<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册Chain Book</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" media="screen,projection,tv"
			href="css/home.css" />
<script type="text/javascript">
	function createXMLHttpRequest() {
	var xmlreq=false;
	if(window.XMLHttpRequest){
		xmlreq=new XMLHttpRequest();
	}
	else if(window.ActiveXObject){
		try{
			xmlreq=new ActiveXObject("Msxml2.XMLHTTP");
		}catch(e1){
			try{
				xmlreq=new ActiveXObject("Microsoft.XMLHTTP");
			}catch(e2){
				
			}
		}
	}
	return xmlreq;
}

	//输入姓名后，调用该方法，判断用户名是否可用
	function nameIsNull(){
		var id=document.registForm.ID.value;
		if(id==""){
			alert("<bean:message key="ID"/>");
			document.registForm.ID.focus();
			return false;
		}
		var request=createXMLHttpRequest();//创建ajax
		request.open("post","regist.do?ID="+id+"&flag=0");
		request.send();
		//当readyState属性改变时的事件处理
		request.onreadystatechange=function(){
			if(request.readyState==4){//响应完成
				if(request.status==200){//一切顺利
					var value=request.responseText;//从服务器获得响应信息
					document.all.unc.innerHTML=value;//改变控件unc的值
					//alert(value);
					//showdiv(document.getElementById("unc"),value,"确定","1");//调用showdiv.js内的方法
				}
			}
		}
	}

	//验证邮箱地址是否有效
	function mailFormatCheck(id){
	var b=/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
	if(!b.test(id)){
	return false;
	}else{
	return true;
}
	}
	
	function mailCheck(id, idCfm, idCfmRequired) {
		var valid = true;
		if (!mailFormatCheck(id)) {
			valid = false;
			alert("<bean:message key="mailerror1"/>");
			document.registForm.ID.value="";
			document.registForm.ID.focus();
			return valid;
		} else if ((idCfm != "" || idCfmRequired) && id != idCfm) {
			valid = false;
			alert("<bean:message key="mailerror2"/>");
			document.registForm.ID_CFM.value="";
			document.registForm.ID_CFM.focus();
			return valid;
		} else {
			valid = true;
		}
		return valid;
	}
	
	function allIsNull(){
		var id=document.registForm.ID.value;
		var reid=document.registForm.ID_CFM.value;
		var pwd=document.registForm.PW.value;
		var repwd=document.registForm.PW_CFM.value;
		if(id==""){
			alert("<bean:message key="ID"/>");
			document.registForm.ID.focus();
			return false;
		}
		if(reid==""){
			alert("<bean:message key="ID"/>");
			document.registForm.ID_CFM.focus();
			return false;
		}
		if(pwd==""){
			alert("<bean:message key="passwordInput1"/>");
			document.registForm.PW.focus();
			return false;
		}
		if(repwd==""){
			alert("<bean:message key="passwordInput2"/>");
			document.registForm.PW_CFM.focus();
			return false;
		}
		if(pwd!=repwd){
			alert("<bean:message key="passwordInput3"/>");
			document.registForm.PW.value="";
			document.registForm.PW_CFM.value="";
			document.registForm.PW_CFM.focus();
			return false;
		}
		document.registForm.submit();
		return true;
	}
</script>
	<style type="text/css">
	#bg{
		position: absolute;
		top:90px;
	    left: 35px;
	}
	#full{
		position: absolute;
		top:150px;
		left: 35px;
	}
	</style>
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
		
		
		<div id="contents">
        <!--main-->
        <h1 id="bg"><img src=<bean:message key="regist-banner"/> alt="注册" /></h1>
        <div id="full">
        <h3><bean:message key="welcome"/><br>
       	 <bean:message key="message"/><br>
        	<bean:message key="regist"/><span style="color=#CC0000;"><bean:message key="free"/></span><bean:message key="honorific"/><br><br>
        	<bean:message key="AddMessage"/><br><span>*</span>&nbsp;<bean:message key="MustAdd"/></h3>
        <form name="registForm" method="post" action="regist.do?flag=1">

<h2><bean:message key="mail"/></h2>
            <div>
                <table>
                    <tr>
                        <th><bean:message key="mail"/><span><span>*</span></span></th>
                        
                        <td style="">
                        	<input type="text" name="ID" class="mail_l inputArea" value="" id="ID" onblur="mailCheck(this.form.ID.value, this.form.ID_CFM.value, false),nameIsNull()" maxlength="100">
                  			<font color="red" size="-1" id="unc"></font>
			</td>
                    </tr>
                    <tr>
                        <th><bean:message key="mail2"/><span><span>*</span></span></th>

                        <td style="">
	                        <input type="text" name="ID_CFM" class="mail_l inputArea" value="" id="ID_CFM" onblur="mailCheck(this.form.ID.value, this.form.ID_CFM.value, true);" maxlength="100">
							
						</td>
                    </tr>
                </table>
            </div>


<h2><bean:message key="password"/></h2>
            <div>
                <table>
                    <tr>
                        <th><bean:message key="password"/><span>*</span></th>

                        <td>

                        	<input type="password" class="password inputArea" name="PW" value="" maxlength="20"><span>※<bean:message key="notice"/></span>
</td>
                    </tr>
                    <tr>
                        <th><bean:message key="password2"/><span>*</span></th>

                        <td>
                        	<input type="password" class="password inputArea" name="PW_CFM" value="" maxlength="20"><span>※<bean:message key="notice"/></span>
</td>
                    </tr>
                </table>
            </div>
			<div>
                    <input type="image" src="images/next2.gif" alt="下一步" name="" onclick="allIsNull()"/>
                </div>
        </form>
        </div>
<!--//full//-->
    </div>
    </div>
    <HR id="bottom-line" align="center" width=980 color=#F4A460 SIZE=1>
		<div id="bottom">      
              <table>
              <tr id="book-ico">
              <td><img alt="book-ico" src="images/book-ico.png">
              </tr>
              <tr>
              <td id="bottom-text1"><a href="bottom1.jsp"><img alt="bottom-text1" src="images/bottom-text1.png"></a></td>
              <td id="bottom-text2"><a href="bottom2.jsp"><img alt="bottom-text2" src="images/bottom-text2.png"></a></td>
              <td id="bottom-text3"><a href="bottom3.jsp"><img alt="bottom-text3" src="images/bottom-text3.png"></a></td>
              </tr>
              </table>
       </div>  
  </body>
</html>
