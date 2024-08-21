<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-color:gray;
height:100vh;}
.navbar{
 overflow:hidden;
 display:flex;
 justify-content:center;
 padding:10px;
 margin:0px;
 text-align:center;
 
 }
 .navbar a{
 display:block;
 text-align:center;
 padding:14px,20px;
 margin:0 10px;
 text-decoration:none;
 }
 .navbar a:hover{
 color:black;
 background-color:#ddd;}
 .navbar</style>
</head>
<body>
<h1> welcome to my employee management system</h1>
<div class="navbar"></div>
<a href="display.jsp">display</a>
<a href="insertorg.jsp">insert</a>
<a href="delete.jsp">delete</a>
<a href="info.jsp">EMPLOYEE INFO</a>
</div>

</body>
</html>