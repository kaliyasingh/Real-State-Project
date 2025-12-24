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
   <table>
       <td>product id </td>
       <td><input type="text"></td>
      
   </table>
  
</center>
</body>
</html>