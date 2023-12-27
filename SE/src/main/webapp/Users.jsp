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
    <link rel="icon" href="./Images/LogoAB.png" type="image/x-icon">
    <link rel="icon" href="./Images/LogoAB.png" type="image/x-icon">

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap');
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
            border: none;
            outline: none;
            font-family: "Poppins", sans-serif;
        }
        body {
            background-color:#f5f8ff;
        }
        .wrapper {
            width: 95%;
            margin: 0 auto;

        }
        #search-container {
            margin: 1em 0;
            transform: translate(27%,250%);
        }
        #search-container input {
            background-color: transparent;
            width: 40%;
            border-bottom: 2px solid #110f29;
            padding: 1em 0.3em;
        }
        #search-container input:focus {
            border-bottom-color: #6759ff;
        }
        #search-container button {
            padding: 1em 2em;
            margin-left: 1em;
            background-color: #6759ff;
            color: #ffffff;
            border-radius: 5px;
            margin-top: 0.5em;
        }
        .search-btn-value {
            border: 2px solid #6759ff;
            padding: 1em 2.2em;
            border-radius: 3em;
            background-color: transparent;
            color: #6759ff;
            cursor: pointer;
        }
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
            background-color: #f5f5f5;
            border-radius: 15px;
            overflow: hidden;
            transform: translate(50px,100px);
        }

        table {
            border-collapse: collapse;
            width: 50%;
            margin: 0 auto;
            background-color: #7a72f6;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            font-size: 25px;
            border-radius: 30px;
            transform: translate(0%,50%);
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #7a72f6;
            background-color: #80ecd7;
            color: #333;
        }

        th {
            background-color: #ffffff;
            color: #7a72f6;
        }

        tr:nth-child(even) {
            background-color: #f0f0f0;
        }

        tr:nth-child(odd) {
            background-color: #e0e0e0;
        }

        tr:hover {
            background-color: #ccc;
        }
        .delete-btn {
            border: 2px solid #e31952;
            padding: 1em 2.2em;
            border-radius: 3em;
            background-color: transparent;
            color: #ec3f87;
            cursor: pointer;
            position: relative;
            float: right;
            transform: translate(-20%);
        }

        .delete-btn:hover {
            background-color: #ef94ba;
        }

    </style>
</head>
<body>
<!--Logo-->
<a href="Home.html"><img class="logo" src="./Images/LogoAB.png" alt="logo" width="50" height="50"></a>
<!--Navigation bar-->
<ul id="navigation">
    <li class="parts"><a href="Admin-Home.jsp">Home</a></li>
    <li class="parts"><a href="Users.jsp">Users</a></li>
    <li class="parts"><a href="Admin-Products.jsp">Products</a></li>
    <li class="parts"><a href="Admin-Feedback.jsp">Feedbacks</a></li>
	<li class="parts"><a href="Admin-email.jsp">Emails</a></li>
</ul>
<div class="wrapper">
    <div id="search-container">
        <input
                type="search"
                id="search-input"
                placeholder="Search user name here.."
        />
        <button id="search">Search</button>
    </div>
    <table border="0">
        <thead>
        <tr>
            <th>User ID</th>
            <th>Username</th>
            <th>Email</th>
            <th>Password</th>
            <th>Action</th>
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
</html>