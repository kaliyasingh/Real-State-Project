<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center> 
 <h2 style="color: blue;">Welcome </h2><br><br><br>
 <hr style="size: 8px; color: red">
<form:form action="checkuser" method="post" modelAttribute="userobj">
Username<form:input type="text" path="username" name="user"/><br><br>
password<form:input type="password" path="password" name="pass"/><br><br>
<input type="submit" value="Login Here">
</form:form>
 </center>
</body>
</html>