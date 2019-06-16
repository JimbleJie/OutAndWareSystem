<%@page import="com.owsys.data.*, com.owsys.controller.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<!DOCTYPE HTML>
<html>
<head>
<title>首页</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript">
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 




</script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />

<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />

<!-- font-awesome icons CSS -->
<link href="css/font-awesome.css" rel="stylesheet">
<!-- //font-awesome icons CSS-->

<!-- side nav css file -->
<link href='css/SidebarNav.min.css' media='all' rel='stylesheet'
	type='text/css' />
<!-- //side nav css file -->

<!-- js-->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/modernizr.custom.js"></script>

<!--webfonts-->
<link
	href="http://fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext"
	rel="stylesheet">
<!--//webfonts-->

<!-- chart -->
<script src="js/Chart.js"></script>
<!-- //chart -->

<!-- Metis Menu -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
<link href="css/custom.css" rel="stylesheet">
<!--//Metis Menu -->
<style>
#chartdiv {
	width: 100%;
	height: 295px;
}
</style>
<!--pie-chart -->
<!-- index page sales reviews visitors pie chart -->
<script src="js/pie-chart.js" type="text/javascript"></script>
<link href="css/owl.carousel.css" rel="stylesheet">
<script src="js/owl.carousel.js"></script>
<script>
	$(document).ready(function() {
		$("#owl-demo").owlCarousel({
			items : 3,
			lazyLoad : true,
			autoPlay : true,
			pagination : true,
			nav : true,
		});
	});
</script>
<!-- //requried-jsfiles-for owl -->
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("UTF-8");
	Object loginemail = session.getAttribute("loginemail");
	IndexData idx = new IndexData();
	Date d = new Date();
	SimpleDateFormat idf = new SimpleDateFormat("yyyyMMdd");
	String shownow = idf.format(d);
	int OutTotal = idx.OutTotal(shownow);
	int WareTotal = idx.WareTotal(shownow);
	int OutTotalNums = idx.OutTotalNums(shownow);
	String company = idx.GetCompany(loginemail);
%>

