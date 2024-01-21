<%@ page import="java.sql.*" %>
<%@ include file="dbConnection.jsp" %>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Item Details</title>
    <link rel="icon" href="./Images/LogoAB.png" type="image/x-icon">
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
            height: 100vh;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100%;
        }

        .item-details {
            max-width: 600px;
            width: 90%;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
        }

        .item-details img {
            max-width: 100%;
            max-height: 300px;
            border-radius: 10px;
            margin-bottom: 20px;
            object-fit: cover;
        }

        .pay-btn {
            border: 2px solid #6759ff;
            padding: 1em 2.2em;
            border-radius: 3em;
            background-color: transparent;
            color: #6759ff;
            cursor: pointer;
            position: relative;
            margin-right: 30px; /* Adjust margin as needed */
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
        }

        .cash-btn:hover {
            background-color: #aeaaf8;
        }

        .cart-btn {
            border: none;
            padding: 12px 24px;
            border-radius: 6px;
            background-color: transparent;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: background-color 0.3s ease;
        }

        .cart-btn img {
            width: 36px;
            height: 36px;
            margin-right: 10px;
            object-fit: contain;
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
    <li class="parts"><a href="Aboutus.jsp">About Us</a></li>
</ul>
<div class="container">
    <div class="item-details">
        <!-- Display item details here using Java code -->
        <% String selectedItemCode = request.getParameter("itemCode");
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
        <img src="<%= itemImage %>" alt="<%= itemName %> Image" class="item-image">
        <div class="details">
            <p><strong>Item Code:</strong> <%= itemCode %></p>
            <p><strong>Description:</strong> <%= itemDescription %></p>
            <p><strong>Price:</strong> $ <%= itemPrice %></p>
            <p><form action="cart.jsp" method="post">
                <input type="hidden" name="itemCode" value="<%= itemCode %>">
                <button type="submit" class="cart-btn">
                    <img src="./Images/cart.png" alt="Add to Cart" class="cart-icon">
                </button>
        </form></p>
        </div>

        <div class="button-pay">
            <a href="CheckOut.jsp"><button class="pay-btn">Pay Now</button></a>
            <a href="CashonDelivery.jsp"><button class="cash-btn">Cash on Delivery</button></a>>
        </div>
        <% rs.close();
            stmt.close();
        } %>
    </div>
</div>
</body>

</html>
