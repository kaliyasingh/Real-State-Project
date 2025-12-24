<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
  <h1 style="color: green;">Service page </h1>
  <h2>Welcome
  <%
    String user = (String)request.getAttribute("username");
    out.println(user);
  %>
  </h2><br><br><br>
  <hr style="size:8px; color: red;"><br>
  
  <h1 style="color: green;"></h1>
  <a href="amdstudent">Add/Modify/Delete Student Details</a><br><br>
  <a href="allstudent">list of All Student</a>
  <a href="searchstudent">Search of Student Details</a>
  <a href="logout">click Here to logout</a>
</center>
</body>
</html>