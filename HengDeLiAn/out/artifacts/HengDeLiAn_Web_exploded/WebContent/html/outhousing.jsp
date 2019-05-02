<%@page import="com.hengdelian.data.OuthousingControl"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.Out"%>
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
<title>出库记录</title>
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
	String odate = request.getParameter("odate");

	String[] otype = request.getParameterValues("otype");
	String[] ospec = request.getParameterValues("ospec");
	String[] onum = request.getParameterValues("onum");
	String[] osprice = request.getParameterValues("osprice");
	String ocusname = request.getParameter("ocusname");
	OuthousingControl oc = new OuthousingControl();
	TotalinventoryControl tc = new TotalinventoryControl();
	if (odate != null) {
		for (int i = 0; i < otype.length; i++) {
			double oaprice = Double.valueOf(osprice[i]) * Integer.parseInt(onum[i]);
			oc.InsertOuthousing(odate, otype[i], ospec[i], onum[i], Double.valueOf(osprice[i]), oaprice,
					ocusname);
			tc.AutoOutJudgement(otype[i], ospec[i], onum[i]);
		}
	}
	List<OuthousInfo> outhouse = oc.SelectOuthousing();
	request.setAttribute("outhouse", outhouse);
%>
</head>
<body>
	<!-- 头部 -->
	<div style="height: 100px; width: 100%; margin-top: 100px;">
		<h1 style="text-align: center;">出库记录</h1>
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
		<a href="../html/addouthousing.jsp"
			class="button button-primary button-pill button-large"
			style="float: right; margin-right: 10%"><strong>添加出库</strong></a>
	</div>
	<!-- 列表展示 -->
	<table border="1" style="height: 100%; width: 80%; margin-left: 10%"
		cellspacing="0" cellpadding="1">
		<tr>
			<th>日期</th>
			<th>品名</th>
			<th>规格</th>
			<th>数量</th>
			<th>单价</th>
			<th>金额</th>
			<th>客户</th>
		</tr>

		<c:forEach items="${requestScope.outhouse }" var="os">
			<tr style="text-align: center;">
				<td>${os.odate}</td>
				<td>${os.otype}</td>
				<td>${os.ospec}</td>
				<td>${os.onum}</td>
				<td>${os.osprice}</td>
				<td>${os.oaprice}</td>
				<td>${os.ocusname}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>