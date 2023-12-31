<%@ page import="java.sql.*" %>
<%@ include file="dbConnection.jsp" %>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    List<String> cart = (List<String>) session.getAttribute("cart");
    if (cart == null) {
        cart = new ArrayList<>();
        session.setAttribute("cart", cart);
    }

    String itemCode = request.getParameter("itemCode");
    String itemName = "";
    double itemPrice = 0.0;

    if (itemCode != null && !itemCode.isEmpty()) {
        cart.add(itemCode); // Add the item to the cart

        // Retrieve item details including price from the database
        try {
            PreparedStatement pstmt = conn.prepareStatement("SELECT name, price FROM products WHERE item_id = ?");
            pstmt.setString(1, itemCode);
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                itemName = rs.getString("name");
                itemPrice = rs.getDouble("price");
            }

            rs.close();
            pstmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Item Added to Cart</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
        }

        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            width: 90%;
            margin: 20px;
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
        }

        p {
            margin-top: 10px;
            color: #666;
        }

        .item-details {
            font-weight: bold;
            margin-top: 20px;
        }

        .item-details span {
            color: #6759ff;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #6759ff;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #4d46e2;
        }
    </style>
</head>

<body>
<div class="container">
    <h1>Item Added to Cart</h1>
    <p>Item <span><%= itemName %></span> with code <span><%= itemCode %></span> has been added to your cart.</p>
    <p class="item-details">Price: $<span><%= itemPrice %></span></p>
    <a href="viewcart.jsp">View Cart</a>
</div>
</body>

</html>
