<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="com.hengdelian.bean.*,java.util.*,com.hengdelian.utils.*,java.sql.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>客户</title>
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
	List<CustomerInfo> customer = new ArrayList<CustomerInfo>();
	String cusname = request.getParameter("adcusname");
	String cusunityname = request.getParameter("adcusunityname");
	String custel = request.getParameter("adcustel");
	DBUtils db = new DBUtils();
	Connection cc = db.getConnection();
	Statement cs = cc.createStatement();
	if (cusname != null) {
		String sql = "insert into cusinfo (cusname,cusunityname,custel) values ('" + cusname + "','"
				+ cusunityname + "','" + custel + "')";
		cs.executeUpdate(sql);

	}
	ResultSet rs = cs.executeQuery("select * from cusinfo");
	while (rs.next()) {
		int cusidq = rs.getInt(1);
		String cusnameq = rs.getString(2);
		String cusunitynameq = rs.getString(3);
		String custelq = rs.getString(4);
		CustomerInfo ci = new CustomerInfo(cusidq, cusnameq, cusunitynameq, custelq);
		customer.add(ci);
		request.setAttribute("customer", customer);
	}
%>

</head>
<body>
	<!-- 头部 -->
	<div style="height: 100px; width: 100%; margin-top: 100px;">
		<h1 style="text-align: center;">客户</h1>
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
		<a href="../html/addcustomer.jsp"
			class="button button-primary button-pill button-large"
			style="float: right; margin-right: 10%"><strong>添加客户</strong></a>
	</div>
	<!-- 列表展示 -->
	<table border="1" style="height: 100%; width: 80%; margin-left: 10%"
		cellspacing="0" cellpadding="1">
		<tr>
			<th>姓名</th>
			<th>手机号</th>
			<th>单位名称</th>
			<th>操作</th>
		</tr>

		<c:forEach items="${requestScope.customer }" var="ci">
			<tr style="text-align: center;">
				<td>${ci.cusname}</td>
				<td>${ci.custel}</td>
				<td>${ci.cusunityname}</td>
				<td><a href="#">入库</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">对账</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>