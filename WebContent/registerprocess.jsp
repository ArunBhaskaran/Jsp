<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>

<!DOCTYPE html>
<html>
<body bgcolor="blue">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String uname=request.getParameter("uname");
String ulast=request.getParameter("ulast");
String uemail=request.getParameter("uemail");
String upass=request.getParameter("upass");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp","root","");
Statement st= con.createStatement();
//ResultSet rs=st.executeQuery("select * from users where userid='"+userid+"' and password='"+password+"'");
String i="insert into user(uname,ulast,uemail,upass) values('"+uname+"','"+ulast+"','"+uemail+"','"+upass+"')";
st.execute(i);
con.close();
out.println("Register Success");

%>


</body>
</html>