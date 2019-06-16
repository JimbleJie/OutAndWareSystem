<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.owsys.data.*, com.owsys.controller.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册成功</title>
<%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("UTF-8");
String rusername = request.getParameter("rusername");
String rcompany = request.getParameter("rcompany");
String remail = request.getParameter("remail");
String rtel = request.getParameter("rtel");
String rpassword = request.getParameter("rpassword");
Register regist = new Register();
regist.RegisteUser(remail, rpassword, rcompany, rtel, rusername);
%>
</head>
<body>
<h1>恭喜您，注册成功！</h1>
<%response.setHeader("refresh", "3;URL=login.jsp"); %>
<h3>三秒后返回登录界面。。。</h3>如果没有跳转,请按 <a href="login.jsp">这里</a>!!!
</body>
</html>