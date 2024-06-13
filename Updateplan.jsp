<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="p1.Dbutil" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Plan</title>
</head>
<body>
    <h1>Update Plan</h1>
    
    <%
    
    String subject = request.getParameter("subject");
    String newSubject = request.getParameter("newSubject");
    String newTopicName = request.getParameter("newTopicName");
    String newDate = request.getParameter("newDate");
    String newTime = request.getParameter("newTime");
    String newDescription = request.getParameter("newDescription");
    
    try {
        Dbutil.connect();
        
      
        String sql = "UPDATE plans SET subject = ?, topicName = ?, date = ?, time = ?, description = ? WHERE subject = ?";
        PreparedStatement pstmt = Dbutil.con.prepareStatement(sql);
        
       
        pstmt.setString(1, newSubject);
        pstmt.setString(2, newTopicName);
        pstmt.setString(3, newDate);
        pstmt.setString(4, newTime);
        pstmt.setString(5, newDescription);
        pstmt.setString(6, subject);
        
        
        int i = pstmt.executeUpdate();
        
        pstmt.close();
        Dbutil.con.close();
        
       
        if (i > 0) {
            response.sendRedirect("showplans.jsp");
        } else {
            out.println("<p>No matching plan found to update.</p>");
        }
    } catch (SQLException e) {
        out.println("Database Error: " + e.getMessage());
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
    %>
    
    <p><a href="showplans.jsp">Back to Plans</a></p>
</body>
</html>
