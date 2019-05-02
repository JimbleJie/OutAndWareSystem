<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="com.hengdelian.bean.*,java.util.*,com.hengdelian.utils.*,java.sql.*,com.hengdelian.data.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加成本</title>
<link rel="stylesheet"
	href="http://www.bootcss.com/p/buttons/css/buttons.css">
<style type="text/css">
a {
	text-decoration: none;
}
</style>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>

<%
	List<String> ctype = new ArrayList<String>();
	DBUtils db = new DBUtils();
	Connection cc = db.getConnection();
	Statement cs = cc.createStatement();
	ResultSet rs = cs.executeQuery("select cmtype from costmodel");
	while (rs.next()) {
		String ctypeq = rs.getString(1);
		ctype.add(ctypeq);
		request.setAttribute("ctype", ctype);
	}

%>
<!--创建添加行函数-->

<script type="text/javascript">
	function addrow() {

		var tables = $('.table');
		var addtr = $("<tr style='text-align: center;'>"
				+ "<td><select name='ctype'>"
				+ "<option disabled selected>请选择成本类型</option>"
				+ "<c:forEach items='${requestScope.ctype }' var='ct'>"
				+ "<option>${ct}</option>"
				+ "</c:forEach>"
				+ "</select></td>"
				+ "<td><input type='text' name='cprice' style='height: 100%; width: 95%; float: left;' placeholder='请输入金额'></td>"
				+ "</tr>");

		addtr.appendTo(tables);

	}

	function deleteTabRow(obj) {
		var row = obj.parentNode.parentNode;
		var tb = obj.parentNode.parentNode.parentNode;
		var index = row.rowIndex;
		tb.deleteRow(index);
	}
</script>
</head>
<body>
	<!-- 标题 -->
	<div style="height: 100px; width: 100%; margin-top: 100px">
		<h1 style="text-align: center;">添加成本</h1>
	</div>
	<div style="height: 30px; width: 100%; margin-bottom: 50px">
		<img alt="" src="../img/zhiyuanfanhui.png" style="margin-left: 15%">
		<a href="../html/cost.jsp"><strong>返回成本记录界面</strong></a>
		<button onclick="addrow();"
			class="button button-primary button-pill button-small"
			style="float: right; margin-right: 10%">
			<strong>添加一行</strong>
		</button>
	</div>
	<!-- 列表展示 -->
	<form action="warehousing.jsp" method="post">
		<table border="1" style="height: 100%; width: 80%; margin-left: 10%"
			cellspacing="0" cellpadding="1" class="table">
			<tr>
				<th style="border: 0px">日期：<input type="text" name="cdate"
					style="height: 100%; width: 50%;" placeholder="请输入日期">
				</th>
			</tr>
			<tr>
				<th>成本类型</th>
				<th>金额</th>
			</tr>

			<tr style="text-align: center;">
				<td><select name="ctype">
						<option disabled selected>请选择成本类型</option>
						<c:forEach items="${requestScope.ctype }" var="ct">
							<option>${ct}</option>
						</c:forEach>
				</select></td>
				<td><input type="text" name="cprice"
					style="height: 100%; width: 95%; float: left;" placeholder="请输入金额"></td>
			</tr>
		</table>
		<!-- 提交按钮 -->
		<input type="submit"
			class="button button-primary button-pill button-small"
			style="height: 50px; width: 80%; margin-left: 10%; margin-top: 8%; font-size: 20px;"
			value="添加">
	</form>
</body>
</html>