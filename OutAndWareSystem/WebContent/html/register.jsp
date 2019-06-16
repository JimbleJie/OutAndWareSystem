<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>注册</title>
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
<!-- //font-awesome icons CSS -->

<!-- side nav css file -->
<link href='css/SidebarNav.min.css' media='all' rel='stylesheet'
	type='text/css' />
<!-- side nav css file -->

<!-- js-->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/modernizr.custom.js"></script>

<!--webfonts-->
<link
	href="http://fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext"
	rel="stylesheet">
<!--//webfonts-->

<!-- Metis Menu -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
<link href="css/custom.css" rel="stylesheet">
<!--//Metis Menu -->

</head>
<body class="cbp-spmenu-push">
	<div class="main-content">
		<div class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left"
			id="cbp-spmenu-s1">
			<!--left-fixed -navigation-->
			<aside class="sidebar-left">
				<nav class="navbar navbar-inverse">
					<div class="navbar-header">
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
									<li><a href="model.jsp"><i class="fa fa-angle-right"></i>
											型号列表</a></li>
									<li><a href="media.html"><i class="fa fa-angle-right"></i>
											成本列表</a></li>
									<li><a href="media.html"><i class="fa fa-angle-right"></i>
											客户</a></li>
									<li><a href="media.html"><i class="fa fa-angle-right"></i>
											供货商</a></li>
								</ul></li>
							<li class="treeview"><a href="#"> <i
									class="fa fa-laptop"></i> <span>成本记录</span>
							</a></li>
							<li class="treeview"><a href="charts.html"> <i
									class="fa fa-pie-chart"></i> <span>盘点报表</span>
							</a></li>
							<li class="treeview"><a href="#"> <i class="fa fa-edit"></i>
									<span>入库记录</span>
							</a></li>
							<li class="treeview"><a href="#"> <i class="fa fa-edit"></i>
									<span>出库记录</span>
							</a></li>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</nav>
			</aside>
		</div>
		<!--left-fixed -navigation-->

		<!-- main content start-->
		<div id="page-wrapper">
			<div class="main-page signup-page">
				<h2 class="title1">注册</h2>
				<div class="sign-up-row widget-shadow">
					<h5>个人信息 :</h5>
					<form action="registe_success.jsp" method="post">
						<div class="sign-u">
							<input type="text" placeholder="请输入姓名" name="rusername"
								required="">
							<div class="clearfix"></div>
						</div>
						<div class="sign-u">
							<input type="text" placeholder="请输入公司名称" required="" name="rcompany">
							<div class="clearfix"></div>
						</div>
						<div class="sign-u">
							<input type="email" placeholder="请输入email地址" required="" name="remail">
							<div class="clearfix"></div>
						</div>
						<div class="sign-u">
							<input type="text" placeholder="请输入手机号" required="" name="rtel">
							<div class="clearfix"></div>
						</div>
						<h6>登录信息 :</h6>
						<div class="sign-u">
							<input type="password" placeholder="请输入密码" required="" name="rpassword">
							<div class="clearfix"></div>
						</div>
						<div class="clearfix"></div>
						<div class="sub_home">
							<input type="submit" value="注册">
							<div class="clearfix"></div>
						</div>
						<div class="registration">
							已经注册过了。 <a class="" href="login.jsp"> 登录 </a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- side nav js -->
	<script src='js/SidebarNav.min.js' type='text/javascript'></script>
	<script>
		$('.sidebar-menu').SidebarNav()
	</script>
	<!-- //side nav js -->

	<!-- Classie -->
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
	<!-- //Classie -->
	<!-- //for toggle left push menu script -->

	<!--scrolling js-->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!--//scrolling js-->

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.js">
		
	</script>

</body>
</html>