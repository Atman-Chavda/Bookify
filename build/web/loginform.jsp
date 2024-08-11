<%-- 
    Document   : loginform
    Created on : 09-Mar-2024, 6:41:04 pm
    Author     : bhara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
       <!DOCTYPE html>
<html>
<head>
<title>Login Form</title>
<link rel="stylesheet" href="loginform.css"> 

</head>
<body>
  <div class="login-form">
    <h2>Login</h2>
    <form action="login" method="post"> <div class="form-group">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required>
      </div>
      <div class="form-group">
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
      </div>
        <input type="hidden" name="a_param" value="yes">
        <input type="text" name="b_param" value="Enter subscription amount">
      <button type="submit">Login</button>
    </form>
  </div>

</body>
</html>

    </body>
</html>
