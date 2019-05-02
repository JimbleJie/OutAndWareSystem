<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加型号</title>
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
		<h1 style="text-align: center;">添加型号</h1>
	</div>
	<div style="height: 30px; width: 100%; margin-bottom: 50px">
		<img alt="" src="../img/zhiyuanfanhui.png" style="margin-left: 35%">
		<a href="../html/model.jsp"><strong>返回型号列表界面</strong></a>
	</div>
	<!-- 信息添加 -->
	<form action="model.jsp" method="post">
		<div
			style="border: solid 1px; height: 380px; width: 30%; margin-left: 35%;">

			<!-- 姓名 -->
			<div
				style="border: solid 1px; height: 50px; width: 80%; margin-left: 10%; margin-top: 8%">
				<img alt="" src="../img/zhonglei.png" style="margin-left: 5%">
				<span style="line-height: 50px">种&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;类</span>
				<input type="text" name="mtype" placeholder="请输入种类"
					style="height: 60%; width: 60%; float: right; margin-top: 1%; margin-right: 5%">
			</div>
			<!-- 单位名称 -->
			<div
				style="border: solid 1px; height: 50px; width: 80%; margin-left: 10%; margin-top: 8%">
				<img alt="" src="../img/guige.png" style="margin-left: 5%"> <span
					style="line-height: 50px">规&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格</span>
				<input type="text" name="mspec" placeholder="请输入规格"
					style="height: 60%; width: 60%; float: right; margin-top: 1%; margin-right: 5%">
			</div>
			<!-- 手机号 -->
			<div
				style="border: solid 1px; height: 50px; width: 80%; margin-left: 10%; margin-top: 8%">
				<img alt="" src="../img/zhongliang.png" style="margin-left: 5%">
				<span style="line-height: 50px">理论重量</span> <input type="text"
					name="mweight" placeholder="请输入理论重量"
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