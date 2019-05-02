<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="com.hengdelian.bean.*,java.util.*,com.hengdelian.utils.*,java.sql.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加出库</title>
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
	List<String> mtype = new ArrayList<String>();
	DBUtils db = new DBUtils();
	Connection cc = db.getConnection();
	Statement cs = cc.createStatement();
	ResultSet rs = cs.executeQuery("select mtype from modelinfo");
	while (rs.next()) {
		String mtypeq = rs.getString(1);
		mtype.add(mtypeq);
		request.setAttribute("mtype", mtype);
	}

	List<String> cus = new ArrayList<String>();
	DBUtils dbcus = new DBUtils();
	Connection ccus = dbcus.getConnection();
	Statement cscus = ccus.createStatement();
	ResultSet rscus = cscus.executeQuery("select cusname from cusinfo");
	while (rscus.next()) {
		String cusq = rscus.getString(1);
		cus.add(cusq);
		request.setAttribute("cus", cus);
	}
%>
<!--创建添加行函数-->

<script type="text/javascript">
	function addrow() {

		var tables = $('.table');
		var addtr = $("<tr style='text-align: center;'>"
				+ "<td><select name='otype'>"
				+ "<option disabled selected>请选择品名</option>"
				+ "<c:forEach items='${requestScope.mtype }' var='mt'>"
				+ "<option>${mt}</option>"
				+ "</c:forEach>"
				+ "</select></td>"
				+ "<td><input type='text' name='ospec' style='height: 100%; width: 95%; float: left;' placeholder='请输入规格'></td>"
				+ "<td><input type='text' name='onum' style='height: 100%; width: 95%; float: left;' placeholder='请输入数量'></td>"
				+ "<td><input type='text' name='osprice' style='height: 100%; width: 95%; float: left;' placeholder='请输入单价'></td>"
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
		<h1 style="text-align: center;">添加出库</h1>
	</div>
	<div style="height: 30px; width: 100%; margin-bottom: 50px">
		<img alt="" src="../img/zhiyuanfanhui.png" style="margin-left: 15%">
		<a href="../html/warehousing.jsp"><strong>返回出库记录界面</strong></a>
		<button onclick="addrow();"
			class="button button-primary button-pill button-small"
			style="float: right; margin-right: 10%">
			<strong>添加一行</strong>
		</button>
	</div>
	<!-- 列表展示 -->
	<form action="outhousing.jsp" method="post">
		<form action="" method="post">

			<table border="1" style="height: 100%; width: 80%; margin-left: 10%"
				cellspacing="0" cellpadding="1" class="table">
				<tr>
					<th colspan="2" style="border: 0px">日期：<input type="text"
						name="odate" style="height: 100%; width: 50%;" placeholder="请输入日期">
					</th>
					<th colspan="2" style="border: 0px">客户：<select name="ocusname">
							<option disabled selected>请选择客户</option>
							<c:forEach items="${requestScope.cus }" var="cs">
								<option>${cs}</option>
							</c:forEach>
					</select></th>
				</tr>
				<tr>
					<th>品名</th>
					<th>规格</th>
					<th>数量</th>
					<th>单价</th>
				</tr>

				<tr style="text-align: center;">
					<td><select name="otype">
							<option disabled selected>请选择品名</option>
							<c:forEach items="${requestScope.mtype }" var="mt">
								<option>${mt}</option>
							</c:forEach>
					</select></td>
					<td><input type="text" name="ospec"
						style="height: 100%; width: 95%; float: left;" placeholder="请输入规格"></td>
					<td><input type="text" name="onum"
						style="height: 100%; width: 95%; float: left;" placeholder="请输入数量"></td>
					<td><input type="text" name="osprice"
						style="height: 100%; width: 95%; float: left;" placeholder="请输入单价"></td>
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