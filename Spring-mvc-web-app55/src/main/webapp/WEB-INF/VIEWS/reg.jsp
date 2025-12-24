<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
</head>
<body>
<center>
<h1 style="color: blue;">Registration Page</h1>
<br>
<br>
<br>
<hr style="height: 8px; color: red;">
<br>
<%
String msg = (String) request.getAttribute("msg");
if (msg != null) {
    out.println(msg);
}
%>
<br>
<form:form action="adduser" method="post" modelAttribute="userobj">
    <br>
    Username: <form:input type="text" path="username" /><br><br>
    Password: <form:input type="password" path="password" /><br><br>
    <input type="submit" value="Register here">
</form:form>

</center>
</body>
</html>
