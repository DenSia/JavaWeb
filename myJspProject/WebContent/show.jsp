<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"

 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<script>
	alert("帐号或密码失败！")
</script>
<body>

	<%
	
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("uname");
	String pwd = request.getParameter("upswd");
	int age = Integer.parseInt(request.getParameter("uage"));
	String[] hobbies = request.getParameterValues("uhobbies");

	
	
	%>
	
	
	登录成败了！: 信息如下: <br/>
	
	姓名:<%=name %> <br/>
	年龄:<%=age %> <br/>
	密码:<%=pwd %> <br/>
	
	<%
		if (hobbies != null)
		{
			for (String hobby : hobbies)
			{
				out.print(hobby);
			}
		}
	
	
	%>
	<a href="register.jsp">重新登录</a>
	


</body>
</html>