</head>
<body class="cbp-spmenu-push">
	<div class="main-content">
		<div class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left"
			id="cbp-spmenu-s1">
			<!--left-fixed -navigation-->
			<aside class="sidebar-left">
				<nav class="navbar navbar-inverse">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse" data-target=".collapse"
							aria-expanded="false">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<h1>
							<a class="navbar-brand" href="index.jsp"><span
								class="fa fa-area-chart"></span> 出入库系统<span
								class="dashboard_text">OutAndWare System</span></a>
						</h1>
					</div>
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="sidebar-menu">
							<li class="header">主菜单</li>
							<li class="treeview"><a href="#"> <i
									class="fa fa-laptop"></i> <span>基本信息</span> <i
									class="fa fa-angle-left pull-right"></i>
							</a>
								<ul class="treeview-menu">
									<li><a href="model.jsp?company=<%=company%>&email=<%=loginemail%>"><i class="fa fa-angle-right"></i>
											型号列表</a></li>
									<li><a href="media.html"><i class="fa fa-angle-right"></i>
											成本列表</a></li>
									<li><a href="customer.jsp?company=<%=company%>&email=<%=loginemail%>"><i class="fa fa-angle-right"></i>
											客户</a></li>
									<li><a href="supplier.jsp?company=<%=company%>&email=<%=loginemail%>"><i class="fa fa-angle-right"></i>
											供货商</a></li>
								</ul></li>
							<li class="treeview"><a href="#"> <i
									class="fa fa-laptop"></i> <span>成本记录</span>
							</a></li>
							<li class="treeview"><a href="charts.html"> <i
									class="fa fa-pie-chart"></i> <span>盘点报表</span>
							</a></li>
							<li class="treeview"><a href="warehousing.jsp?company=<%=company%>&email=<%=loginemail%>"> <i class="fa fa-edit"></i>
									<span>入库记录</span>
							</a></li>
							<li class="treeview"><a href="outhousing.jsp?company=<%=company%>&email=<%=loginemail%>"> <i class="fa fa-edit"></i>
									<span>出库记录</span>
							</a></li>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</nav>
			</aside>
		</div>
		<!--left-fixed -navigation-->

		<!-- header-starts -->
		<div class="sticky-header header-section ">
			<div class="header-right">
				<div class="profile_details">
					<ul>
						<li class="dropdown profile_details_drop"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"
							aria-expanded="false">
								<div class="profile_img">
									<div class="user-name">
										<p><%=company%></p>
										<span><%=loginemail%></span>
									</div>
									<i class="fa fa-angle-down lnr"></i> <i
										class="fa fa-angle-up lnr"></i>
									<div class="clearfix"></div>
								</div>
						</a>
							<ul class="dropdown-menu drp-mnu">
								<li><a href="#"><i class="fa fa-cog"></i>设置</a></li>
								<li><a href="#"><i class="fa fa-user"></i>我的账户</a></li>
								<li><a href="#"><i class="fa fa-sign-out"></i>登出</a></li>
							</ul></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
		<!-- //header-ends -->
		<!-- main content start-->
		<div id="page-wrapper">
			<div class="main-page">
				<div class="col_3">
					<div class="col-md-3 widget widget1">
						<div class="r3_counter_box">
							<i class="pull-left fa fa-dollar icon-rounded"></i>
							<div class="stats">
								<h5>
									<strong>￥<%=OutTotal%></strong>
								</h5>
								<span>总收入</span>
							</div>
						</div>
					</div>
					<div class="col-md-3 widget widget1">
						<div class="r3_counter_box">
							<i class="pull-left fa fa-laptop user1 icon-rounded"></i>
							<div class="stats">
								<h5>
									<strong>￥<%=WareTotal%></strong>
								</h5>
								<span>购货金额</span>
							</div>
						</div>
					</div>
					<div class="col-md-3 widget widget1">
						<div class="r3_counter_box">
							<i class="pull-left fa fa-money user2 icon-rounded"></i>
							<div class="stats">
								<h5>
									<strong>￥<%=0%></strong>
								</h5>
								<span>利润</span>
							</div>
						</div>
					</div>
					<div class="col-md-3 widget widget1">
						<div class="r3_counter_box">
							<i class="pull-left fa fa-pie-chart dollar1 icon-rounded"></i>
							<div class="stats">
								<h5>
									<strong>￥<%=OutTotal%></strong>
								</h5>
								<span>卖货金额</span>
							</div>
						</div>
					</div>
					<div class="col-md-3 widget">
						<div class="r3_counter_box">
							<i class="pull-left fa fa-users dollar2 icon-rounded"></i>
							<div class="stats">
								<h5>
									<strong><%=OutTotalNums%></strong>
								</h5>
								<span>出单数</span>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>

				<!-- for amcharts js -->
				<script src="js/amcharts.js"></script>
				<script src="js/serial.js"></script>
				<script src="js/export.min.js"></script>
				<link rel="stylesheet" href="css/export.css" type="text/css"
					media="all" />
				<script src="js/light.js"></script>
				<!-- for amcharts js -->
				<script src="js/index1.js"></script>

			</div>
		</div>
	</div>
	<!-- side nav js -->
	<script src='js/SidebarNav.min.js' type='text/javascript'></script>
	<script>
		$('.sidebar-menu').SidebarNav()
	</script>
	<!-- //side nav js -->
	<script src="js/Chart.bundle.js"></script>
	<script src="js/utils.js"></script>
	<!-- for toggle left push menu script -->
	<script src="js/classie.js"></script>
	<script>
		var menuLeft = document.getElementById('cbp-spmenu-s1'), showLeftPush = document
				.getElementById('showLeftPush'), body = document.body;

		showLeftPush.onclick = function() {
			classie.toggle(this, 'active');
			classie.toggle(body, 'cbp-spmenu-push-toright');
			classie.toggle(menuLeft, 'cbp-spmenu-open');
			disableOther('showLeftPush');
		};

		function disableOther(button) {
			if (button !== 'showLeftPush') {
				classie.toggle(showLeftPush, 'disabled');
			}
		}
	</script>
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<script src='js/SidebarNav.min.js' type='text/javascript'></script>
	<script src="js/SimpleChart.js"></script>
	<script src="js/bootstrap.js">
		
	</script>
</body>
</html>