<%@page import="com.hengdelian.data.IndexController"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>首页</title>
<link rel="stylesheet"
	href="http://www.bootcss.com/p/buttons/css/buttons.css">
<link
	href="http://cdn.bootcss.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<script src="http://cdn.bootcss.com/prettify/r298/prettify.min.js"></script>
<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>

<link rel="stylesheet" href="../css/index.css">
<style type="text/css">
a {
	text-decoration: none;
}
</style>
<%
	Date d = new Date();
	SimpleDateFormat df = new SimpleDateFormat("yyyy年MM月dd日");
	SimpleDateFormat wf = new SimpleDateFormat("EEEE");
	SimpleDateFormat idf = new SimpleDateFormat("yyyyMMdd");
	String week = wf.format(d);
	String now = df.format(d);
	String shownow = idf.format(d);
	IndexController ic = new IndexController();
	int waretotal = ic.WareTotal(shownow);
	int outtotal = ic.OutTotal(shownow);
%>
</head>
<body>
	<!-- 头部 -->
	<div style="height: 100px; width: 100%; margin-top: 100px">
		<h1 style="text-align: center;">亨得利安出入库管理系统</h1>
	</div>

	<div style="height: 100%; width: 100%;">
		<!-- 基本信息模块 -->
		<div style="height: 100%; width: 33%; float: left">
			<div style="height: 100%; width: 100%; text-align: center">
				<img alt="" src="../img/jibenxinxi.png">
				<h3>基本信息</h3>
				<a href="../html/model.jsp">

					<button type="button"
						class="button button-primary button-pill button-plus"
						style="text-align: center">
						<strong>型号列表</strong>
					</button>
				</a> <br> <br> <a href="../html/costmodel.jsp">

					<button type="button"
						class="button button-primary button-pill button-plus"
						style="text-align: center">
						<strong>成本列表</strong>
					</button>
				</a> <br> <br> <a href="../html/customer.jsp">

					<button type="button"
						class="button button-primary button-pill button-plus"
						style="text-align: center">
						<strong>客&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;户</strong>
					</button>
				</a> <br> <br> <a href="../html/supplier.jsp">

					<button type="button"
						class="button button-primary button-pill button-plus"
						style="text-align: center">
						<strong>供&nbsp;&nbsp;货&nbsp;&nbsp;商</strong>
					</button>
				</a> <br> <br>
			</div>
		</div>

		<!-- 库存管理模块 -->
		<div style="height: 100%; width: 33%; float: left; text-align: center">
			<img alt="" src="../img/kucunguanli.png">
			<h3>库存管理</h3>
			<a href="../html/warehousing.jsp">
				<button type="button"
					class="button button-primary button-pill button-plus"
					style="text-align: center">
					<strong>入库记录</strong>
				</button> <br> <br>
			</a> <a href="../html/outhousing.jsp">

				<button type="button"
					class="button button-primary button-pill button-plus"
					style="text-align: center">
					<strong>出库记录</strong>
				</button>
			</a> <br> <br> <a href="../html/cost.jsp">

				<button type="button"
					class="button button-primary button-pill button-plus"
					style="text-align: center">
					<strong>成本记录</strong>
				</button>
			</a> <br> <br> <a href="../html/reportform.jsp">
				<button type="button"
					class="button button-primary button-pill button-plus"
					style="text-align: center">
					<strong>盘点报表</strong>
				</button>
			</a> <br> <br>
		</div>



		<!-- 实时统计模块 -->
		<div style="height: 100%; width: 33%; float: left; text-align: center">
			<img alt="" src="../img/tongji.png">
			<h3>实时统计</h3>
			<div style="height: 20px; width: 100%; float: left">
				<span><%=now%></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span><%=week%></span>
			</div>

			<!-- 今日入库 -->
			<div>
				<div
					style="height: 60px; width: 40%; background-color: #3399FF; float: left; margin-left: 15%">
					<h3>今日入库</h3>
				</div>
				<div
					style="height: 60px; width: 40%; background-color: #00CCFF; float: left">
					<h3><%=waretotal%></h3>
				</div>
			</div>

			<!-- 今日出库 -->
			<div>
				<div
					style="height: 60px; width: 40%; background-color: #FF9900; float: left; margin-left: 15%">
					<h3>今日出库</h3>
				</div>
				<div
					style="height: 60px; width: 40%; background-color: #FFCC66; float: left">
					<h3><%=outtotal%></h3>
				</div>
			</div>
			
			<!-- 今日收益 -->
			<div>
				<div
					style="height: 60px; width: 40%; background-color: #3399FF; float: left; margin-left: 15%">
					<h3>今日收益</h3>
				</div>
				<div
					style="height: 60px; width: 40%; background-color: #00CCFF; float: left">
					<h3><%=waretotal%></h3>
				</div>
			</div>
		</div>

	</div>
</body>
</html>