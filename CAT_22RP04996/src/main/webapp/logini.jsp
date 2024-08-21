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
String username=request.getParameter("username");
String password=request.getParameter("password");


	String jdbcURL="jdbc:mysql://localhost:3306/emp_22rp04996";
	String dbUser="root";
	String dbPassword="";
	Connection connection=null;
	PreparedStatement statement=null;
	ResultSet resultSet=null;
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection connection= DriverManager.getConnection(jdbcURL, dbUser,dbPassword);
		String sql="select * from login where username= ? and password= ? ";
		PreparedStatement statement=connection.prepareStatement(sql);
		statement.setString(1 ,username);
		statement.setString(2 ,password);
		resultSet=statement.excuteQuery();
		
		
		if(resultSet.next()){
			response.sendRedirect("nav.jsp");
			out.println("record inserted");
		}
		connection.close();
	} 
	catch(Exception e){
		e.printStackTrace();
		out.println("<p>not inserted" + e.getMessage()+ "</p>");
		
	}finally
	{
		try{
			if(resultSet !=null)resultSet.close();
			if(statement !=null)statement.close();
			if(connection !=null)connection.close();
		}catch(SQLException e){
			e.printStackTrace();
			
		}
	}
%>
</center></body></html>