<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.sql.*"%>
    <%@page import="p1.Dbutil" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%! 
Connection con;
Statement st;
%>
<%
String username=request.getParameter("username");
String password=request.getParameter("password");
try{
	Dbutil.connect();
	int i=Dbutil.st.executeUpdate("insert into users values('"+username+"','"+password+"')");
	
	if(i>0)
	response.sendRedirect("Index.html");
	else
		response.sendRedirect("signin.jsp");
	Dbutil.st.close();
	
	Dbutil.con.close();
	
}
catch(Exception e)
{
	out.println("Error");
}
%>
</body>
</html>