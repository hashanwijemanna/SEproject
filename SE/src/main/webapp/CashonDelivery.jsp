<<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cash on Delivery</title>
    <link rel="stylesheet" href="cash-on-delivery.css">
    <style>
        /* cash-on-delivery.css */

        /* Basic reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            color: #333;
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #555;
        }

        p {
            text-align: center;
            margin-bottom: 30px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        .input-box {
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
        }

        input[type="text"],
        textarea {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        textarea {
            height: 80px;
        }

        .btn-confirm {
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn-confirm:hover {
            background-color: #45a049;
        }

    </style>
</head>
<body>
<div class="container">
    <h1>Cash on Delivery</h1>
    <p>Please provide your details below to complete the order.</p>
    <form action="process-cod.jsp" method="post">
        <div class="input-box">
            <label for="fullName">Full Name:</label>
            <input type="text" id="fullName" name="fullName" required>
        </div>
        <div class="input-box">
            <label for="address">Address:</label>
            <textarea id="address" name="address" required></textarea>
        </div>
        <div class="input-box">
            <label for="phone">Phone Number:</label>
            <input type="text" id="phone" name="phone" required>
        </div>
        <button type="submit" class="btn-confirm">Confirm Order</button>
    </form>
</div>
</body>
</html>

