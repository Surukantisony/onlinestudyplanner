<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.sql.*"%>
    <%@page import="p1.Dbutil" %>
<!DOCTYPE html>
<html>
<head>
  <title>Login Page</title>
    <link rel="stylesheet" href="loginstyle.css">
  
</head>
<body>
 
  <div class="container">
    <div class="login-container">
      <h1>Login</h1>
      <form action="loginProcess.jsp" method="post">
        <input type="text" id="username" placeholder="Username" name="username" required>
<div class="input-box">
        <input type="password" id="password" placeholder="Password" name="password" required>
        
</div>
        <button type="submit" >Login</button>
      </form>
      <div class="signup-link">
        Don't have an account? <a href="signup.html">Sign up</a>
      </div>
    </div>
  </div>

</body>
</html>