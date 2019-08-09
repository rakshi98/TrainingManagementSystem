<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Admin page</title>
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.4 -->
<link
	href="https://phpdatagrid.com/laravel5-bootstrap3/public/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<!-- Font Awesome Icons -->
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<!-- Ionicons -->
<link
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css"
	rel="stylesheet" type="text/css">
<!-- Theme style -->
<link
	href="https://phpdatagrid.com/laravel5-bootstrap3/public/dist/css/AdminLTE.min.css"
	rel="stylesheet" type="text/css">

<link
	href="https://phpdatagrid.com/laravel5-bootstrap3/public/dist/css/skins/skin-blue.min.css"
	rel="stylesheet" type="text/css">


<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>


<!-- REQUIRED JS SCRIPTS -->
<!-- jQuery 2.1.4 -->
<script
	src="https://phpdatagrid.com/laravel5-bootstrap3/public/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<!-- Bootstrap 3.3.2 JS -->
<script
	src="https://phpdatagrid.com/laravel5-bootstrap3/public/bootstrap/js/bootstrap.min.js"
	type="text/javascript"></script>
<!-- AdminLTE App -->
<script
	src="https://phpdatagrid.com/laravel5-bootstrap3/public/dist/js/app.min.js"
	type="text/javascript"></script>
</head>


<body class="skin-blue sidebar-mini sidebar-collapse">
	<div class="wrapper">

		<!-- Main Header -->
		<header class="main-header"> <!-- Logo --> <a
			href="index2.html" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
			<span class="logo-mini"><b>Por</b>Tal</span> <!-- logo for regular state and mobile devices -->
			<span class="logo-lg"><b>Admin</b>PorTal</span>
		</a> <!-- Header Navbar --> <nav class="navbar navbar-static-top"
			role="navigation"> <!-- Sidebar toggle button--> <a href="#"
			class="sidebar-toggle" data-toggle="offcanvas" role="button"> <span
			class="sr-only">Toggle navigation</span>
		</a> <!-- Navbar Right Menu -->
		<div class="navbar-custom-menu">
			<!-- Menu Footer-->

			<div class="pull-left">
				<a href="#" class="btn btn-default btn-flat">Profile</a>
			</div>
			<div class="pull-right">
				<a href="#" class="btn btn-default btn-flat">Sign out</a>
			</div>
		</nav> </header>





		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar"> <!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar"> <!-- Sidebar user panel (optional) -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src="https://image.flaticon.com/icons/png/512/17/17004.png "
					class="img-circle" alt="User Image">
			</div>
			<div class="pull-left info">
				<p>Admin</p>

			</div>
		</div>

		<!-- Sidebar Menu -->
		<ul class="sidebar-menu">
			<!--             <li class="header">HEADER</li> -->
			<!-- Optionally, you can add icons to the links -->
			<li class="active"><a href="Admin_profile.jsp"><i class="fa fa-link"></i> <span>Profile</span></a></li>

			<li class="treeview"><a href="#"><i class="fa fa-link"></i>
					<span>Training</span> <i class="fa fa-angle-left pull-right"></i></a>
				<ul class="treeview-menu">
					<li><a href="Admin_scheduletraining.jsp">Schedule Training</a></li>
					<li><a href="">Requested Training</a></li>
					<li><a href="Admin_histroy.jsp">Histroy</a></li>
				</ul></li>


			<li><a href="Admin_feedback.jsp"><i class="fa fa-link"></i> <span>Feedback</span></a></li>
			<li><a href="Admin_viewfeedback11.jsp"><i class="fa fa-link"></i> <span>ViewFeedback</span>
					<li><a href="Admin_viewnominations.jsp"><i class="fa fa-link"></i>
							<span>View Nomination</span></a></li>
		</ul>
		<!-- /.sidebar-menu --> </section> <!-- /.sidebar --> </aside>





		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper" style="min-height: 1142px;">
			<!-- Content Header (Page header) -->


			<!-- Main content -->
</body>
</html>