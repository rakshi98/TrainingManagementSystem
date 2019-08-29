   <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="com.virtusa.training_management.models.Admin_Scheduletraining" %>
    <% ArrayList results=(ArrayList)request.getAttribute("results");  %>
<!DOCTYPE html>    
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>


<table>
<tr>
<th>id</th>
</tr>
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