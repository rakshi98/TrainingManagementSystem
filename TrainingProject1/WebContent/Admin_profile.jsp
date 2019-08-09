<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link href="profile.css" rel="stylesheet">
</head>

<body>
<div class="container emp-profile">
<form method="post" action="#">
<div class="row">

<!--box for profile pic-->
<div class="col-md-3">
<div class="profile-img">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS52y5aInsxSm31CvHOFHWujqUx_wWTS9iM6s7BAm21oEN_RiGoog" alt=""/>

<div class="file btn btn-lg btn-primary">
Change Photo
<input type="file" name="file"/>
</div>
</div>
</div>


<!--for name and designation -->
<div class="col-md-6">
<div class="profile-head">
<h4>Virtusa</h4>
<h5 id="ufname">
</h5>
<h6 id="udesignation">
</h6>


<ul class="nav nav-tabs" id="myTab" role="tablist">
<li class="nav-item">
<a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">About</a>
</li>
</ul>
</div>
</div>

<!-- editing profile button -->
<div class="col-md-2">
<a href="#edit" data-toggle="modal" class="profile-edit-btn" name="btnAddMore">EDIT PROFILE</a>
</div>


<!-- user details -->
<div class="row">
<div class="col-md-8">
<div class="tab-content profile-tab" id="myTabContent">
<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">

<div class="row">
<div class="col-md-6">
<label>Employee Id</label>
</div>
<div class="col-md-6">
<p id="eid"></p>
</div>
</div>

<div class="row">
<div class="col-md-6">
<label>Username</label>
</div>
<div class="col-md-6">
<p id="uname"> </p>
</div>
</div>

<div class="row">
<div class="col-md-6">
<label>Name</label>
</div>
<div class="col-md-6">
<p id="uf1name"></p>
</div>
</div>

<div class="row">
<div class="col-md-6">
<label>Email</label>
</div>
<div class="col-md-6">
<p id="uemail"></p>
</div>
</div>

<div class="row">
<div class="col-md-6">
<label>Phone</label>
</div>
<div class="col-md-6">
<p id="uphone"></p>
</div>
</div>
                                        
<div class="row">
<div class="col-md-6">
<label>Profession</label>
</div>
<div class="col-md-6">
<p id="u1designation"></p>
</div>
</div>

</div>                     
</div>
</div>
</div>

</form>
</div>

<div class="modal fade" id="edit" role="dialog">
<div class="modal-dialog modal-lg">
<div class="modal-content">

<div class="model-header">
<h4>Enter Your Details!</h4>
</div>

<form>
<div class="modal-body">

<div class="form-group">
<label class=" control-label col-sm-2" for="eid"><B>Employee-ID</B></label>
<div class="col-sm-10">
<input type="text" id="Eid"  class="form-control" placeholder="Enter ID" name="e-id" required>
</div>
</div>

<div class="form-group">
<label class=" control-label col-sm-2" for="uname"><B>Username</B></label>
<div class="col-sm-10">
<input type="text" id="usrname" class="form-control" placeholder="Enter username" name="u-name" required>
</div>
</div>

<div class="form-group">
<label class=" control-label col-sm-2" for="f_name"><B>Full Name</B></label>
<div class="col-sm-10">
<input type="text" id="usrfname" class="form-control" placeholder="Enter name" name="fname" required>
</div>
</div>

<div class="form-group">
<label class=" control-label col-sm-2" for="email_id"><B>Email-Id</B></label>
<div class="col-sm-10">
<input type="text" id="usremail" class="form-control" placeholder="Enter email" name="emailid" required>
</div>
</div>

<div class="form-group">
<label class=" control-label col-sm-2" for="phone"><B>Phone</B></label>
<div class="col-sm-10">
<input type="number" id="usrphone" class="form-control" placeholder="Enter Contact Number" name="phone" required>
</div>
</div>

<div class="form-group">
<label class=" control-label col-sm-2" for="desc"><B>Designation</B></label>
<div class="col-sm-10">
<input type="text" id="usrdesignation" class="form-control" placeholder="Enter Designation" name="desc" required>
</div>
</div>
</div>

<div class="form-group">
<input type="button" class="btn btn-primary" onclick="showInput();" value="Submit">
</div>
</form>

<div class="modal-footer">
<a class="btn btn-default" data-dismiss="modal">Close</a>
</div>

</div>
</div>
</div>
</div>

<script language="JavaScript">
function showInput() 
{

document.getElementById('eid').innerHTML = 
                document.getElementById("Eid").value;


document.getElementById('uname').innerHTML = 
                document.getElementById("usrname").value;


document.getElementById('ufname').innerHTML = 
                document.getElementById("usrfname").value;

document.getElementById('uf1name').innerHTML = 
                document.getElementById("usrfname").value;


document.getElementById('uemail').innerHTML = 
                document.getElementById("usremail").value;


document.getElementById('uphone').innerHTML = 
                document.getElementById("usrphone").value;


document.getElementById('udesignation').innerHTML = 
                document.getElementById("usrdesignation").value;

document.getElementById('u1designation').innerHTML = 
                document.getElementById("usrdesignation").value;



    return false;
}
</script>

</body>
</html>