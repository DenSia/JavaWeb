<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>自制登录页</title>
	<style type="text/css">
		*
		{

			margin: 0px
			padding: 0px;
		}
		.demo
		{
			position: absolute;
			
			top: 350px;
			left:350px;
			color: purple;


		}
		input[name=bt1]
		{
			color:red;
			margin: 20px

		}
		input[name=bt2]
		{
			color:green;
		
			

		}
		
		a
		{
			text-decoration: none;

		}
		header
		{
			width: 100%;
			height:100px;
			margin: 0 auto;
			text-align: center;
			position: absolute;
		}
		li
		{	
			list-style-type: none;
			display: inline;
			padding-left: 200px
		}
		span
		{
			margin:100px;
		}
		a:hover
		{
			color: blue;
		}
		


	</style>
</head>
<body>
	<header>
<div class="nag">
	<ui>
		<li><a href="#">与我相关</a></li>
		<li><a href="#">免责声明</a></li>
		<li><a href="#">开通会员</a></li>
		<li><a href="#">个人中心</a></li>
	</ui>
</div>
</header>

<img src="ali.jpg">
<div class="demo">
	<h1>请先登录！</h1>没有帐号？前往<a href="register.jsp" style="">注册</a><br/>
<form action="Login">
	用户名：<input type="text" name="uname" /> <br/>
	密码：&nbsp;&nbsp;&nbsp;<input id = "12" type="password" name="upswd" /> <br/>
	
<span>
	<input type="reset" name="bt1" value="重置">
	<input type="submit" name="bt2" value="登录">
</span>
</form>
</div>

</body>
</html>