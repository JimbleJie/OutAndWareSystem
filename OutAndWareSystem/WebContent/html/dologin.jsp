<%@page import="com.sun.xml.internal.txw2.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.owsys.data.*, com.owsys.controller.*"%>
<%
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	Login login = new Login();
	String mpwd = login.GetPassword(email);
	if (mpwd.equals("")){
		session.setAttribute("error", "没有该账户");
		request.getRequestDispatcher("login_failure.jsp").forward(request, response);
	}else if(password.equals(mpwd)){
		session.setAttribute("loginemail", email);
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}else{
		session.setAttribute("error", "密码错误");
		request.getRequestDispatcher("login_failure.jsp").forward(request, response);
	}
%>