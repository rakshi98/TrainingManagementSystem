<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<table>
    <c:forEach items="${results}" var="product">
        <tr>
            <td>${product.id}</td>
            <td><c:out value="${product.name}" /></td>
            <td><c:out value="${product.dom}" /></td>
             <td><c:out value="${product.sdate}" /></td>
              <td><c:out value="${product.edate}" /></td>
             <td><c:out value="${product.venue}" /></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>