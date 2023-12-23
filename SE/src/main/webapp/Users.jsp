<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.lang.ClassNotFoundException" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!--Font-->
		<link href='https://fonts.googleapis.com/css?family=Dangrek' rel='stylesheet'>
		<!--CSS-->
		<link rel="stylesheet" href="./CSS/home.css">
		<link rel="stylesheet" href="./CSS/navigationbarblack.css">
		<link rel="stylesheet" href="./CSS/Slider.css">
		<title>UsersPage-Admin</title>

		<style>
		body {
		background-image: url('./Images/toa-heftiba-0lEn122_OGA-unsplash.jpg');
		background-size: cover;
              background-attachment: fixed;
              background-position: center;
              background-repeat: no-repeat;
              font-family: Arial, sans-serif;
              color: #fff;
              display: flex;
              align-items: center;
              justify-content: center;
              margin: 0;
                    padding: 0;
		}

		.table-container {
                            margin-top: 20px;
                            background-color: #00000;
                        }

                        table {
                            border-collapse: collapse;
                            width: 80%;
                            margin: 0 auto;
                            background-color: #00000;
                            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                            font-size: 25px;
                            border-radius: 30px;
                        }

                        th, td {
                            padding: 15px;
                            text-align: left;
                            border-bottom: 1px solid #ddd;
                            background-color:#00000;
                        }

                        th {
                            background-color: #000000;
                        }

                        tr {
                            background-color: #000000;
                            opacity: 0.8;
                        }

                        tr:hover {
                            opacity: 0.6;
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
        		<!--Logo-->
        		<a href="Home.html"><img class="logo" src="./Images/LogoAB.png" alt="logo"  width="50" height="50"></a>
        		<!--Navigation bar-->
        		<ul id="navigation">
        			<li class="parts"><a href="Admin-Home.jsp">Home</a></li>
        			<li class="parts"><a href="Users.jsp">Users</a></li>
			        <li class="parts"><a href="Admin-Products.jsp">Products</a></li>
			        <li class="parts"><a href="Admin-Feedback.jsp">Feedbacks</a></li>
        		</ul>



            <div class="table-container">
            <br><br><br><br><br><br>
                    <div class="search-bar">
                            <input type="text" id="searchField" placeholder="Search by User ID, Name, Email, etc." />
                            </div><br>
                        <table border="0" style="">
                            <thead>
                                <tr>
                                    <th>User ID</th>
                                    <th>Username</th>
                                    <th>Email</th>
                                    <th>Password</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    try {
                                        Class.forName("com.mysql.cj.jdbc.Driver");
                                        Connection conn = DriverManager.getConnection("jdbc:mysql://sql12.freemysqlhosting.net:3306/sql12672409", "sql12672409", "hqZveYqKfy");

                                        String sql = "SELECT * FROM users";
                                        PreparedStatement stmt = conn.prepareStatement(sql);
                                        ResultSet rs = stmt.executeQuery();

                                        while (rs.next()) {
                                %>
                                            <tr>
                                                <td><%= rs.getString("user_id") %></td>
                                                <td><%= rs.getString("username") %></td>
                                                <td><%= rs.getString("email") %></td>
                                                <td><%= rs.getString("password") %></td>
                                                <td>
                                                   <form action="DeleteUser.jsp" method="post">
                                                   <input type="hidden" name="userId" value="<%= rs.getString("user_id") %>">
                                                   <input style="padding: 8px 16px; background-color: #f51010; color: white; border: none; border-radius: 3px; cursor: pointer; transition: background-color 0.3s;" type="submit" value="Delete">
                                                   </form>
                                                </td>
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
</html>