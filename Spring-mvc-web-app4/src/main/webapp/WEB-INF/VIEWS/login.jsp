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
<h1 style="color: green;">Login Page</h1><br><br><br>
<hr style="size: 8px ; color: red;"><br>
<h3>
  <%
  String msg= (String)request.getAttribute("msg");
  if(msg!=null)
  {
	  out.print(msg);
  }
  %>
</h3>
 
<form:form action="checkuser" method="post" modelAttribute="userobj">
Username<form:input type="text" path="username" name="user"/><br><br>
password<form:input type="password" path="password" name="pass"/><br><br>
<input type="submit" value="Login Here">
<a href="register">New User Registration</a>
</form:form>
 </center>
</body>
</html>