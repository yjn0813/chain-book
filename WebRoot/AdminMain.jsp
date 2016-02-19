<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<base href="<%=basePath%>">
<title>管理信息主页面</title>
<style type="text/css">

#top {
	position: absolute;
	left: 480px;
}
#top-line{
	position: absolute;
    top:140px;
}
#up {
	top: 160px;
}
#up1{
	position: absolute;
	top: 160px;
	left: 280px;
}
#up2{
	position: absolute;
	top: 160px;
	left: 450px;
}
#up3{
	position: absolute;
	top: 160px;
	left: 620px;
}
#up4{
	position: absolute;
	top: 160px;
	left: 790px;
}

#right1 {
	position: absolute;
	top: 310px;
	left: 220px;
	width: 850px;
	height: 400px;
}


</style>
</head>

<script type="text/javascript">
	function showHide(objname) {
		//只对主菜单设置cookie
		var obj = document.getElementById(objname);
		if (objname.indexOf('_1') < 0 || objname.indexOf('_10') > 0) {
			if (obj.style.display == 'block' || obj.style.display == '')
				obj.style.display = 'none';
			else
				obj.style.display = 'block';
			return true;
		}
		//正常设置cookie
		var ckstr = getCookie('menuitems');
		var ckstrs = null;
		var okstr = '';
		var ischange = false;
		if (ckstr == null)
			ckstr = '';
		ckstrs = ckstr.split(',');
		objname = objname.replace('items', '');
		if (obj.style.display == 'block' || obj.style.display == '') {
			obj.style.display = 'none';
			for ( var i = 0; i < ckstrs.length; i++) {
				if (ckstrs[i] == '')
					continue;
				if (ckstrs[i] == objname) {
					ischange = true;
				} else
					okstr += (okstr == '' ? ckstrs[i] : ',' + ckstrs[i]);
			}
			if (ischange)
				setCookie('menuitems', okstr, 7);
		} else {
			obj.style.display = 'block';
			ischange = true;
			for ( var i = 0; i < ckstrs.length; i++) {
				if (ckstrs[i] == objname) {
					ischange = false;
					break;
				}
			}
			if (ischange) {
				ckstr = (ckstr == null ? objname : ckstr + ',' + objname);
				setCookie('menuitems', ckstr, 7);
			}
		}
	}
	//读写cookie函数
	function getCookie(c_name) {
		if (document.cookie.length > 0) {
			c_start = document.cookie.indexOf(c_name + "=")
			if (c_start != -1) {
				c_start = c_start + c_name.length + 1;
				c_end = document.cookie.indexOf(";", c_start);
				if (c_end == -1) {
					c_end = document.cookie.length;
				}
				return unescape(document.cookie.substring(c_start, c_end));
			}
		}
		return null
	}
	function setCookie(c_name, value, expiredays) {
		var exdate = new Date();
		exdate.setDate(exdate.getDate() + expiredays);
		document.cookie = c_name
				+ "="
				+ escape(value)
				+ ((expiredays == null) ? "" : ";expires="
						+ exdate.toGMTString()); //使设置的有效时间正确。增加toGMTString()
	}
</script>
<body bgcolor="#FFFFCC">

    
	<div id="top">
		<br>
		<br>
		<center>
			<font size=6 face=华文新魏 color="#8B0000">Chain Book在线书店管理系统</font>
		</center>
	</div>
     <HR id="top-line" align="center" width=1548  SIZE=1>

	<div id="up">
		<dl id="up1">
			<dt onClick='showHide("items1_1")'>
				<b>图书管理</b>
			</dt>
			<dd style='display:none' id='items1_1'>
				<table>
					<tr>
						<td><a href="queryBook.do" target="right"
							style="text-decoration: none">查看图书</a>
						</td>
					</tr>
					<tr>
						<td><a href="queryBook.do?flag=updatebook" target="right"
							style="text-decoration: none">修改图书</a>
						</td>
					</tr>

					<tr>
						<td><a href="queryBook.do?flag=delbook" target="right"
							style="text-decoration: none">删除图书</a>
						</td>
					</tr>
					<tr>
						<td><a href="AddBook.jsp" target="right"
							style="text-decoration: none">增加图书</a>
						</td>
					</tr>

				</table>
			</dd>
		</dl>
		<dl id="up2">
			<dt onClick='showHide("items1_2")'>
				<b>用户管理</b>
			</dt>
			<dd style='display:none' id='items1_2'>
				<table>
					<tr>
						<td><a href="queryCustom.do"  target="right"
							style="text-decoration: none">查看用户</a>
						</td>
					</tr>
					
					<tr>
						<td><a href="queryCustom.do?flag=del"  target="right"
							style="text-decoration: none">删除用户</a>
						</td>
					</tr>
					
				</table>
			</dd>
		</dl>
			<dl id="up3">
			<dt onClick='showHide("items1_3")'>
				<b>订单管理</b>
			</dt>
			<dd style='display:none' id='items1_3'>
				<table>
					<tr>
						<td><a href="queryOrder.do"  target="right"
							style="text-decoration: none">查看订单</a>
						</td>
					</tr>
					
					<tr>
						<td><a href="queryOrder.do?flag=delorder"  target="right"
							style="text-decoration: none">删除订单</a>
						</td>
					</tr>
					
					
				</table>
			</dd>
		</dl>
	<dl id="up4">
			
			<dd style='display:block' id='items1_4'>
				<table>
					
					<tr>
						<td><a href="exitMember.do" 
							style="text-decoration: none">注销</a>
						</td>
					</tr>
				</table>
			</dd>
		</dl>
	</div>

	<div id="right1">
		<iframe src="queryBook.do" name="right" width="100%" height="100%"
			frameborder="0"  > </iframe>
	</div>



	
</body>
</html>
