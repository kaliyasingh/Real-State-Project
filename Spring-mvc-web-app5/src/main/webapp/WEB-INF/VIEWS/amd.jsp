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
<h1 style="color: blue;">Add Modify Delete Student Detail Page</h1>
<br><br><br>
<hr style="size:8px;color: red; ">
<br>
 <%
 String msg = (String)request.getAttribute("msg");
 if(msg!=null)
 {
	 out.println(msg);
 }
 %>
 <br>
 <form:form action="savestudent" method="post" modelAttribute="studentobj">
 RollNo :<form:input type="text" path="rollno" name="roll"/>
 Name :  <form:input type="text" path="name" name="name"  />
 Marks : <form:input type="text" path="marks" name="marks"/>
 <input type="submit" value="Add" name="b1">
 <input type="submit" value="Update" name="b1">
 <input type="submit" value="Delete" name ="b1">
 
 <a href="register">New User Registration</a>
 </form:form>
 <br><br><br>
 <hr>
 <address>
  Universal Informatics<br>
  Bhawarkua, Indore<br>
  Madhya Pradesh
</address>
 </center>
</body>
</html>