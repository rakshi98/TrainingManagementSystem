<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.DriverManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>histroy</title>
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
<style>
* {
	box-sizing: border-box;
}

#myInput {
	width: 100%;
	font-size: 16px;
	padding: 12px 20px 12px 20px;
	border: 1px solid #ddd;
	margin-bottom: 25px;
}

#myTable {
	border-collapse: collapse;
	width: 100%;
	border: 1px solid #ddd;
	font-size: 18px;
}

#myTable th, #myTable td {
	text-align: left;
	padding: 12px;
}

#myTable tr {
	border-bottom: 1px solid #ddd;
}

#myTable tr.header, #myTable tr:hover {
	background-color: #f1f1f1;
}
</style>


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
				<a href="Admin_profile" class="btn btn-default btn-flat">Profile</a>
			</div>
			<div class="pull-right">
				<a href="index.html" class="btn btn-default btn-flat">Sign out</a>
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
			<li class="header">HEADER</li>
			<!-- Optionally, you can add icons to the links -->
			<li class="active"><a href="Admin_profile.jsp"><i class="fa fa-link"></i> <span>Profile</span></a></li>

			<li class="treeview"><a href="#"><i class="fa fa-link"></i>
					<span>Training</span> <i class="fa fa-angle-left pull-right"></i></a>
				<ul class="treeview-menu">
					<li><a href="Admin_scheduletraining.jsp">Schedule Training</a></li>
					<li><a href="#">Requested Training</a></li>
					<li><a href="Admin_histroy11.jsp">Histroy</a></li>
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
			<form>
				<input type="text" id="myInput" onkeyup="myFunction()"
					placeholder="Search for names.." title="Type in a name">

				<%
					try {
						Class.forName("oracle.jdbc.driver.OracleDriver");
						Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "rakshi",
								"rakshi98");
						Statement st = con.createStatement();
						ResultSet rs = st.executeQuery("select *from scheduletraining");
				%>
				<div class="card">
					<table id="myTable">
						<tr class="header">
							<th style="width: 60; font-weight: bold;">TrainingName</th>
							<th style="width: 40; font-weight: bold;">TrainingId</th>
							<th style="width: 40; font-weight: bold;">Domain</th>
							<th style="width: 40; font-weight: bold;">Start Date</th>
							<th style="width: 40; font-weight: bold;">End Date</th>
							<th style="width: 40; font-weight: bold;">Description</th>
						</tr>
						<%
							while (rs.next()) {
						%>
						<tr>

							<td><%=rs.getString(1)%></td>

							<td><%=rs.getString(2)%></td>

							<td><%=rs.getString(3)%></td>
							<td><%=rs.getString(4)%></td>

							<td><%=rs.getString(5)%></td>
							<td><%=rs.getString(6)%></td>

						</tr>

						<%
							}
						%>
						</tbody>
					</table>
				</div>
				<%
					} catch (Exception e) {
						e.printStackTrace();
					}
				%>
			</form>

			<script>
				function myFunction() {
					var input, filter, table, tr, td, i, txtValue;
					input = document.getElementById("myInput");
					filter = input.value.toUpperCase();
					table = document.getElementById("myTable");
					tr = table.getElementsByTagName("tr");
					for (i = 0; i < tr.length; i++) {
						td = tr[i].getElementsByTagName("td")[0];
						if (td) {
							txtValue = td.textContent || td.innerText;
							if (txtValue.toUpperCase().indexOf(filter) > -1) {
								tr[i].style.display = "";
							} else {
								tr[i].style.display = "none";
							}
						}
					}
				}

				</body></html>m
			