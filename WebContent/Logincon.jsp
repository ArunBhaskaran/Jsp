<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<body bgcolor="pink">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String uname=request.getParameter("uname");
String upass=request.getParameter("upass");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp","root","");
Statement st= con.createStatement();
String i="select uname,upass from user"; 
ResultSet rs=st.executeQuery(i);
int flag=0;
try
{
while(rs.next())
{
String unam=rs.getString("uname");
String upas=rs.getString("upass");
if(unam.equals(uname) && upas.equals(upass))
{

	flag=1;
	break;
}
else
{
	flag=0;
}

}

if(flag==1)
	out.print("success");
else
	out.print("Invalid user or password");	
}

catch (Exception e) 
{
	e.printStackTrace();

}
%>
</body>
</html>