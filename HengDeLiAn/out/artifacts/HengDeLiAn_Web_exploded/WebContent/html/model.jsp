<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="com.hengdelian.bean.*,java.util.*,com.hengdelian.utils.*,java.sql.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>型号列表</title>
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
	List<ModelInfo> model = new ArrayList<ModelInfo>();
	String mtype = request.getParameter("mtype");
	String mspec = request.getParameter("mspec");
	String mweight = request.getParameter("mweight");
	DBUtils db = new DBUtils();
	Connection cc = db.getConnection();
	Statement cs = cc.createStatement();
	if (mtype != null) {
		String sql = "insert into modelinfo (mtype,mspec,mweight) values ('" + mtype + "','" + mspec + "','"
				+ mweight + "')";
		cs.executeUpdate(sql);

	}
	ResultSet rs = cs.executeQuery("select * from modelinfo");
	while (rs.next()) {
		int midq = rs.getInt(1);
		String mtypeq = rs.getString(2);
		String mspecq = rs.getString(3);
		Double mweightq = rs.getDouble(4);
		ModelInfo mi = new ModelInfo(midq, mtypeq, mspecq, mweightq);
		model.add(mi);
		request.setAttribute("model", model);
	}
%>

</head>
<body>
	<!-- 头部 -->
	<div style="height: 100px; width: 100%; margin-top: 100px;">
		<h1 style="text-align: center;">型号列表</h1>
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
		<a href="../html/addmodel.jsp"
			class="button button-primary button-pill button-large"
			style="float: right; margin-right: 10%"><strong>添加型号</strong></a>
	</div>
	<!-- 列表展示 -->
	<table border="1" style="height: 100%; width: 80%; margin-left: 10%"
		cellspacing="0" cellpadding="1">
		<tr>
			<th>种类</th>
			<th>规格</th>
			<th>理论重量</th>
			<th>操作</th>
		</tr>

		<c:forEach items="${requestScope.model }" var="mi">
			<tr style="text-align: center;">
				<td>${mi.mtype}</td>
				<td>${mi.mspec}</td>
				<td>${mi.mweight}</td>
				<td><a href="#">删除</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">修改</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>