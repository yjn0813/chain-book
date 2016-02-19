<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Chain Book会员详细信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" media="screen,projection,tv"
			href="css/home.css" />

<script type="text/javascript">
//验证是否输入
	function allISnull(){
		var n=document.memberAddFrom.NM1.value;
		var m=document.memberAddFrom.NM2.value;
		var tel1=document.memberAddFrom.TEL1.value;
		var tel2=document.memberAddFrom.TEL2.value;
		var addr1=document.getElementById("ADDR1");
		var addr2=document.memberAddFrom.ADDR2.value;
		var addr3=document.memberAddFrom.ADDR3.value;
		
	if(n==""){
		alert("请输入姓！");
		document.memberAddFrom.NM1.focus();
		return false;
	}
	
	if(m==""){
		alert("请输入名！");
		document.memberAddFrom.NM2.focus();
		return false;
	}
	
	if(addr1.value==""){
		alert("请输入省份！");
		document.memberAddFrom.ADDR1.focus();
		return false;
	}
	
	if(addr2==""){
		alert("请输入城市！");
		document.memberAddFrom.ADDR2.focus();
		return false;
	}
	
	if(addr3==""){
		alert("请输入住址！");
		document.memberAddFrom.ADDR2.focus();
		return false;
	}
	
	//验证区号
	if(tel1==null||tel1.length==0){
		alert("请输入区号！");
		document.memberAddFrom.TEL1.focus();
		return false;
	}
	
	//验证联系电话
	if(tel2==null||tel2.length==0){
		alert("请输入联系电话！");
		document.memberAddFrom.TEL2.focus();
		return false;
	}
	
	//验证单选框
	if((document.memberAddFrom.sex[0].checked)==false
         &&(document.memberAddFrom.sex[1].checked)==false){
         alert("请选择性别！");
         return false;
     }
     
     
	document.memberAddFrom.submit();
	return true;
}
</script>
  </head>
  
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
						<embed src="images/flash.swf" width="203" height="64" type="application/x-shockwave-flash">
					</li>
				</ul>
			</div>
		</div>
		<div>
        <h1><img src="images/UserDetail.png" alt="会员详细信息" /></h1>
        <div>
            <form name="memberAddFrom" method="post" action="memberAdd.do">
            <h2>为用户<input type="text" name="ID" value="${requestScope.id}" readonly="readonly">添加详细信息，让购物变得更轻松。</h2>
            <br>
            <h3>请填写以下信息。<br>
            <span>*</span>&nbsp;为必填。</h3>
            <!--会员详细信息-->
                <table>
                <tr>
                
                </tr>
                    <tr>
                        <th>姓名<span>*</span></th>
                        
                        <td>
                            姓
                            <input type="text" name="NM1" value="" maxlength="19">
                            &nbsp;&nbsp;
                           名
                            <input type="text" name="NM2" value="" maxlength="19">
                            <span class="note"></span>
                            </td>
                    </tr>
                    
                    <tr>
                        <th>邮编</th>
                        
                        <td>
                            <input type="text" name="ZIP_CD" value="" maxlength="6">
                            
                            <span class="note"> 例：116011 （英文状态下输入）</span>
                            </td>
                    </tr>
                    <tr>
                        <th>所在省份<span>*</span></th>
                       	
                        <td>
                        <select name="ADDR1">
                        <option value="北京市" >北京市</option>
<option value="上海市" >上海市</option>
<option value="天津市" >天津市</option>
<option value="重庆市 " >重庆市 </option>
<option value="河北省" >河北省</option>
<option value="山西省" >山西省</option>
<option value="辽宁省" >辽宁省</option>
<option value="吉林省" >吉林省</option>
<option value="黑龙江省" >黑龙江省</option>
<option value="江苏省" >江苏省</option>
<option value="浙江省" >浙江省</option>
<option value="安徽省" >安徽省</option>
<option value="" selected>请选择</option>
<option value="福建省" >福建省</option>
<option value="江西省" >江西省</option>
<option value="山东省 " >山东省 </option>
<option value="河南省 " >河南省 </option>
<option value="湖北省" >湖北省</option>
<option value="湖南省 " >湖南省 </option>
<option value="广东省" >广东省</option>
<option value="海南省" >海南省</option>
<option value="四川省" >四川省</option>
<option value="贵州省" >贵州省</option>
<option value="云南省" >云南省</option>
<option value="陕西省" >陕西省</option>
<option value="甘肃省" >甘肃省</option>
<option value="青海省" >青海省</option>
<option value="澳门特别行政区" >澳门特别行政区</option>
<option value="香港特别行政区" >香港特别行政区</option>
<option value="新疆维吾尔自治区" >新疆维吾尔自治区</option>
<option value="宁夏回族自治区" >宁夏回族自治区</option>
<option value="西藏自治区" >西藏自治区</option>
<option value="广西壮族自治区" >广西壮族自治区</option>
<option value="内蒙古自治区" >内蒙古自治区</option>
</select></td>
                    </tr>
            		
                    <tr>
                        <th>所在地<span>*</span></th>
                        
                        <td>
                        <input type="text" name="ADDR2" value="" maxlength="80">
                        <span class="note">例：大连市</span></td>
                    </tr>
                    <tr>
                        <th>住址<span>*</span></th>
                        
                        <td>
                        <input type="text" name="ADDR3" value="" maxlength="80">
                        <span>例：西岗区高尔基路x号</span></td>
                    </tr>
                    <tr>
                        <th>联系电话<span>*</span></th>
                        
                        <td>
							<input type="text" name="TEL1" value="" maxlength="4">-
							<input type="text" name="TEL2" value="" maxlength="11">
							<span>例：0411 - 138xxxxxxxx 或 0411 - 836xxxxx （英文状态下输入）</span>
                            </td>
                    </tr>
                    <tr>
                        <th>职业</th>
                        
                        <td>
                            <select name="JOB">
                            <option value="">请选择</option>
                            <option value="公司职员" >公司职员</option>
<option value="公务员" >公务员</option>
<option value="家庭主妇" >家庭主妇</option>
<option value="个体户" >个体户</option>
<option value="学生" >学生</option>
<option value="自由职业" >自由职业</option>
<option value="失业" >失业</option>
<option value="其它" >其它</option>
</select>
                            </td>
                    </tr>
                    <tr>
                        <th>性别<span>*</span></th>
                        
                        <td>
                        <input type="radio" name="sex" value="男"/>男
    					<input type="radio" name="sex" value="女"/>女
                            </td>
                    </tr>
             		<tr>
					<td><input type="image" src="images/banner3_r2_c2_f3.gif" 
				onmouseover="this.src='images/banner3_r2_c2.gif'"
				onmouseout="this.src='images/banner3_r2_c2_f3.gif'" value="提交信息" onclick="allISnull()"/></td>
					</tr>
                </table>

            <!--//会员详细信息//-->

            </form>
        </div>
    <!--//main//-->
    </div>
  </body>
</html>
