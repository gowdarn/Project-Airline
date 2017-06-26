<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" type="image/png" sizes="16x16"
	href="/styles/admin/plugins/images/favicon.png">
<title>Admin | Airline</title>
<!-- Bootstrap Core CSS -->
<link href="/styles/admin/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Menu CSS -->
<link
	href="/styles/admin/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css"
	rel="stylesheet">
<!-- toast CSS -->
<link
	href="/styles/admin/plugins/bower_components/toast-master/css/jquery.toast.css"
	rel="stylesheet">
<!-- morris CSS -->
<link href="/styles/admin/plugins/bower_components/morrisjs/morris.css"
	rel="stylesheet">
<!-- chartist CSS -->
<link
	href="/styles/admin/plugins/bower_components/chartist-js/dist/chartist.min.css"
	rel="stylesheet">
<link
	href="/styles/admin/plugins/bower_components/chartist-plugin-tooltip-master/dist/chartist-plugin-tooltip.css"
	rel="stylesheet">
<!-- animation CSS -->
<link href="/styles/admin/css/animate.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="/styles/admin/css/style.css" rel="stylesheet">
<!-- color CSS -->
<link href="/styles/admin/css/colors/default.css" id="theme"
	rel="stylesheet">
<link href="/styles/admin/bootstrap/dist/css/dataTables.bootstrap.css"
	rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    
