<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="dbConnection.jsp" %>
<%@ page import="java.util.*" %>

<%
    // Retrieve the cart items from the session
    List<String> cart = (List<String>) session.getAttribute("cart");

    // Initialize total amount
    double totalAmount = 0.0;

    // Calculate total amount based on cart items and their prices fetched from the database
    if (cart != null && !cart.isEmpty()) {
        for (String item : cart) {
            try {
                // Fetch price for each item from the database
                PreparedStatement pstmt = conn.prepareStatement("SELECT price FROM products WHERE item_id = ?");
                pstmt.setString(1, item);
                ResultSet rs = pstmt.executeQuery();

                if (rs.next()) {
                    double itemPrice = rs.getDouble("price");
                    totalAmount += itemPrice;
                }

                rs.close();
                pstmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Cart</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }

        ul {
            list-style: none;
            padding: 0;
            margin-bottom: 20px;
        }

        li {
            border-bottom: 1px solid #ccc;
            padding: 10px 0;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        a {
            text-decoration: none;
            color: #6759ff;
        }

        .total-amount {
            text-align: right;
            margin-bottom: 20px;
        }

        .total-amount p {
            font-size: 18px;
            font-weight: bold;
            color: #333;
        }

        .button-pay {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }

        .pay-btn,
        .cash-btn {
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            color: #fff;
            text-decoration: none;
            transition: background-color 0.3s ease;
            cursor: pointer;
        }

        .pay-btn {
            background-color: #6759ff;
            margin-right: 10px;
        }

        .pay-btn:hover {
            background-color: #4d46e2;
        }

        .cash-btn {
            background-color: #6759ff;
        }

        .cash-btn:hover {
            background-color: #4d46e2;
        }

        .empty-cart {
            color: #888;
            margin-top: 20px;
            text-align: center;
        }

        .continue-shopping {
            display: block;
            text-align: center;
            margin-top: 20px;
            text-decoration: none;
            color: #333;
            font-weight: bold;
        }

        .continue-shopping:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>
<div class="container">
    <h1>Your Cart</h1>
    <% if (cart != null && !cart.isEmpty()) { %>
    <ul>
        <% for (String item : cart) { %>
        <li>
            Item Code: <%= item %>
            <a href="removecart.jsp?itemCode=<%= item %>">(Remove)</a>
        </li>
        <% } %>
    </ul>
    <div class="total-amount">
        <p>Total Amount: $<%= totalAmount %></p>
    </div>
    <div class="button-pay">
        <a href="CheckOut.jsp" class="pay-btn">Pay Now</a>
        <a href="CashonDelivery.jsp" class="cash-btn">Cash on Delivery</a>
    </div>
    <% } else { %>
    <p class="empty-cart">Your cart is empty.</p>
    <% } %>
    <a href="BrowseProducts.jsp" class="continue-shopping">Continue Shopping</a>
</div>
</body>

</html>
