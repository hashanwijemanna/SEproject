<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="dbConnection.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Item List</title>
    <link rel="stylesheet" href="./CSS/navigationbarblack.css">
    		<link rel="stylesheet" href="./CSS/Slider.css">
    <style>
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
            opacity: 0.9;
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 12px;
        }

        th {
            background-color: #f2f2f2;
        }

        button {
            padding: 8px 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #45a049;
        }

        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        a {
        text-decoration: none;
        color: #fff;
        }
    </style>
</head>
<body>

<div class="container">
<a href="Home.html"><img class="logo" src="./Images/LogoAB.png" alt="logo"  width="50" height="50"></a>
		<!--Navigation bar-->
		<ul id="navigation">
			<li class="parts"><a href="Home.jsp">Home</a></li>
			<li class="parts"><a href="BrowseProducts.jsp">Browse Products</a></li>
			<li class="parts"><a href="feedbacks.jsp">Feedback</a></li>
			<li class="parts"><a href="#">About Us</a></li>
		</ul>
<br><br><br><br><br><br>
    <header>
        <div class="search-bar">
            <input type="text" id="searchField" placeholder="Search by Item Code, Name, etc." />
        </div>
    </header>

    <table>
        <thead>
        <tr>
            <th>Item Code</th>
            <th>Image</th>
            <th>Item Name</th>
            <th>Description</th>
            <th> Price </th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <%
            try {
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM products");

                while (rs.next()) {
                    String itemCode = rs.getString("item_id");
                    String itemName = rs.getString("name");
                    String itemImage = rs.getString("image");
                    String itemDescription = rs.getString("description");
                    String itemPrice = rs.getString("price");
        %>
        <tr>
            <td><%= itemCode %></td>
            <td><img src="<%= itemImage %>" alt="<%= itemName %> Image" style="max-width: 100px; max-height: 100px;"></td>
            <td><%= itemName %></td>
            <td><%= itemDescription %></td>
            <td><p style="color: blue;">LKR <%= itemPrice %></p></td>
            <td><button>
             <a href="Order.jsp?itemCode=<%= itemCode %>">
            Order
            </a>
            </button></td>
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
    const searchField = document.getElementById('searchField');

    searchField.addEventListener('keyup', function (event) {
        const searchTerm = event.target.value.toLowerCase();

        table.querySelectorAll('tr').forEach(function (row) {
            const rowText = row.textContent.toLowerCase();
            const shouldShow = rowText.includes(searchTerm);
            row.style.display = shouldShow ? 'table-row' : 'none';
        });
    });
</script>
<script src="scripts.js"></script>

</body>
</html>
