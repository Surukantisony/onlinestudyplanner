<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Plans</title>
    <link rel="stylesheet" href="styleaddplan.css">
</head>
<body>
    <h1>Add Plans</h1>
  
    <form action="process_addplan.jsp" method="post">
       
        <label for="subject">Subject:</label>
        <input type="text" id="subject" name="subject" required><br><br>
        
        <!-- Topic Name -->
        <label for="topicName">Topic Name:</label>
        <input type="text" id="topicName" name="topicName" required><br><br>
        
        <!-- Date -->
        <label for="date">Date:</label>
        <input type="date" id="date" name="date" required><br><br>
        
        <!-- Time -->
        <label for="time">Time:</label>
        <input type="time" id="time" name="time" required><br><br>
        
        
        <label>Plan Description</label>
        <textarea  name="description" rows="4" cols="50" required></textarea>
        
        <input type="submit" value="Add Plan">
    </form>
  
    
    <p><a href="welcome.jsp">Back to Welcome Page</a></p>
</body>
</html>