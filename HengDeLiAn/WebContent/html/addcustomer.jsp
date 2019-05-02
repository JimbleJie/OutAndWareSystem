<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.hengdelian.bean.*,java.util.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加客户</title>
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
		<h1 style="text-align: center;">添加客户信息</h1>
	</div>
	<div style="height: 30px;width: 100%; margin-bottom: 50px">
		<img alt="" src="../img/zhiyuanfanhui.png" style="margin-left: 35%">
		<a href="../html/customer.jsp"><strong>返回客户界面</strong></a>
	</div>
	<!-- 信息添加 -->
	<form action="customer.jsp" method="post">
		<div
			style="border: solid 1px; height: 380px; width: 30%; margin-left: 35%;">

			<!-- 姓名 -->
			<div
				style="border: solid 1px; height: 50px; width: 80%; margin-left: 10%; margin-top: 8%">
				<img alt="" src="../img/xinming.png" style="margin-left: 5%">
				<span style="line-height: 50px">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名</span>
				<input type="text" name="adcusname" placeholder="请输入客户姓名"
					style="height: 60%; width: 60%; float: right; margin-top: 1%; margin-right: 5%">
			</div>
			<!-- 单位名称 -->
			<div
				style="border: solid 1px; height: 50px; width: 80%; margin-left: 10%; margin-top: 8%">
				<img alt="" src="../img/danwei.png" style="margin-left: 5%"> <span
					style="line-height: 50px">单位名称</span> <input type="text"
					name="adcusunityname" placeholder="请输入客户单位名称"
					style="height: 60%; width: 60%; float: right; margin-top: 1%; margin-right: 5%">
			</div>
			<!-- 手机号 -->
			<div
				style="border: solid 1px; height: 50px; width: 80%; margin-left: 10%; margin-top: 8%">
				<img alt="" src="../img/shoujihao.png" style="margin-left: 5%">
				<span style="line-height: 50px">手&nbsp;&nbsp;机&nbsp;&nbsp;号</span> <input
					type="text" name="adcustel" placeholder="请输入客户手机号"
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