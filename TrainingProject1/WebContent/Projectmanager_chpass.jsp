<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style>
#a1
{

}
</style>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="Projectmanager_profile.jsp">My Account</a>

  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="Projectmanager_chpass.jsp">Change Password</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Projectmanager_posttraining.jsp">Post Training</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Projectmanager_viewnominees.jsp">View Nomination</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Projectmanager_history.jsp">History</a>
    </li>
<div id="a1">
   <button type="button" class="btn btn-danger" >Logout</button>
</div>
</ul>
</nav>
<br>
<main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header"><strong>Change Password</strong></div>
                        <div class="card-body">
                            <form name="my-form" onsubmit="return validform()" action="Projectmanager_chpass.java" method="post">
                                <div class="form-group row">
                                
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right"><strong>Empid</strong></label>
                                    <div class="col-md-6">
                                        <input type="text" id="full_name" class="form-control" name="empid">
                                    </div>
                                </div>
                                 <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right"><strong>Old password</strong></label>
                                    <div class="col-md-6">
                                        <input type="password" id="full_name" class="form-control" name="opass">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="email_address" class="col-md-4 col-form-label text-md-right"><strong>New Password</strong></label>
                                    <div class="col-md-6">
                                        <input type="password" id="email_address" class="form-control" name="npass">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right"><strong>Confirm Password</strong></label>
                                    <div class="col-md-6">
                                        <input type="password" id="user_name" class="form-control" name="cpass">
                                    </div>
                                </div>

                                

                                <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary">
                                        save
                                        </button>
                                </div>
                               <!--  <h3 text-color:green>$message</h3> -->
                                </form>

                                    
                                    </div>
                                </div>
                            
                        </div>
                    </div>
            </div>
        
    

</main>

</body>
</html>
