!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Animated Login Form</title>
  <link rel="stylesheet" href="./CSS/Sign-Up.css">
  <style>
    .error {
      color: white;
      font-size: 20px;
      margin-top: 5px;
    }
  </style>
</head>
<body>
<div class="box">
  <form id="SignServlet" method="post" onsubmit="return validateForm()">
    <h2>Sign-Up</h2>
    <div class="inputBox">
      <input type="text" required>
      <span>Username</span>
      <i></i>
    </div>
    <div class="inputBox">
      <input type="text" required>
      <span>NIC</span>
      <i></i>
    </div>
    <div class="inputBox">
      <input type="email" required>
      <span>Email</span>
      <i></i>
    </div>
    <div class="inputBox">
      <input type="password" id="password" required>
      <span>Create Password</span>
      <i></i>
    </div>
    <div class="inputBox">
      <input type="password" id="confirmPassword" required>
      <span>Confirm Password</span>
      <i></i>
      <div class="error" id="passwordError"></div>
    </div>
    <input type="submit" value="Sign-Up">
    <div class="links">
      <a href="#">Forgot password</a>
      <a href="Login-ex.jsp">Sign-In</a>
    </div>
  </form>

  <script>
    function validateForm() {
      var password = document.getElementById('password').value;
      var confirmPassword = document.getElementById('confirmPassword').value;
      var passwordError = document.getElementById('passwordError');

      if (password !== confirmPassword) {
        passwordError.textContent = 'Passwords do not match!';
        return ; // Prevent form submission
      } else {
        passwordError.textContent = '';
        return true; // Allow form submission
      }
    }
  </script>
</div>
</body>
</html>
