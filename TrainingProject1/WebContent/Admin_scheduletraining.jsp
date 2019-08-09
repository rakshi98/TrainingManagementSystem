<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%@ page import="java.sql.DriverManager" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html>
<head>
<style type="text/css">
#orders .ui-priority-secondary {
	background-image: none;
	background: #F5FAFF;
}

#orders .ui-state-hover {
	background-image: none;
	background: #F2FC9C;
	color: black
}

#orders .ui-state-highlight {
	background-image: none;
	background: yellow;
}

table#orders tr {
	opacity: 1
}
</style>



<meta charset="UTF-8">
<title>scheduletraining</title>
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
<!-- Optionally, you can add Slimscroll and FastClick plugins.
          Both of these plugins are recommended to enhance the
          user experience. Slimscroll is required when using the
       
          fixed layout. -->



<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>

<script>
	$(function() {
		$(".datepicker").datepicker();
	});
</script>


</head>


<body class="skin-blue sidebar-mini sidebar-collapse">
	<div class="wrapper">

		<!-- Main Header -->
		<header class="main-header">

			<!-- Logo -->
			<a href="index2.html" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
				<span class="logo-mini"><b>Por</b>tal</span> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>Admin</b>Portal</span>
			</a>

			<!-- Header Navbar -->
			<nav class="navbar navbar-static-top" role="navigation">
				<!-- Sidebar toggle button-->
				<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
					role="button"> <span class="sr-only">Toggle navigation</span>
				</a>

				<!-- Navbar Right Menu -->
				<div class="navbar-custom-menu">
					<!-- Menu Footer-->

					<div class="pull-left">
						<a href="Admin_profile.jsp" class="btn btn-default btn-flat">Profile</a>
					</div>
					<div class="pull-right">
						<a href="index.html" class="btn btn-default btn-flat">Sign
							out</a>
					</div>
			</nav>
		</header>





		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">

			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">

				<!-- Sidebar user panel (optional) -->
				<div class="user-panel">
					<div class="pull-left image">
						<img
							src="https://home.getvera.com/assets/base_defaultv4/img/user_new.png "
							class="img-circle" alt="User Image">
					</div>
					<div class="pull-left info">
						<p>Admin</p>

					</div>
				</div>


				<!-- Sidebar Menu -->
				<ul class="sidebar-menu">

					<!-- Optionally, you can add icons to the links -->
					<li class="active"><a href="Admin_profile.jsp"><i
							class="fa fa-link"></i> <span>Profile</span></a></li>

					<li class="treeview"><a href="#"><i class="fa fa-link"></i>
							<span>Training</span> <i class="fa fa-angle-left pull-right"></i></a>
						<ul class="treeview-menu">
							<li><a href="Admin_scheduletraining">Schedule Training</a></li>
							<li><a href="#">Requested Training</a></li>
							<li><a href="Admin_histroy11.jsp">Histroy</a></li>
						</ul></li>


					<li><a href="Admin_feedback.jsp"><i class="fa fa-link"></i> <span>Give
								Feedback</span></a></li>
					<li><a href="Admin_viewfeedback11.jsp"><i class="fa fa-link"></i> <span>View
								Feedback</span></a></li>
					<li><a href="Admin_viewnomination.jsp"><i class="fa fa-link"></i>
							<span>View Nomination</span></a></li>

				</ul>
				<!-- /.sidebar-menu -->
			</section>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper" style="min-height: 1142px;">
			<!-- Content Header (Page header) -->


			<!-- Main content -->
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-8">
						<div class="card">

							<!-- <div class="card-header">Enter Details</div>
 -->
							<div class="card-body">

								<form onsubmit="return validform()" action="store" method="post">

									<div class="form-group row">
										<label for="trainingtitle"
											class="col-md-4 col-form-label text-md-right">Training
											title</label>
										<div class="col-md-6">
											<input type="text" id="trainingtitle" class="form-control"
												name="trainingtitle">
										</div>
									</div>

									<div class="form-group row">
										<label for="trainingid"
											class="col-md-4 col-form-label text-md-right">Training
											Id</label>
										<div class="col-md-6">
											<input type="text" id="trainingid" class="form-control"
												name="trainingid">
										</div>
									</div>

									<div class="form-group row">
										<label for="domain"
											class="col-md-4 col-form-label text-md-right">Domain</label>
										<div class="col-md-6">
											<input type="text" id="domain" class="form-control"
												name="domain">
										</div>
									</div>


									<div class="form-group row">
										<label for="date"
											class="col-md-4 col-form-label text-md-right">Start
											Date</label>
										<div class="col-md-6">
											<input type="text" id="startdate"
												class="datepicker form-control" name="startdate" />
										</div>
									</div>

									<div class="form-group row">
										<label for="date"
											class="col-md-4 col-form-label text-md-right">End
											Date</label>
										<div class="col-md-6">
											<input type="text" id="enddate"
												class="datepicker form-control" name="enddate" />
										</div>
									</div>


									<div class="form-group row">
										<label for="descripton"
											class="col-md-4 col-form-label text-md-right">Description</label>
										<div class="col-md-6">
											<input type="text" id="descriptionr" class="form-control"
												name="description">
										</div>
									</div>



									<div class="col-md-6 offset-md-4">
										<button type="submit" class="btn btn-primary"
											onclick="showAlert()">Submit</button>
										<button type="submit" class="btn btn-danger"
											onclick="showAlert1()" action="scheduletraining.jsp">Cancel</button>
									</div>
									<!-- <div class="form-group row">
										<div class="col-md-6">
											<script type="text/javascript">
												function showAlert() {
													alert("added sucessfully");
												}

												<script type="text/javascript">
												function showAlert1() {
													alert(" Failed to add Training ");
												}
											</script>
										</div>
									</div> -->


								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
</body>
</html>