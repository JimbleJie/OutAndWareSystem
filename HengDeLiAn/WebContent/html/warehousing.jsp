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
<title>入库记录</title>
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

	String wdate = request.getParameter("wdate");
	
	String[] wtype = request.getParameterValues("wtype");
	String[] wspec = request.getParameterValues("wspec");
	String[] wnum = request.getParameterValues("wnum");
	String[] wsweight = request.getParameterValues("wsweight");
	String[] wsprice = request.getParameterValues("wsprice");
	String wsupname = request.getParameter("wsupname");
	WarehousingControl wc = new WarehousingControl();
	TotalinventoryControl tc = new TotalinventoryControl();
	if (wdate != null) {
		for (int i = 0; i < wtype.length; i++) {

			double waweight = Double.valueOf(wsweight[i]) * Integer.parseInt(wnum[i]);
			double waprice = Double.valueOf(wsprice[i]) * Integer.parseInt(wnum[i]);
			wc.InsertWarehousing(wdate, wtype[i], wspec[i], wnum[i], Double.valueOf(wsweight[i]), waweight,
					Double.valueOf(wsprice[i]), waprice, wsupname);
			tc.AutoWareJudgement(wtype[i], wspec[i], wnum[i]);
		}
	}
	
	
	List<WarehousInfo> warehouse = wc.SelectWarehousing();
	request.setAttribute("warehouse", warehouse);
%>
</head>
<body>
	<!-- 头部 -->
	<div style="height: 100px; width: 100%; margin-top: 100px;">
		<h1 style="text-align: center;">入库记录</h1>
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
		<a href="../html/addwarehousing.jsp"
			class="button button-primary button-pill button-large"
			style="float: right; margin-right: 10%"><strong>添加入库</strong></a>
	</div>
	<!-- 列表展示 -->
	<table border="1" style="height: 100%; width: 80%; margin-left: 10%"
		cellspacing="0" cellpadding="1">
		<tr>
			<th>日期</th>
			<th>品名</th>
			<th>规格</th>
			<th>数量</th>
			<th>单重</th>
			<th>货重</th>
			<th>单价</th>
			<th>吨位价</th>
			<th>金额</th>
			<th>供货商</th>
			<th>供货商电话</th>
		</tr>

		<c:forEach items="${requestScope.warehouse }" var="ws">
			<tr style="text-align: center;">
				<td>${ws.wdate}</td>
				<td>${ws.wtype}</td>
				<td>${ws.wspec}</td>
				<td>${ws.wnum}</td>
				<td>${ws.wsweight}</td>
				<td>${ws.waweight}</td>
				<td>${ws.wsprice}</td>
				<td></td>
				<td>${ws.waprice}</td>
				<td>${ws.wsupname}</td>
				<td></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>