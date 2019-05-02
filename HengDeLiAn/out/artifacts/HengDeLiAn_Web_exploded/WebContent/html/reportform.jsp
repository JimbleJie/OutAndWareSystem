<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="com.hengdelian.bean.*,java.util.*,com.hengdelian.utils.*,java.sql.*,com.hengdelian.data.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>盘点报表</title>
<%
	TotalinventoryControl tc = new TotalinventoryControl();
	List<TotalInventory> total = tc.SelectTotalinventory();
	request.setAttribute("total", total);
%>
</head>
<body>
	<!-- 头部 -->
	<div style="height: 100px; width: 100%; margin-top: 100px;">
		<h1 style="text-align: center;">盘点报表</h1>
	</div>
	<div style="height: 30px; width: 100%; margin-bottom: 50px">
		<img alt="" src="../img/zhiyuanfanhui.png" style="margin-left: 10%">
		<a href="../html/index.jsp"><strong>返回首页</strong></a>
	</div>
	<!-- 列表展示 -->
	<table border="1" style="height: 100%; width: 80%; margin-left: 10%"
		cellspacing="0" cellpadding="1">
		<tr>
			<th>品名</th>
			<th>规格</th>
			<th>数量</th>
		</tr>

		<c:forEach items="${requestScope.total }" var="tl">
			<tr style="text-align: center;">
				<td>${tl.totype}</td>
				<td>${tl.tospec}</td>
				<td>${tl.tonum}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>