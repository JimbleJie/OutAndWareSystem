<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="com.hengdelian.bean.*,java.util.*,com.hengdelian.utils.*,java.sql.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>供货商</title>
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
	List<SupplierInfo> suppliers = new ArrayList<SupplierInfo>();
	String supname = request.getParameter("adsupname");
	String supunityname = request.getParameter("adsupunityname");
	String suptel = request.getParameter("adsuptel");
	DBUtils db = new DBUtils();
	Connection cc = db.getConnection();
	Statement cs = cc.createStatement();
	if (supname != null) {
		String sql = "insert into supinfo (supname,supunityname,suptel) values ('" + supname + "','"
				+ supunityname + "','" + suptel + "')";
		cs.executeUpdate(sql);

	}
	ResultSet rs = cs.executeQuery("select * from supinfo");
	while (rs.next()) {
		int supidq = rs.getInt(1);
		String supnameq = rs.getString(2);
		String supunitynameq = rs.getString(3);
		String suptelq = rs.getString(4);
		SupplierInfo si = new SupplierInfo(supidq, supnameq, supunitynameq, suptelq);
		suppliers.add(si);
		request.setAttribute("suppliers", suppliers);
	}
%>

</head>
<body>
	<!-- 头部 -->
	<div style="height: 100px; width: 100%; margin-top: 100px;">
		<h1 style="text-align: center;">供货商</h1>
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
		<a href="../html/addsupplier.jsp"
			class="button button-primary button-pill button-large"
			style="float: right; margin-right: 10%"><strong>添加供货商</strong></a>
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

		<c:forEach items="${requestScope.suppliers }" var="si">
			<tr style="text-align: center;">
				<td>${si.supname}</td>
				<td>${si.suptel}</td>
				<td>${si.supunityname}</td>
				<td><a href="../html/reconciliation.jsp?name=${si.supname}">对账</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>