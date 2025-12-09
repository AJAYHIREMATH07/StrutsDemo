<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Employee List</title>
</head>
<body>
<h2>Employee List</h2>

<c:if test="${empty employeeList}">
    <p>No employees found.</p>
</c:if>

<c:if test="${not empty employeeList}">
    <table border="1" cellpadding="5" cellspacing="0">
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Department</th>
            <th>Salary</th>
        </tr>
        <c:forEach var="emp" items="${employeeList}">
            <tr>
                <td>${emp.id}</td>
                <td>${emp.name}</td>
                <td>${emp.department}</td>
                <td>${emp.salary}</td>
            </tr>
        </c:forEach>
    </table>
</c:if>

<p><a href="index.jsp">Back to Home</a></p>
</body>
</html>
