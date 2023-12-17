<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Form | Dan Aleko</title>
  <link rel="stylesheet" href="./CSS/Sign-Up.css">
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
  <div class="wrapper">
    <form action="SignServlet" method="POST">
      <h1>Sign-Up</h1>
      <div class="input-box">
        <input type="text" class="username" id="username" name="username" placeholder="Username" required>
        <i class='bx bxs-user'></i>
      </div>
      <div class="input-box">
        <input type="email" class="email" id="email" name="email" placeholder="Email" required>
        <i class='bx bxs-user'></i>
      </div>
      <div class="input-box">
        <input type="password" class="password" id="password" name="password" placeholder="Create New Password" required>
        <i class='bx bxs-lock-alt' ></i>
      <div class="input-box">
        <input type="password" placeholder="Confirm Password" required>
        <i class='bx bxs-lock-alt' ></i>
      </div>
      <button type="submit" class="btn">Sign-Up</button>
      <div class="register-link">
        <p>Already have an account?<a href="/Login.html">Login</a></p>
      </div>
    </form>
  </div>
</body>
</html>