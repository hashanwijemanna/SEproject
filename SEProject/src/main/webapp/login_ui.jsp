<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <link rel="icon" href="/favicon.ico" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta name="theme-color" content="#000000" />
  <title>Login UI</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lexend%3A400%2C800%2C900"/>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro%3A400%2C800%2C900"/>
  <link rel="stylesheet" href="./styles/login-ui.css"/>

  <style>
            a {
                text-decoration: none;
            }

        </style>
</head>

<div class="container">
<body>
<div class="login-ui-2nR">
<form action="<%= request.getContextPath() %>/database-signup.jsp" method="POST">
  <div class="auto-group-m8ww-a3F">
    <div class="auto-group-wqw9-u5X">Full Name</div>
    <div class="rectangle-58-9Vf">
    <center><input class="fullname" type="text" id="fullname" name="fullname" required style="width: 100%; padding: 10px; box-sizing: border-box; border: 0px solid #ccc; border-radius: 4px; background-color: transparent; outline: none;"></center>
    </div>
  </div>
  <div class="auto-group-uphm-TWM">
    <div class="auto-group-evhh-BSM">NIC</div>
    <div class="rectangle-59-cGm">
    <center><input class="nic" type="text" id="nic" name="nic" required style="width: 100%; padding: 10px; box-sizing: border-box; border: 0px solid #ccc; border-radius: 4px; background-color: transparent; outline: none;"></center>
    </div>
  </div>
  <div class="auto-group-qmhd-vHT">
    <div class="auto-group-r5j1-rB7">Phone Number</div>
    <div class="rectangle-60-KaV">
    <center><input class="phonenumber" type="text" id="phonenumber" name="phonenumber" required style="width: 100%; padding: 10px; box-sizing: border-box; border: 0px solid #ccc; border-radius: 4px; background-color: transparent; outline: none;"></center>
    </div>
  </div>
  <div class="auto-group-zudr-qHw">
    <div class="auto-group-rdb1-ALD">Email</div>
    <div class="rectangle-67-3Q1">
    <center><input class="email" type="email" id="email" name="email" required style="width: 100%; padding: 10px; box-sizing: border-box; border: 0px solid #ccc; border-radius: 4px; background-color: transparent; outline: none;"></center>
    </div>
  </div>
  <div class="auto-group-sr2b-k3X">
    <div class="auto-group-rz8p-gC5">Password</div>
    <div class="rectangle-61-LnR">
    <center><input class="password" type="password" id="password" name="password" required style="width: 100%; padding: 10px; box-sizing: border-box; border: 0px solid #ccc; border-radius: 4px; background-color: transparent; outline: none;"></center>
    </div>
  </div>
  <input class="auto-group-hjbm-4Cd" type="submit" value="SIGN-UP">
  <p class="sign-up-WqK">Sign Up</p>
  <p class="already-have-an-account-log-in-opR">
  <a href="login_ui_Xky.jsp">
    <span class="already-have-an-account-log-in-opR-sub-0">Already have an account?</span>
    <span class="already-have-an-account-log-in-opR-sub-1"> </span>
    <span class="already-have-an-account-log-in-opR-sub-2">Log in</span>
    </a>
  </p>
</div>
</form>
</body>
</div>
</html>