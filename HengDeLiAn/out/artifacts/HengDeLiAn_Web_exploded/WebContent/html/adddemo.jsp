<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加</title>
</head>
<body>
	<!-- 标题 -->
	<div style="height: 100px; width: 100%; margin-top: 100px">
		<h1 style="text-align: center;">添加入库</h1>
	</div>
	<div style="height: 30px; width: 100%; margin-bottom: 50px">
		<img alt="" src="../img/zhiyuanfanhui.png" style="margin-left: 15%">
		<a href="../html/warehousing.jsp"><strong>返回入库记录界面</strong></a>
		<button onclick="addrow();"
			class="button button-primary button-pill button-small"
			style="float: right; margin-right: 10%">
			<strong>添加一行</strong>
		</button>
	</div>
	<!-- 二级标题 -->
	<form action="" method="post">

		<table border="1" style="height: 100%; width: 80%; margin-left: 10%"
			cellspacing="0" cellpadding="1" class="table">
			<tr>
				<th style="border: 0px">日期：<input type="text" name="adate">
				</th>
				<th style="border: 0px">客户：<input type="text" name="acus"></th>
			</tr>
			<tr>
				<th>品名</th>
				<th>规格</th>
				<th>数量</th>
				<th>单价</th>
			</tr>

			<tr style="text-align: center;">
				<td><select name="wtype">
						<option disabled selected>请选择品名</option>
						<c:forEach items="${requestScope.mtype }" var="mt">
							<option>${mt}</option>
						</c:forEach>
				</select></td>
				<td><input type="text" name="wspec"
					style="height: 100%; width: 95%; float: left;" placeholder="请输入规格"></td>
				<td><input type="text" name="wnum"
					style="height: 100%; width: 95%; float: left;" placeholder="请输入数量"></td>
				<td><input type="text" name="wsprice"
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