<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加供货商</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<link rel="stylesheet"
	href="http://www.bootcss.com/p/buttons/css/buttons.css">
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />

<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />

<!-- font-awesome icons CSS-->
<link href="css/font-awesome.css" rel="stylesheet">
<!-- //font-awesome icons CSS-->

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
<!--创建添加行函数-->

<script type="text/javascript">
	function addrow() {

		var tables = $('.table');
		var addtr = $("<tr style='text-align: center;'>"
				+ "<td><input type='text' name='supname'style='height: 100%; width: 95%; float: left;'placeholder='请输入供货商姓名'></td>"
				+ "<td><input type='text' name='suptel'style='height: 100%; width: 95%; float: left;'placeholder='请输入供货商电话'></td>"
				+ "<td><input type='text' name='supunityname'style='height: 100%; width: 95%; float: left;'placeholder='请输入供货商单位'></td>"
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
<!--//Metis Menu -->
<%
	String company = request.getParameter("company");
	String loginemail = request.getParameter("email");
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
		<div class="sticky-header header-section "></div>
		<div id="page-wrapper">
			<button onclick="addrow();"
				class="button button-primary button-pill button-small"
				style="float: right; margin-right: 10%">
				<strong>添加一行</strong>
			</button>
			<form action="supplier.jsp?company=<%=company%>&email=<%=loginemail%>"
				method="post">
				<table border="1"
					style="height: 100%; width: 80%; margin-left: 10%; margin-top: 5%"
					cellspacing="0" cellpadding="1" class="table">
					<tr>
						<th>供货商姓名</th>
						<th>供货商电话</th>
						<th>供货商单位</th>
					</tr>

					<tr style="text-align: center;">
						<td><input type="text" name="supname"
							style="height: 100%; width: 95%; float: left;"
							placeholder="请输入供货商姓名"></td>
						<td><input type="text" name="suptel"
							style="height: 100%; width: 95%; float: left;"
							placeholder="请输入供货商电话"></td>
						<td><input type="text" name="supunityname"
							style="height: 100%; width: 95%; float: left;"
							placeholder="请输入供货商单位"></td>
					</tr>
				</table>
				<!-- 提交按钮 -->
				<input type="submit"
					class="button button-primary button-pill button-small"
					style="height: 50px; width: 80%; margin-left: 10%; margin-top: 8%; font-size: 20px;"
					value="添加">
			</form>
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
	<!-- //Bootstrap Core JavaScript -->

</body>
</html>