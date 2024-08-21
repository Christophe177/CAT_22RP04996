<%@ page language="java"  contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*"%>
    <%@ page import="java.sql.Connection,java.sql.DriverManager,java.sql.PreparedStatement,java.sql.SQLException"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="gray"><center>
<%
String id=request.getParameter("id");
String firstname=request.getParameter("firstname");
String lastname=request.getParameter("lastname");
String age=request.getParameter("age");
if( id !=null && firstname !=null && lastname !=null && age !=null){
	String jdbcURL="jdbc:mysql://localhost:3306/emp_22rp04996";
	String dbUser="root";
	String dbPassword="";
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection connection= DriverManager.getConnection(jdbcURL, dbUser,dbPassword);
		String sql="INSERT INTO emp(id,firstname,lastname,age)VALUES(?,?,?,?)";
		PreparedStatement statement=connection.prepareStatement(sql);
		statement.setString(1 ,id);
		statement.setString(2 ,firstname);
		statement.setString(3 ,lastname);
		statement.setInt(4 ,Integer.parseInt(age));
		int rowsInserted=statement.executeUpdate();
		if(rowsInserted >0){
			out.println("record inserted");
		}
		connection.close();
	} 
	catch(Exception e){
		e.printStackTrace();
		out.println("<p>not inserted" + e.getMessage()+ "</p>");
		
	}
	}
%>
<h1> record inserts</h1>
<form action="insertorg.jsp"method="post">
id <br><input type="text"name="id"><br>
firstname <br><input type="text"name="firstname"><br>
lastname<br><input type="text"name="lastname"><br>
age<input type="number"name="age"><br>
<input type="submit"name="insert"></form>
<a href="nav.jsp"><input type="button"name="back"value="back"></a>

</center></body>
</html>