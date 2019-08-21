<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Home Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  
<link href="Emp_profile.css" rel="stylesheet">
<style>

.edit_modal
{
height: 350px;
width: 100%;
background-color: powderblue;
padding: 10px;
}

.edit_modal1
{
height: 50px;
width: 100%;
border: 3px solid lightblue;
}

input[type=text], input[type=number], select, textarea 
{
  width: 50%; /* Full width */
  padding: 10px; /* Some padding */  
  border: 1px solid #ccc; /* Gray border */
  border-radius: 2px; /* Rounded borders */
  box-sizing: border-box; /* Make sure that padding and width stays in place */
  margin-top: 4px; /* Add a top margin */
  margin-bottom: 14px; /* Bottom margin */
 }
 
 input[type=submit], input[type="cancel"]:hover 
 {
  background-color: #45a049;
}
 
</style>
</head>
<body bgcolor="blue">
<%
HttpSession session1=request.getSession(false);  
String empid=(String)session1.getAttribute("empid");
String empusername=(String)session1.getAttribute("empusername");
String empemailid=(String)session1.getAttribute("empemailid");
int empphone=(int)session1.getAttribute("empphone"); 
String empdesignation=(String)session1.getAttribute("empdesignation"); 
%>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
     <!-- <a href="#" data-toggle="modal" class="profile-edit-btn">Virtusa</a> -->
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li class="active"><a href="#">Home</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Training<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="Emp_ApplyTraining.jsp">Apply</a></li>
            <li><a href="Emp_PostTraining.jsp">Post</a></li>
          </ul>
        </li>
        <li><a href="Emp_Notification.jsp">Notification</a></li>
        <li><a href="Emp_History.jsp">History</a></li>
		<li><a href="Emp_GiveFeedback.jsp">feedback</a></li>
      </ul>
      
    </div>
  </div>
</nav>

<div class="container emp-profile">
<div class="row">

<!--box for profile pic-->
<div class="col-md-3">
<div class="profile-img">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS52y5aInsxSm31CvHOFHWujqUx_wWTS9iM6s7BAm21oEN_RiGoog" alt=""/>

<div>
Change Photo
<input type="file" name="file"/>
</div>
</div>
</div>


<!--for name and designation -->
<div class="col-md-6">
<div class="profile-head">
<h4>Virtusa</h4>
<h5><% %></h5>
<h6><%=empdesignation%></h6>


<ul class="nav nav-tabs" id="myTab" role="tablist">
<li class="nav-item">
<a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">About</a>
</li>
</ul>
</div>
</div>

<!-- editing profile button -->
<div class="col-md-2">
<a href="#edit" data-toggle="modal" class="profile-edit-btn">EDIT PROFILE</a>
</div>


<!-- user details -->
<div class="row">
<div class="col-md-8">
<div class="tab-content profile-tab" id="myTabContent">
<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">

<br>
<br>
<div class="row">
<div class="col-md-6">
<label>Employee Id</label>
</div>
<div class="col-md-6">
<p id="eid"><%=empid%></p>
</div>
</div>

<div class="row">
<div class="col-md-6">
<label>Username</label>
</div>
<div class="col-md-6">
<p id="uname"><%=empusername %> </p>
</div>
</div>

<div class="row">
<div class="col-md-6">
<label>Name</label>
</div>
<div class="col-md-6">
<p id="uf1name"><%%></p>
</div>
</div>

<div class="row">
<div class="col-md-6">
<label>Email</label>
</div>
<div class="col-md-6">
<p id="uemail"><%=empemailid %></p>
</div>
</div>

<div class="row">
<div class="col-md-6">
<label>Phone</label>
</div>
<div class="col-md-6">
<p id="uphone"><%=empphone%></p>
</div>
</div>
                                        
<div class="row">
<div class="col-md-6">
<label>Profession</label>
</div>
<div class="col-md-6">
<p><%=empdesignation %></p>
</div>
</div>

</div>                     
</div>
</div>
</div>
</div>

</div>


<div class="modal fade" id="edit" role="dialog">
<div class="modal-dialog modal-lg">
<div class="modal-content">

<div class="model-header">
<div class="edit_modal1">
<h4>Enter Your Details!</h4>
</div>
</div>

<div class="modal-body">
<form action="editprofile" method="post">

<div class="edit_modal">

<label><B>Employee-ID</B></label>  &nbsp; &nbsp; &nbsp; &nbsp;
<input type="text" id="Eid" placeholder="Enter EID" name="e-id" required><br>

<label><B>Username</B></label> &nbsp; &nbsp; &nbsp; &nbsp;
<input type="text" id="usrname" placeholder="Enter username" name="u-name" required><br>

<label><B>Email-Id</B></label> &nbsp; &nbsp; &nbsp; &nbsp;
<input type="text" id="usremail" placeholder="Enter email" name="emailid" required><br>

<label><B>Phone</B></label> &nbsp; &nbsp; &nbsp; &nbsp;
<input type="number" id="usrphone" placeholder="Enter Contact Number" name="phone" required><br>

<label><B>Designation</B></label> &nbsp; &nbsp; &nbsp; &nbsp;
<input type="text" id="usrdesignation" placeholder="Enter Designation" name="desc" required><br>

<div class="modal-footer">
<input type="submit" class="btn btn-primary" value="Submit">
<a class="btn btn-default" data-dismiss="modal">Close</a>
</div>

</div>
</form>
</div>

</div>
</div>
</div>
</body>
</html>