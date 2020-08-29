<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    import="com.mysql.cj.jdbc.Driver"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style type="text/css">
	input[name=upswd]
	{
		background-color:red;
	}
	
	p
	{
		border：solid 1px;   
		border-cold: red;
	}
	
</style>
</head>
<body>


	<form action="Login">
		
		用户名:<input type="text"  name="uname" /><br/>
		密码:<input type="password"  name="upswd" /><br/>
		年龄:<input type="text" name="uage" /> <br/> 
		爱好:<input type="checkbox" name="uhobbies" value = "足球" /> 足球
		爱好:<input type="checkbox" name="uhobbies" value= "羽毛球" /> 羽毛球
		爱好:<input type="checkbox" name="uhobbies" value= "乒乓球"/> 乒乓球
		
		<input type = "submit" value="注册" />
		<p>This is a JSP context</p>
	
		</form>



</body>
</html>