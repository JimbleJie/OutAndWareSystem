<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="com.hengdelian.bean.*,java.util.*,com.hengdelian.utils.*,java.sql.*,com.hengdelian.data.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>对账</title>
<link rel="stylesheet"
	href="http://www.bootcss.com/p/buttons/css/buttons.css">
<style type="text/css">
a {
	text-decoration: none;
}
</style>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name"); // 接收姓名
	Reconciliation rc = new Reconciliation();
	List<WarehousInfo> total = rc.SelectWarehouseinfoBySup(name);
	request.setAttribute("total", total);
	request.setAttribute("excel", name);
%>

</head>
<body>
	<!-- 头部 -->
	<div style="height: 100px; width: 100%; margin-top: 100px;">
		<h1 style="text-align: center;">个人对账</h1>
	</div>
	<div style="height: 30px; width: 100%; margin-bottom: 50px">
		<img alt="" src="../img/zhiyuanfanhui.png" style="margin-left: 10%">
		<a href="../html/index.jsp"><strong>返回首页</strong></a>
		<a href="../html/exportsuccess.jsp?name=${requestScope.excel}"
			class="button button-primary button-pill button-large"
			style="float: right; margin-right: 10%"> <strong>导出excel</strong></a>

	</div>
	<!-- 列表展示 -->
	<table border="1" style="height: 100%; width: 80%; margin-left: 10%"
		cellspacing="0" cellpadding="1">
		<tr>

			<th>日期</th>
			<th>品种</th>
			<th>型号</th>
			<th>数量</th>
			<th>单重</th>
			<th>总重</th>
			<th>单价</th>
			<th>总价</th>
		</tr>

		<c:forEach items="${requestScope.total }" var="tl">
			<tr style="text-align: center;">
				<td>${tl.wdate}</td>
				<td>${tl.wtype}</td>
				<td>${tl.wspec}</td>
				<td>${tl.wnum}</td>
				<td>${tl.wsweight}</td>
				<td>${tl.waweight}</td>
				<td>${tl.wsprice}</td>
				<td>${tl.waprice}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>