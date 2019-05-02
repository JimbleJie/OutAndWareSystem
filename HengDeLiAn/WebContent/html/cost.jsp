<%@page import="java.awt.print.Printable"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="com.hengdelian.bean.*,java.util.*,com.hengdelian.utils.*,java.sql.*,com.hengdelian.data.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>成本记录</title>
<link rel="stylesheet"
	href="http://www.bootcss.com/p/buttons/css/buttons.css">
<style type="text/css">
a {
	text-decoration: none;
}
</style>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("UTF-8");

	String cdate = request.getParameter("cdate");

	String[] ctype = request.getParameterValues("ctype");
	String[] cprice = request.getParameterValues("cprice");
	WarehousingControl wc = new WarehousingControl();
	CostController coctr = new CostController();
	Cost cos = new Cost();
	if (cdate != null) {
		for (int i = 0; i < ctype.length; i++) {
			double cpriceq = Double.valueOf(cprice[i]);
			coctr.InsertWarehousing(cdate, ctype[i], cpriceq);
		}
	}
	List<Cost> cost = coctr.SelectCost();
	request.setAttribute("cost", cost);
%>
</head>
<body>
	<!-- 头部 -->
	<div style="height: 100px; width: 100%; margin-top: 100px;">
		<h1 style="text-align: center;">成本记录</h1>
	</div>
	<div style="height: 30px; width: 100%; margin-bottom: 50px">
		<img alt="" src="../img/zhiyuanfanhui.png" style="margin-left: 10%">
		<a href="../html/index.jsp"><strong>返回首页</strong></a>
	</div>
	<!-- 二级导航栏 -->
	<div style="height: 100px; width: 100%">

		<input type="text" name="search" placeholder="请输入您要搜索的关键字"
			style="height: 45px; width: 15%; margin-left: 10%; font-size: 15px">
		<a href="#" class="button button-primary button-pill button-large"><strong>搜索</strong></a>
		<a href="../html/addcost.jsp"
			class="button button-primary button-pill button-large"
			style="float: right; margin-right: 10%"><strong>添加成本</strong></a>
	</div>
	<!-- 列表展示 -->
	<table border="1" style="height: 100%; width: 80%; margin-left: 10%"
		cellspacing="0" cellpadding="1">
		<tr>
			<th>日期</th>
			<th>成本类型</th>
			<th>金额</th>
		</tr>

		<c:forEach items="${requestScope.cost}" var="cs">
			<tr style="text-align: center;">
				<td>${cs.cdate}</td>
				<td>${cs.ctype}</td>
				<td>${cs.cprice}</td>
				<td></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>