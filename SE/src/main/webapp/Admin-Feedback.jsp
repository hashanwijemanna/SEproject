<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="dbConnection.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedbacks-Admin</title>
    <link rel="icon" href="./Images/LogoAB.png" type="image/x-icon">
    <link rel="stylesheet" href="./CSS/home.css">
    		<link rel="stylesheet" href="./CSS/navigationbarblack.css">
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
            width: 60%;
            margin: 0 auto;

        }
        #search-container {
            margin: 1em 0;
            transform: translate(-35%,30%);
        }
        #search-container input {
            background-color: transparent;
            width: 110%;
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
            transform: translate(175%,-110%);
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
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0;
            padding: 0;
            color: #00000;
        }

        header {
            text-align: center;
            display: flex;
            flex-direction: column;
            align-items: flex-start;
        }

        .search-bar {
            width: 500px;
            font-size: 24px;
            border: 2px solid #ddd;
            border-radius: 5px;
            margin-bottom: 20px;
        }

        #searchField {
            width: 100%;
            border: none;
            outline: none;
            font-size: 18px;
            opacity: 0.8;
            border-radius: 5px;
            padding: 8px;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 12px;
        }

        th {
            background-color: #f2f2f2;
        }

        button:hover {
            background-color: #45a049;
        }

        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
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
            transform: translate(0%);
        }

        .delete-btn:hover {
            background-color: #ef94ba;
        }
    </style>
</head>
<body>
<a href="Home.html"><img class="logo" src="./Images/LogoAB.png" alt="logo"  width="50" height="50"></a>
		<!--Navigation bar-->
		<ul id="navigation">
        			<li class="parts"><a href="Admin-Home.jsp">Home</a></li>
        			<li class="parts"><a href="Users.jsp">Users</a></li>
        			<li class="parts"><a href="Admin-Products.jsp">Products</a></li>
			        <li class="parts"><a href="Admin-Feedback.jsp">Feedbacks</a></li>
        		</ul>
<div class="container">
<br><br><br><br><br>

    <header>
        <div class="wrapper">
            <div id="search-container">
                <input
                        type="search"
                        id="search-input"
                        placeholder="Search feedback here.."
                />
                <button id="search">Search</button>
            </div>
    </header>

    <table>
        <thead>
        <tr>
            <th>Feedback ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Message</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <%
            try {
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM feedbacks");

                while (rs.next()) {
                    String Code = rs.getString("feedback_id");
                    String Name = rs.getString("name");
                    String Email = rs.getString("email");
                    String Message = rs.getString("message");
        %>
        <tr>
            <td><%= Code %></td>
            <td><%= Name %></td>
            <td><%= Email %></td>
            <td><%= Message %></td>
            <td>
            <form action="DeleteFeedback.jsp" method="post">
                 <input type="hidden" name="Code" value="<%= rs.getString("feedback_id") %>">
                <input style="padding: 8px 16px; background-color: #f51010; color: white; border: none; border-radius: 3px; cursor: pointer; transition: background-color 0.3s;" type="submit" value="Delete">
            </form>
            </td>

        </tr>
        <%
                }
                rs.close();
                stmt.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }
        %>
        </tbody>
    </table>

</div>

<script>
    const table = document.querySelector('table tbody');
    const searchField = document.getElementById('search-input');

    searchField.addEventListener('keyup', function (event) {
        const searchTerm = event.target.value.toLowerCase();

        table.querySelectorAll('tr').forEach(function (row) {
            const rowText = row.textContent.toLowerCase();
            const shouldShow = rowText.includes(searchTerm);
            row.style.display = shouldShow ? 'table-row' : 'none';
        });
    });
</script>

</body>
</html>
