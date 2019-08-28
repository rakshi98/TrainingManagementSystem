   <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="com.virtusa.training_management.models.Admin_Scheduletraining" %>
    <% ArrayList<Admin_Scheduletraining> results= new ArrayList<Admin_Scheduletraining>();%>
    <% request.getAttribute("results");  %>
<!DOCTYPE html>    
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
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
            <li><a href="Demo.jsp">Apply</a></li>
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

<table>

<%for (int recordcnt=0; recordcnt < results.size(); recordcnt++)
{ 
%>

<tr>
<% Admin_Scheduletraining ad=(Admin_Scheduletraining)results.get(recordcnt); %>
<td><%=ad.getTrainingid() %></td>
</tr>

<% } %>

</table>
</body>
</html>