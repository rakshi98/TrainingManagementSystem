<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%@ page import="java.sql.DriverManager" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View FeedBack</title>
 
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
body {
  font-family: "Lato", sans-serif;
}


#myInput 
{
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 20px;
  border: 1px solid #ddd;
  margin-bottom: 25px;
}
#myTable 
{
  /* border-collapse: collapse; */
  width: 100%;
   border: 1px solid #ddd;
  
  font-size: 18px;
}
/* #myTable th, #myTable td
{
  text-align: left;
  padding: 12px;
} */
#myTable tr 
{
  border-bottom: 1px;
}
/* #myTable tr.header, #myTable tr:hover 
{
  background-color: #f1f1f1;
} */

.con1{
/* background-color: #e0e0eb; */
 position: fixed; 
 
}


</style>
</head>
<body>
<center>
<h4>Feedback!!</h4>
</center>

<div class="con1">
<%
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","kavi","k123");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from EFeedBack"); 
%>
<%
while(rs.next())
{
%>

<table id="myTable">
<tr class="header">
<th style="width:60; font-weight:bold;">Name</th>
<td>
<%=rs.getString(1)
%>
</td>
<td></td>
<td></td>
</tr>

<tr>
<th style="width:60; font-weight:bold;">Comments</th>
<td>
<%=rs.getString(2)
%>
</td>
<td></td>
<td></td>
</tr>

<tr>
<td></td>
<td></td>
<td>
<h4>posted on: <%= (new java.util.Date()).toLocaleString()%></h4>
</td>
</tr>
<%
}
%>
</table>

<%
}
catch (Exception e){
	e.printStackTrace();
}
%>
</div>
</body>
</html>