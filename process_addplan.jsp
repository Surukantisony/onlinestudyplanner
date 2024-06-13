<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<%@ page import="p1.Dbutil" %>
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
String subject = request.getParameter("subject");
String topicName = request.getParameter("topicName");
String date = request.getParameter("date");
String time = request.getParameter("time");
String description = request.getParameter("description");
try{
	Dbutil.connect();
	int i=Dbutil.st.executeUpdate("insert into plans values('"+subject+"','"+topicName+"','"+date+"','"+time+"','"+description+"')");
	if(i>0)
		response.sendRedirect("welcome.jsp");
		else
			response.sendRedirect("addplans.jsp");
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