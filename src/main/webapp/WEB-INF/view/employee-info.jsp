<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Aleksandr
  Date: 26.07.2023
  Time: 23:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<br>
<br>
<h2>Employee info</h2>
<br>
<br>
<form:form action="saveEmployee" modelAttribute="employee">
    <br>
    <br>
    Name <form:input path="name"/>
    <br>
    <br>
    Surname <form:input path="surname"/>
    <br>
    <br>
    Department <form:input path="department"/>
    <br>
    <br>
    Salary <form:input path="salary"/>
<br>
<br>
<br>
    <input type="submit" value="Ok">
</form:form>
</body>
<head>
    <title>New Employee</title>
</head>
</html>
