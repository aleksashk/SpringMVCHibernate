<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Aleksandr
  Date: 26.07.2023
  Time: 22:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List of All Employees</title>
</head>
<body>
<table>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>
        <th>Operations</th>
    </tr>

    <c:forEach var="emp" items="${allEmps}">

        <c:url var="updateButton" value="/updateInfo">

            <c:param name="empId" value="${emp.id}"/>

        </c:url>

        <c:url var="deleteButton" value="/deleteEmployee">

            <c:param name="empId" value="${emp.id}"/>

        </c:url>

        <tr>
            <td>${emp.name}</td>
            <td>${emp.surname}</td>
            <td>${emp.department}</td>
            <td>${emp.salary}</td>
            <td>
                <input type="button" value="Update"
                       onClick="window.location.href='${updateButton}'"/>

                <input type="button" value="Delete"
                       onClick="window.location.href='${deleteButton}'"/>
            </td>
        </tr>

    </c:forEach>

</table>
<br>
<br>
<input type="button" value="Add"
       onclick="window.location.href='addNewEmployee'">
</body>
</html>
