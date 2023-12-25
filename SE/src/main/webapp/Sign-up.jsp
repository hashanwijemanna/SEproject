<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Animated Login Form</title>
  <link rel="stylesheet" href="./CSS/Sign-Up.css">
  <style>
    .error {
      color: red;
      font-size: 14px;
      margin-top: 5px;
    }
  </style>
</head>
<body>
<div class="box">
  <form id="signupForm" action="SignServlet" method="POST" onsubmit="return validatePassword()">
    <h2>Sign-Up</h2>
    <div class="inputBox">
      <input type="text" class="username" id="username" name="username" required>
      <span>Username</span>
      <i></i>
    </div>
    <div class="inputBox">
      <input type="email" class="email" id="email" name="email" required>
      <span>Email</span>
      <i></i>
    </div>
    <div class="inputBox">
      <input type="password" class="password" id="password" name="password" required>
      <span>Create Password</span>
      <i></i>
    </div>
    <div class="inputBox">
      <input type="password" class="cpass" id="cpass" name="cpass" required>
      <span>Confirm Password</span>
      <i></i>
      <p id="passwordError" class="error" style="color:red;"></p>
    </div>
    <input type="submit" value="Sign-Up">
    <div class="links">
      <a href="#">Forgot password</a>
      <a href="Login-ex.jsp">Sign-In</a>
    </div>
  </form>

</div>

<script>
function validatePassword() {
  var password = document.getElementById("password").value;
  var cpass = document.getElementById("cpass").value;
  var passwordError = document.getElementById("passwordError");

  if (password !== cpass) {
    passwordError.innerText = "Password doesn't match!";
    return false;
  } else {
    passwordError.innerText = "";
    return true;
  }
}
</script>

</body>
</html>
