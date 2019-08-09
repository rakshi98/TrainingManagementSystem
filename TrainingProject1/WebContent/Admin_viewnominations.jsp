
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%@ page import="java.sql.DriverManager" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
.close{
color:#aaa;
float:right;
font-size:28px;
font-weight:bold;
}
#c1{
align:center;
padding:35px 50px 25px 250px;
}


</style>
</head>
<body>

<%
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","rakshi","rakshi98");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from nomination"); 

while(rs.next())
{

%>

<div class="card">
<div class="container-fluid" id="c1">
<div class="row">	
	<div class="col-md-9">
	<div class="panel panel-primary">
	<div class="panel-heading"><!--   <h4 >Nominations</h4><span class="close">&times;</span></div>
 -->	<div class="panel-body">
	<form method="post" action="Delete">
	<table>
	
	<tr>
	<th>TrainingId</th>
	<td>
	<%=rs.getString(1)
	%></td>
	</tr>
	
	<tr>
	<th>TrainingName</th>
	<td><%=rs.getString(2)
	%></td>
	</tr>
	
	<tr>
	<th>EID</th>
	<td><%=rs.getString(3)
	%></td>
	</tr>
	
	
	<tr>
	<th>Name</th>
	<td><%=rs.getString(5)
	%></td>
	</tr>

	<tr>
	<th>Contact number</th>
	<td><%=rs.getString(4)
	%></td>
	</tr>
	
	
	</table>
	
	</form>

	</div>
	
	</div>
	</div>
	</div>
</div>
</div>
</div>

<%
	}%>

<%
}catch(Exception e){
	out.println(e);
}

%>
<!-- <script>

var span=document.getElementsByClassName("close")[0];
var ele=document.getElementsByClassName("row");

	span.onclick=function(){
		ele.parentNode.removeChild(ele);
	}
</script> -->
</body>
</html>
