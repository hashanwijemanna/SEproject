<%@ page import="java.util.List" %>
<%@ page import="com.java.UserDao" %>
<%@ page import="com.java.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <link rel="icon" href="/favicon.ico" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta name="theme-color" content="#000000" />
  <title>Admin Profile-User Activity</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lexend%3A400%2C600"/>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter%3A600"/>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro%3A400%2C600"/>
  <link rel="stylesheet" href="./styles/admin-profile-user-activity.css"/>

  <style>
    a {
      text-decoration: none;
    }

    .footer {

          background-color: #000000;
          color: #fff;
          padding: 20px;
          position: relative;
          margin-top: 25px;
          opacity: 0.8;
        }

        .footer::before {
          content: "";
          position: absolute;
          top: -20px;
          left: 0;
          width: 100%;
          height: 20px;
          background: linear-gradient(to bottom, #333, transparent);
          border-radius: 0 0 50% 50%;
          z-index: 1;
        }

        .footer p {
          margin: 0;
          font-size: 25px;
        }

        .footer .social {
            width: 30px;
            height: 30px;
        }




    </style>

</head>
<body>
<div class="admin-profile-user-activity-D89">

<div id="searchDiv">
        <input type="text" id="searchKeyword" placeholder="Search by name" onkeyup="searchTable()">
    </div>

    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Full Name</th>
                <th>NIC</th>
                <th>Email</th>
                <th>Phone Number</th>
                <th>Password</th>

            </tr>
        </thead>
        <tbody>
            <%
                UserDao userDao = new UserDao();
                List<User> userList = userDao.getAllUsers();

                for (User user : userList) {
            %>
                <tr>
                    <td><%= user.getId() %></td>
                    <td><%= user.getFName() %></td>
                    <td><%= user.getNIC() %></td>
                    <td><%= user.getEmail() %></td>
                    <td><%= user.getPhone() %></td>
                    <td><%= user.getPass() %></td>
                </tr>
            <%
                }
            %>
        </tbody>
    </table>

  <div class="auto-group-w2hr-4eR">
    <img class="vector-uf3" src="./assets/vector-2oP.png"/>
  </div>
  <div class="auto-group-wh31-nTw">
    <img class="rectangle-6-t1B" src="./assets/rectangle-6-WqK.png"/>
    <a href="home-admin.jsp"><div class="auto-group-1ves-C1s">Home</div></a>
    <a href="product-management-2-admin.jsp"><div class="auto-group-xsa7-2Wh">Products Management </div></a>
    <a href="order-management-admin.jsp"><div class="auto-group-gzbd-HSd">Oder Management</div></a>
    <a href="admin-profile-user-activity.jsp"><div class="frame-13-wn5">User Activity</div></a>
    <a href="feedback-management-2-admin.jsp"><div class="auto-group-j9ux-zEZ">Feedback Management</div></a>
    <div class="ellipse-1-doK">
    </div>
  </div>

  <a href="frame-bug-KkH.jsp">
  <div class="hamburger-button-yMP">
    <div class="rectangle-87-sSm">
    </div>
    <div class="rectangle-88-p77">
    </div>
    <div class="rectangle-89-mY9">
    </div>
  </div>
  </a>
</div>

  <div class="footer">
  <br>
  <img class="logoab-removebg-preview-2-LYu" src="./assets/logoab-removebg-preview-2-sjK.png"/>
      <center>
      <table style="font-size: 20px">
          <thead>
            <tr>
              <th></th>
              <th> &nbsp&nbsp</th>
              <th><b><u>Quick Links</u></b></th>
              <th> &nbsp&nbsp</th>
              <th><b><u>Categories</u></b></th>
              <th> &nbsp&nbsp</th>
              <th><b><u>Customer Service</u></b></th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><b>608 Paul Wayne Haggerty Road,<br>
                  New Orleans,<br>
                  Louisiana.<br><br><br>
                  +1 504-523-0063<br>
                  (Daily operating hours 8.00a.m. to 8.00p.m.)</b>
              </td>
              <td> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
              <td>
                  <br>Home<br><br>
                  Browse Products<br><br>
                  My Cart<br><br>
                  My Activity<br><br>
                  Feedbacks
              </td>
              <td> &nbsp&nbsp</td>
              <td>
                  <br>Home & Living<br><br>
                  Fashion<br><br>
                  Groceries<br><br>
                  Electronics<br><br>
                  Beauty
              </td>
              <td> &nbsp&nbsp</td>
              <td>
                  Customer Service<br><br>
                  About Us<br><br>
              </td>
            </tr>
          </tbody>
        </table>
        <br><br><br><br>
        <img class="social" src="./assets/vector-boT.png"/>&nbsp&nbsp&nbsp&nbsp
            <img class="social" src="./assets/vector-k5j.png"/>&nbsp&nbsp&nbsp&nbsp
            <img class="social" src="./assets/vector-No7.png"/>&nbsp&nbsp&nbsp&nbsp
            <img class="social" src="./assets/vector-UkD.png"/>&nbsp&nbsp&nbsp&nbsp
            <img class="social" src="./assets/vector-qrM.png"/>
      <br><br><br><br>
      <p><b>&copy; 2023 Green Cart Official</b></p><br><br>

      </center>


</div>



</body>