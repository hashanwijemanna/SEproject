<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="dbConnection.jsp" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Item Details</title>
    <link rel="stylesheet" href="./CSS/navigationbar.css">
    <link rel="stylesheet" href="./CSS/Slider.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap');
        body {
            background-image: url('./Images/toa-heftiba-0lEn122_OGA-unsplash.jpg');
            background-size: cover;
            background-attachment: fixed;
            background-position: center;
            background-repeat: no-repeat;
            font-family: "Poppins", sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0;
            padding: 0;
            color: #00000;
        }

        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            transform: translateY(35%);
        }

        header {
            text-align: center;
            margin-bottom: 20px;
        }

        .item-details {
            max-width: 600px;
            width: 100%;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: left;
            margin-bottom: 20px;
        }

        .item-details img {
            max-width: 100%;
            border-radius: 10px;
            margin-bottom: 20px;
        }

        .pay-btn {
            border: 2px solid #6759ff;
            padding: 1em 2.2em;
            border-radius: 3em;
            background-color: transparent;
            color: #6759ff;
            cursor: pointer;
            position: relative;
            align-items: center;
            transform: translate(5%);
        }

        .pay-btn:hover {
            background-color: #aeaaf8;
        }
        .cash-btn {
            border: 2px solid #6759ff;
            padding: 1em 2.2em;
            border-radius: 3em;
            background-color: transparent;
            color: #6759ff;
            cursor: pointer;
            position: relative;
            align-items: center;
            transform: translate(50%);
        }

        .cash-btn:hover {
            background-color: #aeaaf8;
        }
    </style>
</head>

<body>
<a href="Home.html"><img class="logo" src="./Images/LogoAB.png" alt="logo" width="50" height="50"></a>
<!-- Navigation bar -->
<ul id="navigation">
    <li class="parts"><a href="Home.jsp">Home</a></li>
    <li class="parts"><a href="BrowseProducts.jsp">Browse Products</a></li>
    <li class="parts"><a href="feedbacks.jsp">Feedback</a></li>
    <li class="parts"><a href="#">About Us</a></li>
</ul>
<div class="container">
    <div class="item-details">
        <!-- Display item details here using Java code -->
        <%
            String selectedItemCode = request.getParameter("itemCode");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM products WHERE item_id = '" + selectedItemCode + "'");

            if (rs.next()) {
                String itemCode = rs.getString("item_id");
                String itemName = rs.getString("name");
                String itemImage = rs.getString("image");
                String itemDescription = rs.getString("description");
                String itemPrice = rs.getString("price");
        %>
        <header>
            <h2><%= itemName %></h2>
        </header>
        <img src="<%= itemImage %>" alt="<%= itemName %> Image">
        <p><strong>Item Code:</strong> <%= itemCode %></p>
        <p><strong>Description:</strong> <%= itemDescription %></p>
        <p><strong>Price:</strong> LKR <%= itemPrice %></p>
        <div class="button-pay">
            <button class="pay-btn">Pay Now</button>
            <button class="cash-btn">Cash on Delivery</button>
        </div>
        <%
            }
            rs.close();
            stmt.close();
        %>
    </div>

</div>

</body>

</html>