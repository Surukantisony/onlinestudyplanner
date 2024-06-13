<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="p1.Dbutil" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Plan</title>
    <link rel="stylesheet" href="editplanstyles.css">
</head>
<body>
    <h1>Edit Plan</h1>
    
    <%
    // Retrieve the plan details from the request parameters
    String subject = request.getParameter("subject");
    String topicName = request.getParameter("topic_name");
    String date = request.getParameter("date");
    String time = request.getParameter("time");
    String description = request.getParameter("description");
    
    try {
        Dbutil.connect();
    %>
        <form action="Updateplan.jsp" method="post">
            <input type="hidden" name="subject" value="<%= subject %>">
            <input type="hidden" name="topicName" value="<%= topicName %>">
            <input type="hidden" name="date" value="<%= date %>">
            <input type="hidden" name="time" value="<%= time %>">
            <input type="hidden" name="description" value="<%= description %>">
            
            <label for="newSubject">New Subject:</label>
            <input type="text" id="newSubject" name="newSubject" value="<%= subject %>"><br><br>
            
            <label for="newTopicName">New Topic Name:</label>
            <input type="text" id="newTopicName" name="newTopicName" value="<%= topicName %>"><br><br>
            
            <label for="newDate">New Date:</label>
            <input type="date" id="newDate" name="newDate" value="<%= date %>"><br><br>
            
            <label for="newTime">New Time:</label>
            <input type="time" id="newTime" name="newTime" value="<%= time %>"><br><br>
            
            <label for="newDescription">New Description:</label><br>
            <textarea id="newDescription" name="newDescription" rows="4" cols="50"><%= description %></textarea><br><br>
            
            <input type="submit" value="Update Plan">
        </form>
    <%
        Dbutil.con.close();
    } catch (SQLException e) {
        out.println("Database Error: " + e.getMessage());
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
    %>
    
    <p><a href="showplans.jsp">Back to Plans</a></p>
</body>
</html>
