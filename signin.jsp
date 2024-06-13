<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
  <title>Sign Up Page</title>
  <link rel="stylesheet" href="stylesignin.css">
</head>
<body>
  <div class="container">
    <div class="signup-container">
      <h1>Sign Up</h1>
            <form action="signinProcess.jsp" method="post">
        <input type="text" id="username" placeholder="UserName" name="username" required><br>
        
     <div class="input-box">
        <input type="password" id="password" placeholder="Password" name="password" required>
  
</div>
        <button type="submit">Sign Up</button>
      </form>
      <div class="login-link">
        Already have an account? <a href="login.jsp">Log in</a>
      </div>
    </div>
  </div>


</body>
</html>