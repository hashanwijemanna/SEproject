<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.*" %>



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

        body {
                    font-family: 'Source Sans Pro', sans-serif;
                    background-color: #f0f0f0;
                    margin: 0;
                    padding: 0;
                }

                center {
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    height: 100vh;
                }

                .table-container {
                    margin-top: 20px;
                }

                table {
                    border-collapse: collapse;
                    width: 80%;
                    margin: 0 auto;
                    background-color: #fff;
                    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                    font-size: 25px;
                    opacity: 0.8;
                    border-radius: 30px;
                }

                th, td {
                    padding: 15px;
                    text-align: left;
                    border-bottom: 1px solid #ddd;
                }

                th {
                    background-color: #f2f2f2;
                }

                tr:hover {
                    background-color: #f5f5f5;
                }

                form {
                    display: inline;
                }

                .search-bar {
                  width: 500px;
                  font-size: 50px;
                  border: 0px solid #ddd;
                  border-radius: 5px;
                }

                #searchField {
                  justify-content: center;
                  width: 500px;
                  border: none;
                  outline: none;
                  font-size: 25px;
                }
    </style>

</head>
<body>
<div class="admin-profile-user-activity-D89">


<center>
<!-- Display Database Table -->
        <div class="table-container">
        <div class="search-bar">
                  <input type="text" id="searchField" placeholder="Search by User ID, Name, Email, etc." />
                </div><br>
            <table border="0">
                <thead>
                    <tr>
                        <th>User ID</th>
                        <th>Full Name</th>
                        <th>NIC</th>
                        <th>Email</th>
                        <th>Phone Number</th>
                        <th>Password</th>
                        <th>Action</th>
                        <!-- Add more columns as needed -->
                    </tr>
                </thead>
                <tbody>
                    <%
                        try {
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            Connection conn = DriverManager.getConnection("jdbc:mysql://sql12.freesqldatabase.com:3306/sql12668368", "sql12668368", "6QTvbJSfdb");

                            String sql = "SELECT * FROM users";
                            PreparedStatement stmt = conn.prepareStatement(sql);
                            ResultSet rs = stmt.executeQuery();

                            while (rs.next()) {
                    %>
                                <tr>
                                    <td><%= rs.getString("user_id") %></td>
                                    <td><%= rs.getString("full_name") %></td>
                                    <td><%= rs.getString("nic") %></td>
                                    <td><%= rs.getString("email") %></td>
                                    <td><%= rs.getString("phone_number") %></td>
                                    <td><%= rs.getString("password") %></td>
                                    <td>
                                       <form action="deleteUser.jsp" method="post">
                                       <input type="hidden" name="userId" value="<%= rs.getString("user_id") %>">
                                       <input type="submit" value="Delete">
                                       </form>
                                    </td>
                                    <!-- Add more cells as needed -->
                                </tr>
                    <%
                            }

                            rs.close();
                            stmt.close();
                            conn.close();
                        } catch (SQLException | ClassNotFoundException e) {
                            e.printStackTrace();
                        }
                    %>
                </tbody>
            </table>
        </div>
        </center>





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



<script>
      const table = document.querySelector('table tbody');
      const searchField = document.getElementById('searchField');

      searchField.addEventListener('keyup', function(event) {
        const searchTerm = event.target.value.toLowerCase();

        table.querySelectorAll('tr').forEach(function(row) {
          const rowText = row.textContent.toLowerCase();
          const shouldShow = rowText.includes(searchTerm);
          row.style.display = shouldShow ? 'table-row' : 'none';
        });
      });
    </script>

</body>