<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
  <link rel="stylesheet" href="./styles/login-ui-Xky.css"/>
  <style>
          .container {
              width: 100%;
              height: 100%;
              max-width: 1200px;
              margin: 0 auto;
              padding: 20px;
              box-sizing: border-box;
          }

          a {
            text-decoration: none;
          }
      </style>
</head>
<div class="container">
<body>

<div class="login-ui-7dP">
  <p class="log-in-d5w">Log-In</p>

  <form action="LoginServlet" method="POST">
  <div class="auto-group-q8z7-8YV">
    <div class="auto-group-64sm-rUV">Email</div>
    <div class="rectangle-58-tg5">
    <center><input class="username" type="email" id="email" name="email" required style="width: 100%; padding: 10px; box-sizing: border-box; border: 0px solid #ccc; border-radius: 4px; background-color: transparent; outline: none;"></center>
    </div>
  </div>
  <div class="auto-group-nrcx-1Vo">
    <div class="auto-group-zzzd-LHB">Password</div>
    <div class="rectangle-61-yb3">
    <center><input class="password" type="password" id="password" name="password" required style="width: 100%; padding: 10px; box-sizing: border-box; border: 0px solid #ccc; border-radius: 4px; background-color: transparent; outline: none;"></center>
    </div>
  </div>
  <input class="auto-group-ckhu-sgR" type="submit" value="Log-In">
  </form>

  <div class="auto-group-f52b-Xky">
    <img class="vector-qmf" src="./assets/vector-xEq.png"/>
    <p class="sign-up-with-facebook-Aow">Sign up with Facebook</p>
  </div>
  <div class="auto-group-2cmh-fVo">
    <img class="vector-BU9" src="./assets/vector-bqw.png"/>
    <p class="sign-up-with-google-hxH">Sign up with Google</p>
  </div>

  <a href="login_ui.jsp">
  <p class="no-account-yet-create-one-c3f">
    <span class="no-account-yet-create-one-c3f-sub-0">No account yet?</span>
    <span class="no-account-yet-create-one-c3f-sub-1"> </span>
    <span class="no-account-yet-create-one-c3f-sub-2">Create One</span>
  </p>
  </a>

</div>
</div>
</body>