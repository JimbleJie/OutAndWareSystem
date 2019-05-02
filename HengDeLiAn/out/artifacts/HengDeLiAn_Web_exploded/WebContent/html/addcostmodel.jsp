<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加成本类型</title>
<link rel="stylesheet"
	href="http://www.bootcss.com/p/buttons/css/buttons.css">
<style type="text/css">
a {
	text-decoration: none;
}
</style>
</head>
<body>
	<!-- 标题 -->
	<div style="height: 100px; width: 100%; margin-top: 100px">
		<h1 style="text-align: center;">添加成本类型</h1>
	</div>
	<div style="height: 30px; width: 100%; margin-bottom: 50px">
		<img alt="" src="../img/zhiyuanfanhui.png" style="margin-left: 35%">
		<a href="../html/model.jsp"><strong>返回成本列表界面</strong></a>
	</div>
	<!-- 信息添加 -->
	<form action="costmodel.jsp" method="post">
		<div
			style="border: solid 1px; height: 380px; width: 30%; margin-left: 35%;">

			<!-- 种类 -->
			<div
				style="border: solid 1px; height: 50px; width: 80%; margin-left: 10%; margin-top: 8%">
				<img alt="" src="../img/zhonglei.png" style="margin-left: 5%">
				<span style="line-height: 50px">类&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;型</span>
				<input type="text" name="ctype" placeholder="请输入成本类型"
					style="height: 60%; width: 60%; float: right; margin-top: 1%; margin-right: 5%">
			</div>
			
			<!-- 提交按钮 -->
			<input type="submit"
				class="button button-primary button-pill button-small"
				style="height: 50px; width: 80%; margin-left: 10%; margin-top: 8%; font-size: 20px;"
				value="添加">
		</div>
	</form>
</body>
</html>