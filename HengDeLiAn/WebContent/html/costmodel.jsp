<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="com.hengdelian.bean.*,java.util.*,com.hengdelian.utils.*,java.sql.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>成本列表</title>
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
	List<CostModel> costm = new ArrayList<CostModel>();
	String ctype = request.getParameter("ctype");
	DBUtils db = new DBUtils();
	Connection cc = db.getConnection();
	Statement cs = cc.createStatement();
	if (ctype != null) {
		String sql = "insert into costmodel (cmtype) values ('" + ctype + "')";
		cs.executeUpdate(sql);

	}
	ResultSet rs = cs.executeQuery("select * from costmodel");
	while (rs.next()) {
		int cidq = rs.getInt(1);
		String ctypeq = rs.getString(2);
		CostModel cm = new CostModel(cidq, ctypeq);
		costm.add(cm);
		request.setAttribute("costm", costm);
	}
%>
<script type="text/javascript">
function del(id){
	if(window.confirm("确认删除吗？")){
		window.location="${pageContext.request.contextPath}/costmodel_del?cmid="+id;
	}
}
</script>
</head>
<body>
	<!-- 头部 -->
	<div style="height: 100px; width: 100%; margin-top: 100px;">
		<h1 style="text-align: center;">成本列表</h1>
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
		<a href="../html/addcostmodel.jsp"
			class="button button-primary button-pill button-large"
			style="float: right; margin-right: 10%"><strong>添加成本类型</strong></a>
	</div>
	<!-- 列表展示 -->
	<table border="1" style="height: 100%; width: 80%; margin-left: 10%"
		cellspacing="0" cellpadding="1">
		<tr>
			<th>成本种类</th>
			<th>操作</th>
		</tr>

		<c:forEach items="${requestScope.costm }" var="cm">
			<tr style="text-align: center;">
				<td>${cm.cmtype}</td>
				
				<td><a href="#" onclick="del(${cm.cmid})">删除</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">修改</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>