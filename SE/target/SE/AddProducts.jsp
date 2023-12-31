<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="dbConnection.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Products - Admin</title>
    <link rel="stylesheet" href="./CSS/home.css">
    <link rel="stylesheet" href="./CSS/navigationbarblack.css">
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

        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
            border-radius: 10px;
            max-width: 400px;
        }

        .container h2 {
            color: #333;
        }

        .input-box {
            position: relative;
            margin-bottom: 20px;
            width: 100%;
            height: auto;
        }

        .input-box input {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 5px;
            margin-top: 10px;
        }

        .btn {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: #45a049;
        }

    </style>
</head>
<body>
<a href="Home.html"><img class="logo" src="./Images/LogoAB.png" alt="logo" width="50" height="50"></a>
<!-- Navigation bar -->
<ul id="navigation">
    <li class="parts"><a href="Admin-Home.jsp">Home</a></li>
    <li class="parts"><a href="Users.jsp">Users</a></li>
    <li class="parts"><a href="Admin-Products.jsp">Products</a></li>
	<li class="parts"><a href="Admin-Feedback.jsp">Feedbacks</a></li>
</ul>
<div class="container">
    <br><br><br><br><br>
    <center>
        <form action="AddItemSer" method="POST">
            <h2>Add a New Product</h2>
            <div class="input-box">
                <label>Item Name:</label>
                <input type="text" class="name" id="name" name="name" placeholder="" required>
            </div>
            <div class="input-box">
                <label>Image Link:</label>
                <input type="text" class="img" id="img" name="img" placeholder="" required>
            </div>
            <div class="input-box">
                <label>Description:</label>
                <input type="text" class="description" id="description" name="description" placeholder="" required>
            </div>
            <div class="input-box">
                            <label>Price:</label>
                            <input type="text" class="price" id="price" name="price" placeholder="" required>
                        </div>
            <button type="submit" class="btn">Add Item</button>
        </form>
    </center>
</div>
</body>
</html>