<![endif]-->
</head>
<body class="fix-header">
	<!-- ============================================================== -->
	<!-- Preloader -->
	<!-- ============================================================== -->
	<div class="preloader">
		<svg class="circular" viewBox="25 25 50 50"> <circle
			class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2"
			stroke-miterlimit="10" /> </svg>
	</div>
	<!-- ============================================================== -->
	<!-- Wrapper -->
	<!-- ============================================================== -->
	<div id="wrapper">
		<!-- ============================================================== -->
		<!-- Topbar header - style you can find in pages.scss -->
		<!-- ============================================================== -->
		<nav class="navbar navbar-default navbar-static-top m-b-0">
		<div class="navbar-header">
			<div class="top-left-part">
				<!-- Logo -->
				<a class="logo" href="/admin"> <!-- Logo icon image, you can use font-icon also -->
					<b> <!--This is dark logo icon--> <img
						src="/styles/admin/plugins/images/admin-logo.png" alt="home"
						class="dark-logo" /> <!--This is light logo icon--> <img
						src="/styles/admin/plugins/images/admin-logo-dark.png" alt="home"
						class="light-logo" />
				</b> <!-- Logo text image you can use text also --> <span
					class="hidden-xs"> <!--This is dark logo text--> <img
						src="/styles/admin/plugins/images/admin-text.png" alt="home"
						class="dark-logo" /> <!--This is light logo text--> <img
						src="/styles/admin/plugins/images/admin-text-dark.png" alt="home"
						class="light-logo" />
				</span>
				</a>
			</div>
			<!-- /Logo -->
			<ul class="nav navbar-top-links navbar-right pull-right">
				<li>
					<form role="search" class="app-search hidden-sm hidden-xs m-r-10">
						<input type="text" placeholder="Search..." class="form-control">
						<a href=""><i class="fa fa-search"></i></a>
					</form>
				</li>
				<li><a class="profile-pic" href="#"> <img
						src="/styles/admin/plugins/images/users/varun.jpg" alt="user-img"
						width="36" class="img-circle"><b class="hidden-xs">Steave</b></a>
				</li>
			</ul>
		</div>
		<!-- /.navbar-header --> <!-- /.navbar-top-links --> <!-- /.navbar-static-side -->
		</nav>
		<!-- End Top Navigation -->
		<!-- ============================================================== -->
		<!-- Left Sidebar - style you can find in sidebar.scss  -->
		<!-- ============================================================== -->
		<div class="navbar-default sidebar" role="navigation">
			<div class="sidebar-nav slimscrollsidebar">
				<div class="sidebar-head">
					<h3>
						<span class="fa-fw open-close"><i class="ti-close ti-menu"></i></span>
						<span class="hide-menu">Navigation</span>
					</h3>
				</div>
				<ul class="nav" id="side-menu">
					<li style="padding: 70px 0 0;"><a
						onclick="onClickDashboard()" class="waves-effect"><i
							class="fa fa-clock-o fa-fw" aria-hidden="true"></i>Dashboard</a></li>
					<li><a onclick="onClickAdminInfo()" class="waves-effect"><i
							class="fa fa-user fa-fw" aria-hidden="true"></i>Profile</a></li>
					<li><a onclick="onClickUser()" class="waves-effect"><i
							class="fa fa-table fa-fw" aria-hidden="true"></i>User</a></li>
				</ul>
			</div>

		</div>
		<!-- ============================================================== -->
		<!-- End Left Sidebar -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Page Content -->
		<!-- ============================================================== -->
		<div id="page-wrapper">
		
			<c:choose>
				<c:when test="${action =='edit' }">
					<div>
						<jsp:include page="editAirline.jsp"></jsp:include>
					</div>
				</c:when>
				
				<c:otherwise>
					<div id="tab-add-flight">
						<jsp:include page="addAirline.jsp"></jsp:include>
					</div>
				</c:otherwise>
			
			
			</c:choose>

			

			



			<footer class="footer text-center"> 2017 &copy; Ample Admin
			brought to you by wrappixel.com </footer>
		</div>
		<!-- ============================================================== -->
		<!-- End Page Content -->
		<!-- ============================================================== -->
	</div>
	<!-- ============================================================== -->
	<!-- End Wrapper -->
	<!-- ============================================================== -->
	<!-- ============================================================== -->
	<!-- All Jquery -->
	<!-- ============================================================== -->
	<script
		src="/styles/admin/plugins/bower_components/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="/styles/admin/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- Menu Plugin JavaScript -->
	<script
		src="/styles/admin/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
	<!--slimscroll JavaScript -->
	<script src="/styles/admin/js/jquery.slimscroll.js"></script>
	<!--Wave Effects -->
	<script src="/styles/admin/js/waves.js"></script>
	<!--Counter js -->
	<script
		src="/styles/admin/plugins/bower_components/waypoints/lib/jquery.waypoints.js"></script>
	<script
		src="/styles/admin/plugins/bower_components/counterup/jquery.counterup.min.js"></script>
	<!-- chartist chart -->
	<script
		src="/styles/admin/plugins/bower_components/chartist-js/dist/chartist.min.js"></script>
	<script
		src="/styles/admin/plugins/bower_components/chartist-plugin-tooltip-master/dist/chartist-plugin-tooltip.min.js"></script>
	<!-- Sparkline chart JavaScript -->
	<script
		src="/styles/admin/plugins/bower_components/jquery-sparkline/jquery.sparkline.min.js"></script>
	<!-- Custom Theme JavaScript -->
	<script src="/styles/admin/js/custom.min.js"></script>
	<script src="/styles/admin/js/dashboard1.js"></script>
	<script
		src="/styles/admin/plugins/bower_components/toast-master/js/jquery.toast.js"></script>
	<script src="/styles/admin/bootstrap/dist/js/jquery.dataTables.min.js"></script>
	<script src="/styles/admin/bootstrap/dist/js/dataTables.bootstrap.js"></script>

	<script type="text/javascript" charset="utf-8">
		$(function() {
			$("#example1").DataTable();
			$("#example3").DataTable();
			$("#example4").DataTable();
			$("#example5").DataTable();
			$('#example2').DataTable({
				"paging" : true,
				"lengthChange" : false,
				"searching" : false,
				"ordering" : true,
				"info" : true,
				"autoWidth" : false
			});
		});

		function onClickDashboard() {
			$("#tab-admin-info").hide();
			$("#tab-user-list").hide();
			$("#tab-admin-home").show();

		}
		
		function onClickAdminInfo() {
			$("#tab-user-list").hide();
			$("#tab-admin-home").hide();
			$("#tab-admin-info").show();
			
		}
		
		function onClickUser() {
			$("#tab-admin-home").hide();
			$("#tab-admin-info").hide();
			$("#tab-user-list").show();
		}
	</script>

</body>
</html>