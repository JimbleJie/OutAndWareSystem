<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录失败</title>
<%
	Object errormsg = session.getAttribute("error");
%>
</head>
<body>
<h1><%=errormsg %></h1>
<%response.setHeader("refresh", "3;URL=login.jsp"); %>
<h3>三秒后返回登录界面。。。</h3>如果没有跳转,请按 <a href="login.jsp">这里</a>!!!
</body>
</html>