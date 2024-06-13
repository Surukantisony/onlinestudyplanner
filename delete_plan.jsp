<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="p1.Dbutil" %>

<%

String subject = request.getParameter("subject");
String topicName = request.getParameter("topicName");
String date = request.getParameter("date");
String time = request.getParameter("time");
String description = request.getParameter("description");

try {
    Dbutil.connect();
    
    
    String sql = "DELETE FROM plans WHERE subject = ? AND topicName = ? AND date = ? AND time = ? AND description = ?";
    PreparedStatement pstmt = Dbutil.con.prepareStatement(sql);
    
    
    pstmt.setString(1, subject);
    pstmt.setString(2, topicName);
    pstmt.setString(3, date);
    pstmt.setString(4, time);
    pstmt.setString(5, description);
    
   
    int rowsAffected = pstmt.executeUpdate();
    
    pstmt.close();
    Dbutil.con.close();
    
    
    if (rowsAffected > 0) {
        response.sendRedirect("showplans.jsp");
    } else {
        out.println("<p>No matching plan found to delete.</p>");
    }
} catch (SQLException e) {
    out.println("Database Error: " + e.getMessage());
} catch (Exception e) {
    out.println("Error: " + e.getMessage());
}
%>
