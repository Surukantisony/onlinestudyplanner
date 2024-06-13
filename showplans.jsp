<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="p1.Dbutil" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Show Plans</title>
    <link rel="stylesheet" href="styleshow.css">
</head>
<body>
    <h1>Plans</h1>
  
    <div id="plans-container">
        <%
        try {
            Dbutil.connect();
            String sql = "SELECT * FROM plans";
            ResultSet rs = Dbutil.st.executeQuery(sql);
            
            // Display plans
            while (rs.next()) {
        %>
                <div class="plan">
                    <h2><%= rs.getString("subject") %></h2>
                    <p>Topic Name: <%= rs.getString("topicName") %></p>
                    <p>Date: <%= rs.getString("date") %></p>
                    <p>Time: <%= rs.getString("time") %></p>
                    <p>Description: <%= rs.getString("description") %></p>
                    <form action="edit_plan.jsp" method="get">
                        <input type="hidden" name="subject" value="<%= rs.getString("subject") %>">
                        <input type="hidden" name="topicName" value="<%= rs.getString("topicName") %>">
                        <input type="hidden" name="date" value="<%= rs.getString("date") %>">
                        <input type="hidden" name="time" value="<%= rs.getString("time") %>">
                        <input type="hidden" name="description" value="<%= rs.getString("description") %>">
                        <button type="submit" class="edit-button">Edit</button>
                    </form>
                    <form action="delete_plan.jsp" method="post">
                        <input type="hidden" name="subject" value="<%= rs.getString("subject") %>">
                        <input type="hidden" name="topicName" value="<%= rs.getString("topicName") %>">
                        <input type="hidden" name="date" value="<%= rs.getString("date") %>">
                        <input type="hidden" name="time" value="<%= rs.getString("time") %>">
                        <input type="hidden" name="description" value="<%= rs.getString("description") %>">
                        <button type="submit" class="delete-button">Delete</button>
                    </form>
                </div>
        <%
            }
            
            rs.close();
            Dbutil.con.close();
        }  catch (Exception e) {
            out.println("Error ");
        }
        %>
    </div>
  
    <p><a href="addplans.jsp">Add Another Plan</a></p>
    <p1><a href="welcome.jsp">Home</a></p1>
</body>
</html>
