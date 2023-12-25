<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Form</title>
    <link rel="icon" href="./Images/LogoAB.png" type="image/x-icon">
  <link rel="stylesheet" href="./CSS/Login-ex.css">
</head>
<body>
    <div class="box">
        <form action="LoginServlet" method="POST">
            <h2>Log-In</h2>
            <div class="inputBox" style="background-color: transparent;">
                <input type="email" class="email" id="email" name="email" required>
                <span>Email</span>
                <i></i>
            </div>
            <div class="inputBox">
                <input type="password" class="password" id="password" name="password" required>
                <span>Enter Password</span>
                <i></i>
            </div>
            <input type="submit" value="Login">
            <div class="links">
                <a href="Sign-up.jsp">Forgot password</a>
                <a href="Sign-up.jsp">Sign-Up</a>
            </div>
        </form>
</body>
</html>